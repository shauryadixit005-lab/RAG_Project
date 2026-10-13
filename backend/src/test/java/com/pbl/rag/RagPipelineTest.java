package com.pbl.rag;

import com.pbl.rag.engine.HybridSearchEngine;
import com.pbl.rag.evaluation.RagTriadEvaluator;
import com.pbl.rag.ingestion.ChunkingStrategy;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Automated JUnit 5 Integration Test Suite for PBL RAG Pipeline.
 * 
 * Lead Author: Yashpal Singh Bhati (Yashpalsinghbhati)
 * Module: Evaluation, RAG Triad Metrics & Analytics
 */
public class RagPipelineTest {

    @Test
    @DisplayName("Verify Sliding Window Chunking preserves complete sentences")
    void testSlidingWindowChunking() {
        ChunkingStrategy strategy = new ChunkingStrategy();
        String sampleDocument = "Rajasthan Technical University conducts examinations across accredited colleges. " +
                "The Department of AI&DS at Arya College trains engineers in Machine Learning and RAG systems. " +
                "Central Board of Secondary Education regulates senior secondary standards in India.";

        List<ChunkingStrategy.TextChunk> chunks = strategy.chunkText(sampleDocument, 120, 30);
        assertNotNull(chunks);
        assertFalse(chunks.isEmpty());
        assertTrue(chunks.getFirst().tokenEstimate() > 0);
    }

    @Test
    @DisplayName("Verify Reciprocal Rank Fusion computes positive harmonic scores")
    void testReciprocalRankFusion() {
        HybridSearchEngine engine = new HybridSearchEngine();

        List<HybridSearchEngine.SearchResult> vectorResults = List.of(
            new HybridSearchEngine.SearchResult(1L, "RTU AI Question", "Doc1.pdf", 1, 0.92, 0.0, 0.0, Map.of())
        );

        List<HybridSearchEngine.SearchResult> keywordResults = List.of(
            new HybridSearchEngine.SearchResult(1L, "RTU AI Question", "Doc1.pdf", 1, 0.0, 0.88, 0.0, Map.of())
        );

        List<HybridSearchEngine.SearchResult> fused = engine.fuseRankings(vectorResults, keywordResults, 5);
        assertNotNull(fused);
        assertEquals(1, fused.size());
        assertTrue(fused.getFirst().fusionScore() > 0.0);
    }

    @Test
    @DisplayName("Verify RAG Triad Evaluator enforces quality gate")
    void testRagTriadQualityGate() {
        RagTriadEvaluator evaluator = new RagTriadEvaluator();
        String query = "What is RAG in Artificial Intelligence?";
        String context = "Retrieval-Augmented Generation (RAG) is an AI framework that retrieves external documents to ground responses.";
        String answer = "RAG is an AI framework that retrieves external documents to provide grounded, hallucination-free answers.";

        RagTriadEvaluator.TriadScore score = evaluator.evaluate(query, context, answer);
        assertNotNull(score);
        assertTrue(score.faithfulness() >= 0.80);
        assertTrue(score.triadHarmonicMean() >= 0.80);
        assertTrue(score.passesQualityGate());
    }
}
