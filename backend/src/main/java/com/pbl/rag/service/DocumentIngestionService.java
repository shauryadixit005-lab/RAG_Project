package com.pbl.rag.service;

import com.pbl.rag.model.Document;
import com.pbl.rag.model.DocumentChunk;
import com.pbl.rag.repository.DocumentChunkRepository;
import com.pbl.rag.repository.DocumentRepository;
import org.apache.tika.Tika;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;

/**
 * Module 2: Multi-Format Document Ingestion, Parsing & Chunking Pipeline
 * Owner: Awantika Jaiswal
 */
@Service
public class DocumentIngestionService {

    private final DocumentRepository documentRepository;
    private final DocumentChunkRepository chunkRepository;
    private final Tika tika = new Tika();

    public DocumentIngestionService(DocumentRepository documentRepository, DocumentChunkRepository chunkRepository) {
        this.documentRepository = documentRepository;
        this.chunkRepository = chunkRepository;
    }

    @Async
    public CompletableFuture<Document> ingestDocumentAsync(MultipartFile file) {
        Document doc = new Document(file.getOriginalFilename(), file.getContentType(), file.getSize());
        doc.setStatus(Document.DocumentStatus.PARSING);
        doc = documentRepository.save(doc);

        try {
            // Step 1: Parse multi-format document using Apache Tika
            InputStream inputStream = file.getInputStream();
            String extractedText = tika.parseToString(inputStream);

            doc.setStatus(Document.DocumentStatus.CHUNKED);

            // Step 2: Recursive sliding-window chunking (500 tokens ~ 2000 chars, 50 token overlap)
            List<String> textChunks = recursiveSplitText(extractedText, 1500, 150);
            doc.setTotalChunks(textChunks.size());
            doc.setTotalPages(Math.max(1, textChunks.size() / 3));

            List<DocumentChunk> chunks = new ArrayList<>();
            for (int i = 0; i < textChunks.size(); i++) {
                DocumentChunk chunk = new DocumentChunk(
                        doc,
                        i,
                        (i / 3) + 1,
                        textChunks.get(i),
                        textChunks.get(i).split("\\s+").length
                );
                // Assign embedding placeholder in vector(1536) format
                chunk.setEmbedding(generateUnitVector(1536));
                chunks.add(chunk);
            }

            chunkRepository.saveAll(chunks);
            doc.setStatus(Document.DocumentStatus.INDEXED);
            documentRepository.save(doc);

            return CompletableFuture.completedFuture(doc);
        } catch (Exception e) {
            doc.setStatus(Document.DocumentStatus.FAILED);
            documentRepository.save(doc);
            return CompletableFuture.failedFuture(e);
        }
    }

    private List<String> recursiveSplitText(String text, int chunkSizeChars, int overlapChars) {
        List<String> chunks = new ArrayList<>();
        if (text == null || text.isBlank()) return chunks;

        int start = 0;
        int length = text.length();

        while (start < length) {
            int end = Math.min(start + chunkSizeChars, length);
            chunks.add(text.substring(start, end));
            if (end == length) break;
            start += (chunkSizeChars - overlapChars);
        }
        return chunks;
    }

    private String generateUnitVector(int dim) {
        return "[" + "0.01,".repeat(dim - 1) + "0.01]";
    }
}
