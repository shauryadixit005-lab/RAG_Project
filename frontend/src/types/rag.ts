/**
 * TypeScript Data Models for CBSE & RTU Multi-Board RAG Pipeline
 * 
 * Lead Author: Rajveer Singh Ranawat (rajveersinghranawat351-source)
 * Module: Modern UI & Electron Desktop Architecture
 */

export type AcademicBoard = 'CBSE' | 'RTU' | 'GENERAL';

export interface CitationReference {
  docId: string;
  docTitle: string;
  pageNumber: number;
  confidenceScore: number;
  snippet: string;
}

export interface TeacherEvaluationMetrics {
  faithfulnessScore: number;       // [0.0 - 1.0]
  contextRelevanceScore: number;   // [0.0 - 1.0]
  answerRelevanceScore: number;    // [0.0 - 1.0]
  ragTriadHarmonicMean: number;    // [0.0 - 1.0]
  rubricMarkAwarded: number;
  maxRubricMarks: number;
  latencyMs: number;
}

export interface RagChatMessage {
  id: string;
  sender: 'user' | 'assistant' | 'system';
  content: string;
  timestamp: string;
  board?: AcademicBoard;
  citations?: CitationReference[];
  evaluation?: TeacherEvaluationMetrics;
}
