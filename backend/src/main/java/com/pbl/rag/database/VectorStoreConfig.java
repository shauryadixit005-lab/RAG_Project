package com.pbl.rag.database;

import org.springframework.context.annotation.Configuration;

/**
 * pgvector Vector Store Configuration.
 * Configures 384-dimensional dense vector embeddings with HNSW cosine distance metric (<=>).
 * 
 * Lead Author: Vaibhav Tank (vaibhav2860)
 * Module: Vector Database & Security Architecture
 */
@Configuration
public class VectorStoreConfig {

    public static final int EMBEDDING_DIMENSION = 384; // all-MiniLM-L6-v2 vector dimensionality
    public static final String DISTANCE_METRIC = "COSINE"; // <=> operator
    public static final int HNSW_M = 16;                   // Max bi-directional links per node
    public static final int HNSW_EF_CONSTRUCTION = 64;     // Size of dynamic candidate list during build
    public static final int HNSW_EF_SEARCH = 40;           // Size of dynamic candidate list during search

    public record VectorMetadata(
        int dimension,
        String metric,
        int m,
        int efConstruction,
        int efSearch
    ) {}

    public VectorMetadata getIndexProfile() {
        return new VectorMetadata(
            EMBEDDING_DIMENSION,
            DISTANCE_METRIC,
            HNSW_M,
            HNSW_EF_CONSTRUCTION,
            HNSW_EF_SEARCH
        );
    }
}
