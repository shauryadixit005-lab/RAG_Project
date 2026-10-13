package com.pbl.rag.engine;

import org.springframework.stereotype.Service;
import java.util.List;

/**
 * Prompt Template Engine with Strict Anti-Hallucination Guardrails & Marking Rubrics.
 * Designed for Teacher Mode live evaluation.
 * 
 * Lead Author: Shaurya Dixit (shauryadixit005-lab)
 * Module: Core RAG Engine & Teacher Evaluation
 */
@Service
public class PromptTemplateEngine {

    private static final String SYSTEM_TEACHER_PROMPT = """
        You are an AI Academic Assistant for Arya College of Engineering & I.T. (Department of AI&DS).
        Evaluate and answer the question strictly using the provided context passages below.
        
        RULES:
        1. If the provided context does NOT contain sufficient facts to answer, explicitly state:
           "I do not possess verifiable evidence in the indexed syllabus corpus to answer this claim."
        2. Do NOT extrapolate or speculate beyond the provided citations.
        3. For every assertion, include an inline citation badge: [Source: <doc_name>, Page: <p_num>].
        4. When answering RTU Engineering questions, provide technical depth, equations, and diagrams.
        5. When answering CBSE questions, structure the answer per NCERT marking step allocations.
        """;

    public String buildPrompt(String query, String board, List<HybridSearchEngine.SearchResult> contexts) {
        StringBuilder sb = new StringBuilder();
        sb.append(SYSTEM_TEACHER_PROMPT).append("\n\n");
        sb.append("TARGET CURRICULUM BOARD: ").append(board != null ? board : "GENERAL").append("\n\n");
        sb.append("--- RETRIEVED CONTEXT PASSAGES ---\n");

        for (int i = 0; i < contexts.size(); i++) {
            HybridSearchEngine.SearchResult ctx = contexts.get(i);
            sb.append(String.format("[%d] Source: %s (Page: %d, Confidence: %.4f)\n", 
                    i + 1, ctx.documentTitle(), ctx.pageNumber(), ctx.fusionScore()));
            sb.append(ctx.content()).append("\n\n");
        }

        sb.append("--- STUDENT QUESTION ---\n");
        sb.append(query).append("\n\n");
        sb.append("--- TEACHER EVALUATED ANSWER ---\n");

        return sb.toString();
    }
}
