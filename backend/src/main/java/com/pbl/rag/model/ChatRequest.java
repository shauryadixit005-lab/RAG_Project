package com.pbl.rag.model;

import java.util.List;
import java.util.UUID;

public class ChatRequest {
    private String query;
    private UUID documentId; // optional: filter by specific document
    private Integer topK = 4;
    private Double temperature = 0.2;

    public ChatRequest() {}

    public ChatRequest(String query) {
        this.query = query;
    }

    public String getQuery() { return query; }
    public void setQuery(String query) { this.query = query; }
    public UUID getDocumentId() { return documentId; }
    public void setDocumentId(UUID documentId) { this.documentId = documentId; }
    public Integer getTopK() { return topK; }
    public void setTopK(Integer topK) { this.topK = topK; }
    public Double getTemperature() { return temperature; }
    public void setTemperature(Double temperature) { this.temperature = temperature; }
}
