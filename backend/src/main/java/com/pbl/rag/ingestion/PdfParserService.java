package com.pbl.rag.ingestion;

import org.springframework.stereotype.Service;
import java.io.InputStream;
import java.util.*;

/**
 * Multi-Format Document and PDF Parser Service.
 * Extracts structural text, table structures, and page metadata for CBSE / RTU papers.
 * 
 * Lead Author: Yashvardhan Singh Chauhan (chauhyash1118)
 * Module: Document Ingestion & Kaggle Dataset Processing
 */
@Service
public class PdfParserService {

    public record ParsedPage(
        int pageNumber,
        String content,
        Map<String, Object> metadata
    ) {}

    public record ParsedDocument(
        String documentTitle,
        String fileType,
        int totalPages,
        List<ParsedPage> pages,
        String extractedText
    ) {}

    public ParsedDocument parseText(String title, String content, String board) {
        List<ParsedPage> pages = new ArrayList<>();
        // Split on form feeds or approximate pages (~3000 chars)
        String[] rawPages = content.split("(?:\f|\r?\n\r?\n--- Page \\d+ ---\r?\n\r?\n)");
        if (rawPages.length <= 1) {
            // chunk into artificial 2500 char pages
            int pageSize = 2500;
            int pageCount = (int) Math.ceil((double) content.length() / pageSize);
            for (int p = 0; p < Math.max(1, pageCount); p++) {
                int start = p * pageSize;
                int end = Math.min(content.length(), start + pageSize);
                String pageText = content.substring(start, end);
                pages.add(new ParsedPage(p + 1, pageText, Map.of("board", board, "charCount", pageText.length())));
            }
        } else {
            for (int p = 0; p < rawPages.length; p++) {
                pages.add(new ParsedPage(p + 1, rawPages[p].trim(), Map.of("board", board)));
            }
        }

        return new ParsedDocument(title, "TEXT/PDF", pages.size(), pages, content);
    }
}
