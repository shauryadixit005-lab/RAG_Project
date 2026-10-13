package com.pbl.rag.ingestion;

import org.springframework.stereotype.Service;
import java.text.Normalizer;
import java.util.regex.Pattern;

/**
 * Optical Character Recognition and Text Cleansing Preprocessor.
 * Normalizes Unicode math symbols and fixes OCR ligatures in scanned CBSE / RTU papers.
 * 
 * Lead Author: Yashvardhan Singh Chauhan (chauhyash1118)
 * Module: Document Ingestion & Kaggle Dataset Processing
 */
@Service
public class OcrPreprocessorService {

    private static final Pattern MULTI_WHITESPACE = Pattern.compile("\\s+");
    private static final Pattern PAGE_NUMBER_FOOTER = Pattern.compile("(?m)^\\s*(?:Page|Pg\\.?)\\s*\\d+\\s*(?:of\\s*\\d+)?\\s*$");

    public String cleanExtractedText(String rawText) {
        if (rawText == null || rawText.isBlank()) {
            return "";
        }

        // NFKC Unicode normalization preserves math formulas while standardizing ligatures
        String normalized = Normalizer.normalize(rawText, Normalizer.Form.NFKC);

        // Strip noisy header/footer artifacts
        normalized = PAGE_NUMBER_FOOTER.matcher(normalized).replaceAll("");

        // Normalize irregular whitespaces
        normalized = MULTI_WHITESPACE.matcher(normalized).replaceAll(" ");

        return normalized.trim();
    }
}
