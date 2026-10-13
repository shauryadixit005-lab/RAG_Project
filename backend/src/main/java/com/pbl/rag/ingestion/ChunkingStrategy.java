package com.pbl.rag.ingestion;

import org.springframework.stereotype.Service;
import java.util.*;
import java.util.regex.Pattern;

/**
 * Dynamic Sliding-Window Chunking Strategy with Sentence Boundary Preservation.
 * Splits documents into coherent academic passages (500 tokens / ~2000 chars) with 50-token overlap.
 * 
 * Lead Author: Yashvardhan Singh Chauhan (chauhyash1118)
 * Module: Document Ingestion & Kaggle Dataset Processing
 */
@Service
public class ChunkingStrategy {

    private static final int DEFAULT_CHUNK_SIZE = 1200; // Characters (~300-400 words)
    private static final int DEFAULT_OVERLAP = 200;      // Characters overlap
    private static final Pattern SENTENCE_SPLITTER = Pattern.compile("(?<=[.!?])\\s+");

    public record TextChunk(
        int chunkIndex,
        String text,
        int tokenEstimate,
        int startChar,
        int endChar
    ) {}

    /**
     * Splits text into overlapping sliding-window chunks without breaking mid-sentence.
     */
    public List<TextChunk> chunkText(String fullText, int chunkSize, int overlap) {
        if (fullText == null || fullText.isBlank()) {
            return Collections.emptyList();
        }

        String[] sentences = SENTENCE_SPLITTER.split(fullText.trim());
        List<TextChunk> chunks = new ArrayList<>();

        StringBuilder currentChunk = new StringBuilder();
        int chunkIndex = 0;
        int currentStart = 0;

        for (String sentence : sentences) {
            if (currentChunk.length() + sentence.length() > chunkSize && currentChunk.length() > 0) {
                String chunkStr = currentChunk.toString().trim();
                chunks.add(new TextChunk(
                        chunkIndex++,
                        chunkStr,
                        estimateTokens(chunkStr),
                        currentStart,
                        currentStart + chunkStr.length()
                ));

                // Retain overlap tail
                String overlapTail = chunkStr.length() > overlap ? chunkStr.substring(chunkStr.length() - overlap) : chunkStr;
                currentStart += chunkStr.length() - overlapTail.length();
                currentChunk = new StringBuilder(overlapTail).append(" ");
            }
            currentChunk.append(sentence).append(" ");
        }

        if (!currentChunk.toString().isBlank()) {
            String finalStr = currentChunk.toString().trim();
            chunks.add(new TextChunk(
                    chunkIndex,
                    finalStr,
                    estimateTokens(finalStr),
                    currentStart,
                    currentStart + finalStr.length()
            ));
        }

        return chunks;
    }

    public List<TextChunk> chunkText(String fullText) {
        return chunkText(fullText, DEFAULT_CHUNK_SIZE, DEFAULT_OVERLAP);
    }

    private int estimateTokens(String text) {
        return (int) Math.ceil(text.length() / 4.0);
    }
}
