package com.pbl.rag;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * DocuQuery AI - Enterprise Retrieval-Augmented Generation (RAG) System
 * Java PBL (Project Based Learning) - Arya College of Engineering & IT
 * Mentor: Er. Ram Babu Buri
 */
@SpringBootApplication
@EnableAsync
public class RagApplication {

    public static void main(String[] args) {
        SpringApplication.run(RagApplication.class, args);
        System.out.println("==================================================================");
        System.out.println(" DocuQuery AI: Enterprise RAG Service Started Successfully!       ");
        System.out.println(" Neon PostgreSQL pgvector + Spring Boot 3 + Electron Ready!       ");
        System.out.println("==================================================================");
    }
}
