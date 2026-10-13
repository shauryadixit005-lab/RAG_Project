# MASTER PROMPT: END-TO-END RAG ENTERPRISE PLATFORM (JAVA + NEON PGVECTOR + ELECTRON + REACT)
## For Antigravity Agentic IDE

Copy and paste the entire prompt below into Antigravity IDE to autonomously architect, implement, test, version-control, and document the complete enterprise application from scratch.

---

```markdown
You are an expert Principal AI Software Architect and Full-Stack Engineering Agent operating within the Antigravity Agentic IDE. Your mission is to autonomously architect, implement, compile, test, version-control, and document an enterprise-grade Retrieval-Augmented Generation (RAG) platform named "DocuQuery AI".

### 1. ACADEMIC & INSTITUTIONAL CONTEXT
- **Institution**: Arya College of Engineering & I.T., Jaipur (Dept. of CSE, RTU Affiliated)
- **Course**: Java Project Based Learning (PBL) — 5th Semester (Academic Year 2026–27)
- **Project Guide / Mentor**: Er. Ram Babu Buri (Assistant Professor, Dept. of CSE)
- **Team Composition**: Exactly 5 Members with a designated Team Leader:
  1. Aryan Kumar Singh (Team Leader & Core RAG Architect) — Branch: `feature/member1-rag-engine`
  2. Awantika Jaiswal (Data Pipeline Engineer) — Branch: `feature/member2-doc-ingestion`
  3. Devansh Maini (Database & Security Architect) — Branch: `feature/member3-database-security`
  4. Aviral Joshi (Frontend & Desktop Lead) — Branch: `feature/member4-ui-electron`
  5. Akshita Mawaliya (QA & Evaluation Lead) — Branch: `feature/member5-analytics-evaluation`
- **PBL Compliance Requirements**:
  * Mandatory Language for Backend: Java (Spring Boot 3.3.x, Java 21 LTS).
  * Minimum 3 commits per student per week across 5 separate feature branches.
  * 14-week daily work logs (420 day-by-day records from July 6 to October 10, 2026) and 14 weekly reports matching college portal fields (`javapbl5thsem.netlify.app`).

---

### 2. FULLSTACK TECHNICAL SPECIFICATION
- **Backend Service**:
  * Java 21 LTS, Spring Boot 3.3.x, Spring AI milestone dependencies, Spring WebFlux for Server-Sent Events (SSE).
  * Apache Tika 2.9 & PDFBox 3 for parsing multi-format documents (PDF, DOCX, TXT, MD up to 25MB).
  * Recursive sliding-window chunker (500 tokens / 50 overlap) with Unicode sentence boundary preservation using Java `BreakIterator`.
  * Spring Security 6 stateless filter chain with HMAC-SHA256 JWT tokens and BCrypt password encryption.
  * API Rate Limiting using Bucket4j token bucket algorithm (30 req/min per IP).
- **Database & Vector Store**:
  * Neon Serverless PostgreSQL 16 with `pgvector` extension.
  * Dense 1536-dimensional embeddings with Hierarchical Navigable Small World (HNSW) cosine index (`vector_cosine_ops`, $m=16, ef\_construction=64$).
  * Sub-100ms vector lookup via native SQL cosine distance operator (`<=>`).
- **Frontend & Desktop Client**:
  * Cross-platform desktop shell built on Electron 30 with secure `contextIsolation` and sandboxed preload IPC bridge.
  * Single Page Application built on React 18, TypeScript, Vite, and Tailwind CSS.
  * Real-time token streaming chat interface with Markdown formatting, syntax-highlighted code blocks, and KaTeX math.
  * Interactive citation badges opening an excerpt inspector modal displaying source document, page number, and similarity score.
  * Document workspace with drag-and-drop ingestion, progress bars, and indexed repository list.
- **Evaluation & QA**:
  * Automated RAG Triad scoring: Context Relevance (>80%), Faithfulness (>85%), Answer Relevance (>85%).
  * Admin Telemetry Dashboard rendering live query volume, latency distribution histograms, and index volume counters.
  * JUnit 5, Mockito, and JaCoCo test suites achieving >80% branch coverage.

---

### 3. AUTONOMOUS STEP-BY-STEP EXECUTION DIRECTIVE

Execute the following phases sequentially and proactively using your toolset:

#### PHASE 1: ENVIRONMENT & REPOSITORY INITIALIZATION
1. Detect or configure Java 21, Apache Maven 3.9, Node.js 24 LTS, npm, and Git.
2. Initialize local Git repository on branch `main`. Create `develop` branch.
3. Configure `.gitignore` to exclude `target/`, `node_modules/`, `dist/`, `tools/`, and temporary build artifacts.

#### PHASE 2: SPRING BOOT 3 BACKEND IMPLEMENTATION
Create the complete Java microservice under `backend/`:
- `pom.xml`: Configure Spring Boot starter web, webflux, data-jpa, security, postgresql, tika-core, tika-parsers-standard, jjwt, bucket4j, and test starters.
- `src/main/resources/application.yml`: Configure Neon PostgreSQL datasource, HikariCP pool, multipart limits (25MB), JWT secret, and RAG top-k parameters.
- `src/main/java/com/pbl/rag/`:
  * `RagApplication.java`: Main Spring Boot application entry point with `@EnableAsync`.
  * `model/`: `User.java` (JPA entity), `Document.java` (lifecycle states), `DocumentChunk.java` (with `vector(1536)` column), `ChatRequest.java`, `ChatResponse.java` (with citation metadata).
  * `repository/`: `UserRepository.java`, `DocumentRepository.java`, `DocumentChunkRepository.java` (with native SQL `ORDER BY embedding <=> :queryVector ASC LIMIT :topK`).
  * `service/`: `RagOrchestrationService.java` (prompt engineering, context budgeting, streaming), `DocumentIngestionService.java` (Tika extraction, recursive sliding-window chunking), `EvaluationService.java` (RAG Triad metrics).
  * `controller/`: `RagChatController.java` (`POST /api/rag/chat`), `DocumentController.java` (`POST /api/documents/upload`), `AdminMetricsController.java` (`GET /api/admin/metrics`).
- Compile and verify using Maven: `mvn clean test-compile -DskipTests` to ensure `BUILD SUCCESS`.

#### PHASE 3: ELECTRON & REACT 18 FRONTEND IMPLEMENTATION
Create the cross-platform client under `frontend/`:
- `package.json`: Configure React 18, React-DOM, TypeScript, Vite, Electron 30, and Lucide icons.
- `electron/main.js`: Main desktop process with native window frame, IPC handlers, and desktop notification listeners.
- `electron/preload.js`: Secure IPC preload script exposing `electronAPI` with `contextIsolation: true`.
- `src/App.tsx`: Full-featured tabbed desktop UI containing:
  * Tab 1: Real-time RAG Chat canvas with token streaming and clickable citation badge modal.
  * Tab 2: Document Ingestion zone with drag-and-drop upload and repository status table.
  * Tab 3: Admin Telemetry & RAG Triad evaluation dashboard with metric cards.
- Install packages and verify using `npm install`.

#### PHASE 4: PORTAL WORK LOGS & EXCEL WORKBOOK GENERATION
Generate the complete 14-week PBL log dataset under `submission_reports/`:
- `Java_PBL_RAG_Work_Logs.xlsx`: Multi-sheet styled Excel workbook containing:
  * Sheet 1 (Daily Work Log): 420 daily entries (July 6 to October 10, 2026, Mon-Sat) for all 5 students with Date, Hours (1.5–2.5h), Status (Completed), and realistic module-specific work descriptions.
  * Sheet 2 (Weekly Project Reports): 14 weekly entries matching screenshot fields (*Week*, *Date Range*, *Submitted By*, *GitHub Link*, *Work Completed This Week*, *Problems Faced*, *Plan for Next Week*).
  * Sheet 3 (Team & 5-Module Mapping): Comprehensive matrix of member names, roles, assigned modules, Git branches, and tech stacks.
- `Daily_Work_Logs.csv` & `Weekly_Project_Reports.csv`: Plaintext CSV exports for direct portal copy-pasting.

#### PHASE 5: MULTI-BRANCH GIT ORCHESTRATION
Automate individual commit attribution satisfying the 3 commits/student/week requirement:
- Create `feature/member1-rag-engine` and commit Module 1 code authored by Aryan Kumar Singh.
- Create `feature/member2-doc-ingestion` and commit Module 2 code authored by Awantika Jaiswal.
- Create `feature/member3-database-security` and commit Module 3 code authored by Devansh Maini.
- Create `feature/member4-ui-electron` and commit Module 4 code authored by Aviral Joshi.
- Create `feature/member5-analytics-evaluation` and commit Module 5 code authored by Akshita Mawaliya.
- Merge all 5 feature branches into `develop`. Merge `develop` into `main` and tag release `v1.0.0`.

#### PHASE 6: MASTER SUBMISSION DELIVERABLES SUITE
Generate complete academic documentation under `docs/`:
1. `IEEE_Two_Column_Paper.html`: Authentic two-column IEEE format research paper (*Times New Roman*, column rule, abstract, equations 1–5, Table I, and 10+ Google Scholar citations).
2. `Master_Project_Report_50_Pages.md`: Comprehensive 50-page Master Project Report containing Guide Certificate (Er. Ram Babu Buri), Declaration, Acknowledgements, Abstract, Chapters 1 to 8, full code listings, and UML diagrams.
3. 5 Individual 20-Page Member Reports:
   * `Member1_Aryan_Core_RAG_Engine_Report.md`
   * `Member2_Awantika_Document_Ingestion_Report.md`
   * `Member3_Devansh_Database_Security_Report.md`
   * `Member4_Aviral_Frontend_Electron_Report.md`
   * `Member5_Akshita_Evaluation_Testing_Report.md`
4. `submission_reports/DocuQuery_AI_Presentation.pptx`: Genuine 15-slide Microsoft PowerPoint `.pptx` deck with styled layouts, speaker notes, and member assignments.
5. `1_SRS_Document.md`: IEEE Std 830-1998 Software Requirements Specification.
6. `2_UML_Diagrams_Package.md`: Use Case, Class, Sequence, Activity, Component, and ER diagrams.
7. `6_Demo_Video_Script_and_Viva.md`: Word-for-word 10-minute demo video recording script and 7+ external viva voce Q&A cheat sheet.

#### PHASE 7: LAUNCHERS & PROTOTYPE DEMO
Create one-click executable launchers in root:
- `demo_app.html`: Standalone, zero-dependency browser prototype demonstrating chat, citations, ingestion, and admin telemetry.
- `open_interactive_demo.bat`: Double-click batch script to launch the demo application.
- `run_backend.bat`: One-click script setting JAVA_HOME and running `mvn spring-boot:run`.
- `run_frontend.bat`: One-click script launching the Electron desktop application.

---

### 4. ACCEPTANCE CRITERIA
Your implementation is complete when:
1. `backend/` compiles with `BUILD SUCCESS` under Java 21 and Maven.
2. `frontend/` dependencies install cleanly and Electron launches without runtime errors.
3. `Java_PBL_RAG_Work_Logs.xlsx` contains all 420 daily rows and 14 weekly entries.
4. `DocuQuery_AI_Presentation.pptx` opens seamlessly in Microsoft PowerPoint.
5. All 5 Git branches and release tag `v1.0.0` exist with individual student commit histories.
6. All academic documentation files in `docs/` are formatted and ready for submission.

Proceed now and implement all phases autonomously with zero manual intervention required.
```
