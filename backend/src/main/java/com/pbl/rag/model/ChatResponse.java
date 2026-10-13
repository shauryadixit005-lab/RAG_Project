package com.pbl.rag.model;

import java.util.List;
import java.util.UUID;

public class ChatResponse {
    private String answer;
    private List<Citation> citations;
    private Long latencyMs;

    public static class Citation {
        private UUID chunkId;
        private UUID documentId;
        private String documentName;
        private Integer pageNumber;
        private Double similarityScore;
        private String snippet;

        public Citation() {}
        public Citation(UUID chunkId, UUID documentId, String documentName, Integer pageNumber, Double similarityScore, String snippet) {
            this.chunkId = chunkId;
            this.documentId = documentId;
            this.documentName = documentName;
            this.pageNumber = pageNumber;
            this.similarityScore = similarityScore;
            this.snippet = snippet;
        }

        public UUID getChunkId() { return chunkId; }
        public UUID getDocumentId() { return documentId; }
        public String getDocumentName() { return documentName; }
        public Integer getPageNumber() { return pageNumber; }
        public Double getSimilarityScore() { return similarityScore; }
        public String getSnippet() { return snippet; }
    }

    public ChatResponse() {}
    public ChatResponse(String answer, List<Citation> citations, Long latencyMs) {
        this.answer = answer;
        this.citations = citations;
        this.latencyMs = latencyMs;
    }

    public String getAnswer() { return answer; }
    public void setAnswer(String answer) { this.answer = answer; }
    public List<Citation> getCitations() { return citations; }
    public void setCitations(List<Citation> citations) { this.citations = citations; }
    public Long getLatencyMs() { return latencyMs; }
    public void setLatencyMs(Long latencyMs) { this.latencyMs = latencyMs; }
}
