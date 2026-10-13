package com.pbl.rag.repository;

import com.pbl.rag.model.DocumentChunk;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface DocumentChunkRepository extends JpaRepository<DocumentChunk, UUID> {

    List<DocumentChunk> findByDocumentIdOrderByChunkIndexAsc(UUID documentId);

    /**
     * Native query for pgvector cosine distance similarity lookup.
     * Neon PostgreSQL executes this using the HNSW index on embedding vector_cosine_ops.
     */
    @Query(value = """
        SELECT dc.*, 1 - (dc.embedding <=> cast(:queryVector as vector)) as similarity
        FROM document_chunks dc
        WHERE dc.embedding IS NOT NULL
        ORDER BY dc.embedding <=> cast(:queryVector as vector) ASC
        LIMIT :topK
        """, nativeQuery = true)
    List<DocumentChunk> findTopKSimilarChunks(
        @Param("queryVector") String queryVector,
        @Param("topK") int topK
    );
}
