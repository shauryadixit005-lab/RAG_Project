package com.pbl.rag.controller;

import com.pbl.rag.model.ChatRequest;
import com.pbl.rag.model.ChatResponse;
import com.pbl.rag.service.RagOrchestrationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/rag")
@CrossOrigin(origins = "*")
public class RagChatController {

    private final RagOrchestrationService ragService;

    public RagChatController(RagOrchestrationService ragService) {
        this.ragService = ragService;
    }

    @PostMapping("/chat")
    public ResponseEntity<ChatResponse> chat(@RequestBody ChatRequest request) {
        if (request.getQuery() == null || request.getQuery().isBlank()) {
            return ResponseEntity.badRequest().build();
        }
        ChatResponse response = ragService.processQuery(request);
        return ResponseEntity.ok(response);
    }
}
