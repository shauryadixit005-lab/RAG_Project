package com.pbl.rag.engine;

import org.springframework.stereotype.Service;
import java.util.*;

/**
 * Domain Query Expansion and Semantic Decomposition Service.
 * Tailored for CBSE Class 10/12 and RTU B.Tech examination curricula.
 * 
 * Lead Author: Shaurya Dixit (shauryadixit005-lab)
 * Module: Core RAG Engine & Teacher Evaluation
 */
@Service
public class QueryExpansionService {

    private static final Map<String, List<String>> ACRONYM_TAXONOMY = Map.of(
        "RAG", List.of("Retrieval-Augmented Generation", "Dense retrieval", "Vector synthesis"),
        "HNSW", List.of("Hierarchical Navigable Small World", "Vector indexing", "Cosine approximate search"),
        "RTU", List.of("Rajasthan Technical University", "Kota curriculum", "B.Tech examination scheme"),
        "CBSE", List.of("Central Board of Secondary Education", "All India Senior School Certificate Examination"),
        "BM25", List.of("Best Matching 25", "Probabilistic lexical ranking", "Term frequency inverse document frequency"),
        "LLM", List.of("Large Language Model", "Transformer architecture", "Generative AI")
    );

    /**
     * Expands student or faculty queries with relevant curriculum synonyms and decomposed sub-queries.
     */
    public List<String> expandQuery(String originalQuery, String targetBoard) {
        Set<String> expandedQueries = new LinkedHashSet<>();
        expandedQueries.add(originalQuery);

        String upper = originalQuery.toUpperCase();
        for (Map.Entry<String, List<String>> entry : ACRONYM_TAXONOMY.entrySet()) {
            if (upper.contains(entry.getKey())) {
                for (String synonym : entry.getValue()) {
                    expandedQueries.add(originalQuery + " " + synonym);
                }
            }
        }

        if ("RTU".equalsIgnoreCase(targetBoard)) {
            expandedQueries.add(originalQuery + " RTU engineering syllabus technical explanation");
        } else if ("CBSE".equalsIgnoreCase(targetBoard)) {
            expandedQueries.add(originalQuery + " CBSE NCERT step-by-step marking scheme");
        }

        return new ArrayList<>(expandedQueries);
    }
}
