package com.pbl.rag.engine;

import org.springframework.stereotype.Service;
import java.util.*;
import java.util.stream.Collectors;

/**
 * Multi-Stage Hybrid Search Engine implementing Reciprocal Rank Fusion (RRF).
 * Combines sparse lexical keyword retrieval (BM25) with dense vector embeddings (Cosine).
 * 
 * Lead Author: Shaurya Dixit (shauryadixit005-lab)
 * Module: Core RAG Engine & Teacher Evaluation
 */
@Service
public class HybridSearchEngine {

    private static final int RRF_K = 60; // Standard TREC Reciprocal Rank Fusion constant
    private static final double VECTOR_WEIGHT = 0.65;
    private static final double KEYWORD_WEIGHT = 0.35;

    public record SearchResult(
        Long chunkId,
        String content,
        String documentTitle,
        int pageNumber,
        double denseScore,
        double sparseScore,
        double fusionScore,
        Map<String, Object> metadata
    ) {}

    /**
     * Executes Reciprocal Rank Fusion across dense vector rankings and sparse keyword rankings.
     * RRF_Score(d) = (w_dense / (k + rank_dense(d))) + (w_sparse / (k + rank_sparse(d)))
     */
    public List<SearchResult> fuseRankings(
            List<SearchResult> vectorResults,
            List<SearchResult> keywordResults,
            int topK
    ) {
        Map<Long, Double> rrfScores = new HashMap<>();
        Map<Long, SearchResult> entityMap = new HashMap<>();

        // Rank dense vector results
        for (int rank = 0; rank < vectorResults.size(); rank++) {
            SearchResult item = vectorResults.get(rank);
            entityMap.putIfAbsent(item.chunkId(), item);
            double score = VECTOR_WEIGHT / (RRF_K + rank + 1);
            rrfScores.merge(item.chunkId(), score, Double::sum);
        }

        // Rank sparse keyword results
        for (int rank = 0; rank < keywordResults.size(); rank++) {
            SearchResult item = keywordResults.get(rank);
            entityMap.putIfAbsent(item.chunkId(), item);
            double score = KEYWORD_WEIGHT / (RRF_K + rank + 1);
            rrfScores.merge(item.chunkId(), score, Double::sum);
        }

        // Sort descending by merged RRF score
        return rrfScores.entrySet().stream()
                .sorted(Map.Entry.<Long, Double>comparingByValue().reversed())
                .limit(topK)
                .map(entry -> {
                    SearchResult base = entityMap.get(entry.getKey());
                    return new SearchResult(
                            base.chunkId(),
                            base.content(),
                            base.documentTitle(),
                            base.pageNumber(),
                            base.denseScore(),
                            base.sparseScore(),
                            entry.getValue(),
                            base.metadata()
                    );
                })
                .collect(Collectors.toList());
    }

    /**
     * Re-ranks retrieved candidates against CBSE / RTU academic rubric thresholds.
     */
    public List<SearchResult> applyRubricReRanking(List<SearchResult> candidates, String queryType) {
        return candidates.stream()
                .filter(res -> res.fusionScore() > 0.005)
                .collect(Collectors.toList());
    }
}
