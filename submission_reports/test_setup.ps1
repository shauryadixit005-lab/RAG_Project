# Script to generate Excel and CSV reports for Java PBL 5th Sem
$outputPathExcel = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\Java_PBL_RAG_Work_Logs.xlsx"
$outputPathDailyCsv = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\Daily_Work_Logs.csv"
$outputPathWeeklyCsv = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\Weekly_Project_Reports.csv"

# 5 Team Members and their Modules
$members = @(
    @{ Name = "Aryan Kumar Singh"; Role = "Team Leader & Core RAG Architect"; Module = "Module 1: Core RAG Engine & LLM Orchestration Service"; Branch = "feature/member1-rag-engine" },
    @{ Name = "Awantika Jaiswal"; Role = "Data Engineer"; Module = "Module 2: Document Ingestion, Parsing & Chunking Pipeline"; Branch = "feature/member2-doc-ingestion" },
    @{ Name = "Devansh Maini"; Role = "Database & Security Specialist"; Module = "Module 3: Neon PostgreSQL Vector Store (pgvector) & Spring Security"; Branch = "feature/member3-database-security" },
    @{ Name = "Aviral Joshi"; Role = "Frontend & Desktop Developer"; Module = "Module 4: React + TypeScript UI & Electron Desktop Integration"; Branch = "feature/member4-ui-electron" },
    @{ Name = "Akshita Mawaliya"; Role = "QA & Evaluation Specialist"; Module = "Module 5: RAG Triad Evaluation, Performance Analytics & Admin Dashboard"; Branch = "feature/member5-analytics-evaluation" }
)

Write-Host "Configuring weekly timeline and daily schedule from 2026-07-06 to 2026-10-10..."
