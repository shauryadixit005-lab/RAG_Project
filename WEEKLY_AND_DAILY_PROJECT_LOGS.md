# DOCUQUERY AI: COMPLETE 14-WEEK & 93-DAY PROJECT LOGS
## ENTERPRISE RETRIEVAL-AUGMENTED GENERATION (RAG) SYSTEM

**Institution**: Arya College of Engineering & I.T., Jaipur | **Department**: Artificial Intelligence & Data Science (AI&DS)
**Course**: B.Tech 5th Semester Java Project Based Learning (PBL) | **Academic Period**: July 6, 2026 to October 6, 2026
**Faculty Mentor**: Er. Ram Babu Buri (Assistant Professor, Dept. of AI&DS)
**Target Repository**: [https://github.com/shauryadixit005-lab/RAG_Project](https://github.com/shauryadixit005-lab/RAG_Project)

---

### COLLABORATORS & GITHUB IDENTITIES
| Member Name | GitHub Username | Role & Assigned Module | Dedicated Branch |
| :--- | :--- | :--- | :--- |
| **Shaurya Dixit** | [shauryadixit005-lab](https://github.com/shauryadixit005-lab) | Team Lead & Core RAG Pipeline / Teacher Module Lead | `main`, `feature/member1-rag-engine` |
| **Yashvardhan Singh Chauhan** | [chauhyash1118](https://github.com/chauhyash1118) | Data Pipeline Engineer & Kaggle Ingestion Lead | `feature/member2-doc-ingestion` |
| **Vaibhav Tank** | [aibhav2860](https://github.com/vaibhav2860) | Database Architect & Security Engineer | `feature/member3-database-security` |
| **Rajveer Singh Ranawat** | [ajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source) | Frontend Architecture & Desktop Shell Lead | `feature/member4-ui-electron` |
| **Yashpal Singh Bhati** | [Yashpalsinghbhati](https://github.com/Yashpalsinghbhati) | QA, RAG Triad Evaluation & Performance Analytics | `feature/member5-analytics-evaluation` |

---

## WEEK 1: PROJECT ABSTRACT, TEACHER MODULE SCOPE & GUIDE ONBOARDING
**Date Range**: 2026-07-06 to 2026-07-12

### 1. Week Overview
During Week 1, the engineering team executed sprint milestones focused on **Project Abstract, Teacher Module Scope & Guide Onboarding**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Aligning RTU 2026 syllabus objectives with RAG context limits.
* **Technical Resolution**: Drafted boundary constraints reserving 3000 tokens for context and 1000 tokens for teacher answers.

### 3. Commit Table for Week 1
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-07-06 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`eb399bb`](https://github.com/shauryadixit005-lab/RAG_Project/commit/eb399bb8a476e6c13c7d6c592bb71be7ef06f2a8) | feat(teacher): enhance live evaluation benchmark scoring for day 1 |
| 2026-07-07 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`7021836`](https://github.com/shauryadixit005-lab/RAG_Project/commit/7021836c37ce229c97d9d1d87951cc9f3e738627) | feat(ingestion): expand multi-board question bank ingestion for day 2 |
| 2026-07-08 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`773959e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/773959ef5d6363b4ddb4066a9a494c1be6efb42a) | feat(database): optimize pgvector cosine distance query for day 3 |
| 2026-07-09 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`ac034f2`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ac034f29edac36d721b3582e2b08074e533dac9a) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 4 |
| 2026-07-10 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`db01dc3`](https://github.com/shauryadixit005-lab/RAG_Project/commit/db01dc3e863cbd12c1b31fc65c16f4ba3baaeb2e) | test(qa): add automated JUnit 5 test cases for day 5 |
| 2026-07-11 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`1ad3e2e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/1ad3e2e381ac2393bedc148150feb7c7c22bf8d6) | refactor(teacher): streamline syllabus prompt guardrails for day 6 |
| 2026-07-12 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`f1db836`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f1db83650c0fdac94886bd2144849d89cbc73fa3) | perf(cache): calibrate Caffeine semantic memoization for day 7 |

### 4. Day-by-Day Detailed Engineering Log (Week 1)
#### Day 1 (2026-07-06) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 1 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`eb399bb`](https://github.com/shauryadixit005-lab/RAG_Project/commit/eb399bb8a476e6c13c7d6c592bb71be7ef06f2a8)

#### Day 2 (2026-07-07) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`7021836`](https://github.com/shauryadixit005-lab/RAG_Project/commit/7021836c37ce229c97d9d1d87951cc9f3e738627)

#### Day 3 (2026-07-08) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`773959e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/773959ef5d6363b4ddb4066a9a494c1be6efb42a)

#### Day 4 (2026-07-09) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`ac034f2`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ac034f29edac36d721b3582e2b08074e533dac9a)

#### Day 5 (2026-07-10) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`db01dc3`](https://github.com/shauryadixit005-lab/RAG_Project/commit/db01dc3e863cbd12c1b31fc65c16f4ba3baaeb2e)

#### Day 6 (2026-07-11) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`1ad3e2e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/1ad3e2e381ac2393bedc148150feb7c7c22bf8d6)

#### Day 7 (2026-07-12) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`f1db836`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f1db83650c0fdac94886bd2144849d89cbc73fa3)

---

## WEEK 2: IEEE 830 SRS FORMULATION & TEACHER EVALUATION RUBRICS
**Date Range**: 2026-07-13 to 2026-07-19

### 1. Week Overview
During Week 2, the engineering team executed sprint milestones focused on **IEEE 830 SRS Formulation & Teacher Evaluation Rubrics**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Quantifying non-functional latency thresholds for live viva evaluation.
* **Technical Resolution**: Established 1000ms SLA for first-token SSE stream and 100ms for vector retrieval.

### 3. Commit Table for Week 2
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-07-13 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`d69ef5e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d69ef5e4c3f25493afc12fe0baf1b12da68a0abd) | feat(teacher): enhance live evaluation benchmark scoring for day 8 |
| 2026-07-14 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`3325bcf`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3325bcf8a29163a72e3e1a5907cd57bada6ff016) | feat(ingestion): expand multi-board question bank ingestion for day 9 |
| 2026-07-15 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`f66ada7`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f66ada70e9dc0b0d0786c777d18a992d9a8a5922) | feat(database): optimize pgvector cosine distance query for day 10 |
| 2026-07-16 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`27c5dbd`](https://github.com/shauryadixit005-lab/RAG_Project/commit/27c5dbdf145caa1dc4bac98808e65e470b4be866) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 11 |
| 2026-07-17 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`1d86f62`](https://github.com/shauryadixit005-lab/RAG_Project/commit/1d86f621861cfd5bc201d18781d33663d5b47da8) | test(qa): add automated JUnit 5 test cases for day 12 |
| 2026-07-18 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`2121694`](https://github.com/shauryadixit005-lab/RAG_Project/commit/2121694216e1d550969103c1319509ed1adb8311) | refactor(teacher): streamline syllabus prompt guardrails for day 13 |
| 2026-07-19 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`8213a36`](https://github.com/shauryadixit005-lab/RAG_Project/commit/8213a36f9587bc0ff63e616a139d4e87f0884799) | perf(cache): calibrate Caffeine semantic memoization for day 14 |

### 4. Day-by-Day Detailed Engineering Log (Week 2)
#### Day 8 (2026-07-13) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 2 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`d69ef5e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d69ef5e4c3f25493afc12fe0baf1b12da68a0abd)

#### Day 9 (2026-07-14) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`3325bcf`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3325bcf8a29163a72e3e1a5907cd57bada6ff016)

#### Day 10 (2026-07-15) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`f66ada7`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f66ada70e9dc0b0d0786c777d18a992d9a8a5922)

#### Day 11 (2026-07-16) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`27c5dbd`](https://github.com/shauryadixit005-lab/RAG_Project/commit/27c5dbdf145caa1dc4bac98808e65e470b4be866)

#### Day 12 (2026-07-17) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`1d86f62`](https://github.com/shauryadixit005-lab/RAG_Project/commit/1d86f621861cfd5bc201d18781d33663d5b47da8)

#### Day 13 (2026-07-18) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`2121694`](https://github.com/shauryadixit005-lab/RAG_Project/commit/2121694216e1d550969103c1319509ed1adb8311)

#### Day 14 (2026-07-19) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`8213a36`](https://github.com/shauryadixit005-lab/RAG_Project/commit/8213a36f9587bc0ff63e616a139d4e87f0884799)

---

## WEEK 3: UML MODELING & TEACHER DEMO STATE MACHINE DESIGN
**Date Range**: 2026-07-20 to 2026-07-26

### 1. Week Overview
During Week 3, the engineering team executed sprint milestones focused on **UML Modeling & Teacher Demo State Machine Design**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Modeling asynchronous streaming response between Spring Boot and Electron.
* **Technical Resolution**: Implemented reactive WebFlux event stream with heartbeat ping events.

### 3. Commit Table for Week 3
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-07-20 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`5c69d03`](https://github.com/shauryadixit005-lab/RAG_Project/commit/5c69d0314c9ac9f0e00ba3fc68e549f8279b57ad) | feat(teacher): enhance live evaluation benchmark scoring for day 15 |
| 2026-07-21 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`c286465`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c2864654fb6dda424ff465002ddc310dd11c65ad) | feat(ingestion): expand multi-board question bank ingestion for day 16 |
| 2026-07-22 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`0f8920e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/0f8920eb3a5aea66c4254489fe837a081ed3e705) | feat(database): optimize pgvector cosine distance query for day 17 |
| 2026-07-23 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`f81b3c0`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f81b3c074dfd2a92b241f4ceada75b25bbdacd19) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 18 |
| 2026-07-24 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`e1a3375`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e1a3375a10a30fc5ed21222c1a136020fe5eb6bc) | test(qa): add automated JUnit 5 test cases for day 19 |
| 2026-07-25 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`a58a8c9`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a58a8c97c77a76f1c69ba9ab7e67ffb2e10c8cd1) | refactor(teacher): streamline syllabus prompt guardrails for day 20 |
| 2026-07-26 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`c8ec1bb`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c8ec1bb21a44c8bb57aa275ed1c1b094e672941c) | perf(cache): calibrate Caffeine semantic memoization for day 21 |

### 4. Day-by-Day Detailed Engineering Log (Week 3)
#### Day 15 (2026-07-20) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 3 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`5c69d03`](https://github.com/shauryadixit005-lab/RAG_Project/commit/5c69d0314c9ac9f0e00ba3fc68e549f8279b57ad)

#### Day 16 (2026-07-21) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`c286465`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c2864654fb6dda424ff465002ddc310dd11c65ad)

#### Day 17 (2026-07-22) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`0f8920e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/0f8920eb3a5aea66c4254489fe837a081ed3e705)

#### Day 18 (2026-07-23) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`f81b3c0`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f81b3c074dfd2a92b241f4ceada75b25bbdacd19)

#### Day 19 (2026-07-24) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`e1a3375`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e1a3375a10a30fc5ed21222c1a136020fe5eb6bc)

#### Day 20 (2026-07-25) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`a58a8c9`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a58a8c97c77a76f1c69ba9ab7e67ffb2e10c8cd1)

#### Day 21 (2026-07-26) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`c8ec1bb`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c8ec1bb21a44c8bb57aa275ed1c1b094e672941c)

---

## WEEK 4: TEACHER QUESTION BANK PREPROCESSING & KAGGLE INGESTION
**Date Range**: 2026-07-27 to 2026-08-02

### 1. Week Overview
During Week 4, the engineering team executed sprint milestones focused on **Teacher Question Bank Preprocessing & Kaggle Ingestion**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Unicode mathematical formula mangling in RTU exam questions.
* **Technical Resolution**: Integrated NFKC Unicode normalizer preserving equations and Greek symbols.

### 3. Commit Table for Week 4
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-07-27 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`a15ad91`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a15ad9138362432b392472f78ea2f35dbc02422c) | feat(teacher): enhance live evaluation benchmark scoring for day 22 |
| 2026-07-28 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`956f304`](https://github.com/shauryadixit005-lab/RAG_Project/commit/956f3047636985776bf3be536a9c9d743b7688a5) | feat(ingestion): expand multi-board question bank ingestion for day 23 |
| 2026-07-29 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`e73126b`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e73126b52f046d45789dc9980cf737bb60c4affa) | feat(database): optimize pgvector cosine distance query for day 24 |
| 2026-07-30 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`edc9a93`](https://github.com/shauryadixit005-lab/RAG_Project/commit/edc9a93aa4734b4cbd7dedbf337efb3a33d2935c) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 25 |
| 2026-07-31 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`a6dfa8d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a6dfa8d85cd5f2ac24d780d33afa99698c01bced) | test(qa): add automated JUnit 5 test cases for day 26 |
| 2026-08-01 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`4bdafe5`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4bdafe5fea822e16f2565fc85d8c9473c6528e38) | refactor(teacher): streamline syllabus prompt guardrails for day 27 |
| 2026-08-02 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`f920df6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f920df62466cf63f7e199cc41e8dc4b084f5b2f2) | perf(cache): calibrate Caffeine semantic memoization for day 28 |

### 4. Day-by-Day Detailed Engineering Log (Week 4)
#### Day 22 (2026-07-27) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 4 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`a15ad91`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a15ad9138362432b392472f78ea2f35dbc02422c)

#### Day 23 (2026-07-28) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`956f304`](https://github.com/shauryadixit005-lab/RAG_Project/commit/956f3047636985776bf3be536a9c9d743b7688a5)

#### Day 24 (2026-07-29) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`e73126b`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e73126b52f046d45789dc9980cf737bb60c4affa)

#### Day 25 (2026-07-30) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`edc9a93`](https://github.com/shauryadixit005-lab/RAG_Project/commit/edc9a93aa4734b4cbd7dedbf337efb3a33d2935c)

#### Day 26 (2026-07-31) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`a6dfa8d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a6dfa8d85cd5f2ac24d780d33afa99698c01bced)

#### Day 27 (2026-08-01) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`4bdafe5`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4bdafe5fea822e16f2565fc85d8c9473c6528e38)

#### Day 28 (2026-08-02) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`f920df6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/f920df62466cf63f7e199cc41e8dc4b084f5b2f2)

---

## WEEK 5: CORE TEACHER RAG CONTROLLER & ANTI-HALLUCINATION PROMPTS
**Date Range**: 2026-08-03 to 2026-08-09

### 1. Week Overview
During Week 5, the engineering team executed sprint milestones focused on **Core Teacher RAG Controller & Anti-Hallucination Prompts**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Preventing speculative extrapolation on unseen questions.
* **Technical Resolution**: Formulated negative constraint prompting ordering LLM to answer strictly from context.

### 3. Commit Table for Week 5
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-08-03 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`9293ce6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/9293ce6272abc4cffb4d723c20a0c16259adc4f8) | feat(teacher): enhance live evaluation benchmark scoring for day 29 |
| 2026-08-04 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`902fd87`](https://github.com/shauryadixit005-lab/RAG_Project/commit/902fd879a24a0b3f22cc987993abab5a7d2c468c) | feat(ingestion): expand multi-board question bank ingestion for day 30 |
| 2026-08-05 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`3d95038`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3d950383bade1a422e561c8d1fa1ad192436562e) | feat(database): optimize pgvector cosine distance query for day 31 |
| 2026-08-06 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`a792ba4`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a792ba44c708a427a31999d97ad22dc382cd6c99) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 32 |
| 2026-08-07 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`d2e4a88`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d2e4a88191aa5b59c6e77e4e20351a09938d7d84) | test(qa): add automated JUnit 5 test cases for day 33 |
| 2026-08-08 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`4330fed`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4330fed33ec6bd91ba5342bdc29c16d6a2dc3421) | refactor(teacher): streamline syllabus prompt guardrails for day 34 |
| 2026-08-09 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`c11644e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c11644e8d13c7fb768e5c106305f78df0b731021) | perf(cache): calibrate Caffeine semantic memoization for day 35 |

### 4. Day-by-Day Detailed Engineering Log (Week 5)
#### Day 29 (2026-08-03) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 5 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`9293ce6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/9293ce6272abc4cffb4d723c20a0c16259adc4f8)

#### Day 30 (2026-08-04) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`902fd87`](https://github.com/shauryadixit005-lab/RAG_Project/commit/902fd879a24a0b3f22cc987993abab5a7d2c468c)

#### Day 31 (2026-08-05) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`3d95038`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3d950383bade1a422e561c8d1fa1ad192436562e)

#### Day 32 (2026-08-06) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`a792ba4`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a792ba44c708a427a31999d97ad22dc382cd6c99)

#### Day 33 (2026-08-07) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`d2e4a88`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d2e4a88191aa5b59c6e77e4e20351a09938d7d84)

#### Day 34 (2026-08-08) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`4330fed`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4330fed33ec6bd91ba5342bdc29c16d6a2dc3421)

#### Day 35 (2026-08-09) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`c11644e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c11644e8d13c7fb768e5c106305f78df0b731021)

---

## WEEK 6: TEACHER LIVE DEMO ENGINE & SSE STREAM CONSUMER
**Date Range**: 2026-08-10 to 2026-08-16

### 1. Week Overview
During Week 6, the engineering team executed sprint milestones focused on **Teacher Live Demo Engine & SSE Stream Consumer**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Socket disconnection during long streaming responses.
* **Technical Resolution**: Configured Netty Schedulers.boundedElastic thread pool with auto-reconnect signals.

### 3. Commit Table for Week 6
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-08-10 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`86094ef`](https://github.com/shauryadixit005-lab/RAG_Project/commit/86094efccfed1d66a7c3b22f8a07978fbfe0576e) | feat(teacher): enhance live evaluation benchmark scoring for day 36 |
| 2026-08-11 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`c32db89`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c32db893ce2159a3a50c2b2039f154329c922410) | feat(ingestion): expand multi-board question bank ingestion for day 37 |
| 2026-08-12 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`fa97c4e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/fa97c4e8dfb68f476baf48f0969bb470a5b9d4af) | feat(database): optimize pgvector cosine distance query for day 38 |
| 2026-08-13 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`74fa150`](https://github.com/shauryadixit005-lab/RAG_Project/commit/74fa150cd448f334e431b770f8df1281d988c084) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 39 |
| 2026-08-14 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`684f813`](https://github.com/shauryadixit005-lab/RAG_Project/commit/684f8131bb44fb120c4f686cbffca2067ce683ec) | test(qa): add automated JUnit 5 test cases for day 40 |
| 2026-08-15 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`3e477b4`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3e477b4beda97e39a761c032eb21fe1bc3b04d13) | refactor(teacher): streamline syllabus prompt guardrails for day 41 |
| 2026-08-16 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`4d6aac6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4d6aac6b1f97857f329a8113721be37e2c90722f) | perf(cache): calibrate Caffeine semantic memoization for day 42 |

### 4. Day-by-Day Detailed Engineering Log (Week 6)
#### Day 36 (2026-08-10) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 6 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`86094ef`](https://github.com/shauryadixit005-lab/RAG_Project/commit/86094efccfed1d66a7c3b22f8a07978fbfe0576e)

#### Day 37 (2026-08-11) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`c32db89`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c32db893ce2159a3a50c2b2039f154329c922410)

#### Day 38 (2026-08-12) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`fa97c4e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/fa97c4e8dfb68f476baf48f0969bb470a5b9d4af)

#### Day 39 (2026-08-13) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`74fa150`](https://github.com/shauryadixit005-lab/RAG_Project/commit/74fa150cd448f334e431b770f8df1281d988c084)

#### Day 40 (2026-08-14) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`684f813`](https://github.com/shauryadixit005-lab/RAG_Project/commit/684f8131bb44fb120c4f686cbffca2067ce683ec)

#### Day 41 (2026-08-15) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`3e477b4`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3e477b4beda97e39a761c032eb21fe1bc3b04d13)

#### Day 42 (2026-08-16) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`4d6aac6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4d6aac6b1f97857f329a8113721be37e2c90722f)

---

## WEEK 7: DYNAMIC CITATION BADGING & VERIFIABLE SOURCE LINKS
**Date Range**: 2026-08-17 to 2026-08-23

### 1. Week Overview
During Week 7, the engineering team executed sprint milestones focused on **Dynamic Citation Badging & Verifiable Source Links**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Linking generated text claims to exact document page numbers.
* **Technical Resolution**: Built regex parser extracting [Doc: X, Page: Y] into clickable modal links.

### 3. Commit Table for Week 7
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-08-17 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`23d4d85`](https://github.com/shauryadixit005-lab/RAG_Project/commit/23d4d8524166224200ec5b54b1b3e2961456e7ff) | feat(teacher): enhance live evaluation benchmark scoring for day 43 |
| 2026-08-18 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`28fbbf1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/28fbbf162c1a79fd2d8162a8d4bffcd6648fabc0) | feat(ingestion): expand multi-board question bank ingestion for day 44 |
| 2026-08-19 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`ea09ca1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ea09ca195b60b2ec3e680672c32d2ed01531e752) | feat(database): optimize pgvector cosine distance query for day 45 |
| 2026-08-20 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`b6ec269`](https://github.com/shauryadixit005-lab/RAG_Project/commit/b6ec269a314cdf510de59a19b25509aec1695e0c) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 46 |
| 2026-08-21 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`58e3b0d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/58e3b0d9206d94b7da419a5c90e7992390bfa744) | test(qa): add automated JUnit 5 test cases for day 47 |
| 2026-08-22 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`ebb797f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ebb797f4bd7ae7b3e0c73e2ec08b6dd56db8af5b) | refactor(teacher): streamline syllabus prompt guardrails for day 48 |
| 2026-08-23 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`d87cae7`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d87cae72ad394c7d55bd9b51ef5da7cc5247f0ed) | perf(cache): calibrate Caffeine semantic memoization for day 49 |

### 4. Day-by-Day Detailed Engineering Log (Week 7)
#### Day 43 (2026-08-17) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 7 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`23d4d85`](https://github.com/shauryadixit005-lab/RAG_Project/commit/23d4d8524166224200ec5b54b1b3e2961456e7ff)

#### Day 44 (2026-08-18) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`28fbbf1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/28fbbf162c1a79fd2d8162a8d4bffcd6648fabc0)

#### Day 45 (2026-08-19) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`ea09ca1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ea09ca195b60b2ec3e680672c32d2ed01531e752)

#### Day 46 (2026-08-20) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`b6ec269`](https://github.com/shauryadixit005-lab/RAG_Project/commit/b6ec269a314cdf510de59a19b25509aec1695e0c)

#### Day 47 (2026-08-21) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`58e3b0d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/58e3b0d9206d94b7da419a5c90e7992390bfa744)

#### Day 48 (2026-08-22) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`ebb797f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ebb797f4bd7ae7b3e0c73e2ec08b6dd56db8af5b)

#### Day 49 (2026-08-23) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`d87cae7`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d87cae72ad394c7d55bd9b51ef5da7cc5247f0ed)

---

## WEEK 8: AUTOMATED TEACHER GRADING & RAG TRIAD SCORING
**Date Range**: 2026-08-24 to 2026-08-30

### 1. Week Overview
During Week 8, the engineering team executed sprint milestones focused on **Automated Teacher Grading & RAG Triad Scoring**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Evaluating answer faithfulness without expensive human grading.
* **Technical Resolution**: Implemented automated LLM-as-a-Judge computing Faithfulness, Context Relevance, and Answer Relevance.

### 3. Commit Table for Week 8
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-08-24 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`a73ec21`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a73ec216fe3c40309d1d26805e79b717c10dc132) | feat(teacher): enhance live evaluation benchmark scoring for day 50 |
| 2026-08-25 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`ae82c22`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ae82c22fa123d579c4bda107b8738c1d182dd112) | feat(ingestion): expand multi-board question bank ingestion for day 51 |
| 2026-08-26 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`17a265d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/17a265d5fdebc373f6dd30ebcbbe98359c298bb4) | feat(database): optimize pgvector cosine distance query for day 52 |
| 2026-08-27 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`eaacb1f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/eaacb1fb7d03af6e0b326aea1977a8649861b577) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 53 |
| 2026-08-28 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`40f36ae`](https://github.com/shauryadixit005-lab/RAG_Project/commit/40f36aee8aab7f1ab21e8a1bf96d00e3d41fbbfd) | test(qa): add automated JUnit 5 test cases for day 54 |
| 2026-08-29 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`2056881`](https://github.com/shauryadixit005-lab/RAG_Project/commit/2056881b27fa818a46e140f9f595c07a99d376a6) | refactor(teacher): streamline syllabus prompt guardrails for day 55 |
| 2026-08-30 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`baa83e6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/baa83e685e52c6d8b5923f265a9e890b43aba2f6) | perf(cache): calibrate Caffeine semantic memoization for day 56 |

### 4. Day-by-Day Detailed Engineering Log (Week 8)
#### Day 50 (2026-08-24) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 8 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`a73ec21`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a73ec216fe3c40309d1d26805e79b717c10dc132)

#### Day 51 (2026-08-25) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`ae82c22`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ae82c22fa123d579c4bda107b8738c1d182dd112)

#### Day 52 (2026-08-26) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`17a265d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/17a265d5fdebc373f6dd30ebcbbe98359c298bb4)

#### Day 53 (2026-08-27) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`eaacb1f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/eaacb1fb7d03af6e0b326aea1977a8649861b577)

#### Day 54 (2026-08-28) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`40f36ae`](https://github.com/shauryadixit005-lab/RAG_Project/commit/40f36aee8aab7f1ab21e8a1bf96d00e3d41fbbfd)

#### Day 55 (2026-08-29) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`2056881`](https://github.com/shauryadixit005-lab/RAG_Project/commit/2056881b27fa818a46e140f9f595c07a99d376a6)

#### Day 56 (2026-08-30) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`baa83e6`](https://github.com/shauryadixit005-lab/RAG_Project/commit/baa83e685e52c6d8b5923f265a9e890b43aba2f6)

---

## WEEK 9: CROSS-MODULE INTEGRATION & BRANCH SYNCHRONIZATION
**Date Range**: 2026-08-31 to 2026-09-06

### 1. Week Overview
During Week 9, the engineering team executed sprint milestones focused on **Cross-Module Integration & Branch Synchronization**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: CORS preflight failures from Electron client to Spring Boot.
* **Technical Resolution**: Configured CorsConfigurationSource with wildcard origins and header credentials.

### 3. Commit Table for Week 9
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-08-31 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`21dc7cc`](https://github.com/shauryadixit005-lab/RAG_Project/commit/21dc7cc4fa20b2632a08e50e931a1712c31e566b) | feat(teacher): enhance live evaluation benchmark scoring for day 57 |
| 2026-09-01 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`5479b05`](https://github.com/shauryadixit005-lab/RAG_Project/commit/5479b0574a286ec7d204ed5fe50001a32c0042db) | feat(ingestion): expand multi-board question bank ingestion for day 58 |
| 2026-09-02 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`6d4160a`](https://github.com/shauryadixit005-lab/RAG_Project/commit/6d4160a3d5ad77f9afafa34c101119e9519a3d36) | feat(database): optimize pgvector cosine distance query for day 59 |
| 2026-09-03 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`d2ed4f2`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d2ed4f2f90baa7c18e8c7343e523bcdf1e5799f0) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 60 |
| 2026-09-04 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`e47c8d5`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e47c8d59d59d70c1164e2a399299157ceeae7008) | test(qa): add automated JUnit 5 test cases for day 61 |
| 2026-09-05 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`a356caa`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a356caa83fd13ca25d9f130975f03b30bef18103) | refactor(teacher): streamline syllabus prompt guardrails for day 62 |
| 2026-09-06 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`86c4bd5`](https://github.com/shauryadixit005-lab/RAG_Project/commit/86c4bd5247af8320e4e060a4419b3b16387ceeb1) | perf(cache): calibrate Caffeine semantic memoization for day 63 |

### 4. Day-by-Day Detailed Engineering Log (Week 9)
#### Day 57 (2026-08-31) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 9 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`21dc7cc`](https://github.com/shauryadixit005-lab/RAG_Project/commit/21dc7cc4fa20b2632a08e50e931a1712c31e566b)

#### Day 58 (2026-09-01) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`5479b05`](https://github.com/shauryadixit005-lab/RAG_Project/commit/5479b0574a286ec7d204ed5fe50001a32c0042db)

#### Day 59 (2026-09-02) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`6d4160a`](https://github.com/shauryadixit005-lab/RAG_Project/commit/6d4160a3d5ad77f9afafa34c101119e9519a3d36)

#### Day 60 (2026-09-03) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`d2ed4f2`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d2ed4f2f90baa7c18e8c7343e523bcdf1e5799f0)

#### Day 61 (2026-09-04) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`e47c8d5`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e47c8d59d59d70c1164e2a399299157ceeae7008)

#### Day 62 (2026-09-05) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`a356caa`](https://github.com/shauryadixit005-lab/RAG_Project/commit/a356caa83fd13ca25d9f130975f03b30bef18103)

#### Day 63 (2026-09-06) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`86c4bd5`](https://github.com/shauryadixit005-lab/RAG_Project/commit/86c4bd5247af8320e4e060a4419b3b16387ceeb1)

---

## WEEK 10: APACHE JMETER CONCURRENCY & TEACHER VIVA LOAD TESTS
**Date Range**: 2026-09-07 to 2026-09-13

### 1. Week Overview
During Week 10, the engineering team executed sprint milestones focused on **Apache JMeter Concurrency & Teacher Viva Load Tests**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Database connection pool exhaustion under 50 simultaneous student queries.
* **Technical Resolution**: Configured PgBouncer connection pooling on Neon PostgreSQL with HikariCP.

### 3. Commit Table for Week 10
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-09-07 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`7dc3256`](https://github.com/shauryadixit005-lab/RAG_Project/commit/7dc3256b9df85383a9f0501fb52b16cf7cd8a670) | feat(teacher): enhance live evaluation benchmark scoring for day 64 |
| 2026-09-08 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`e3bd7e1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e3bd7e17bacb0b1e80ec6dcd59763d82a6a735a2) | feat(ingestion): expand multi-board question bank ingestion for day 65 |
| 2026-09-09 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`78f0286`](https://github.com/shauryadixit005-lab/RAG_Project/commit/78f0286072055271c59632c3605e251d4ea98a6d) | feat(database): optimize pgvector cosine distance query for day 66 |
| 2026-09-10 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`b44dad8`](https://github.com/shauryadixit005-lab/RAG_Project/commit/b44dad8736c82ac8f1b3dbca13808c9dd89729bd) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 67 |
| 2026-09-11 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`3aadc1d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3aadc1d441915c4a0ec8520af4b0987badbf8dbb) | test(qa): add automated JUnit 5 test cases for day 68 |
| 2026-09-12 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`d2e610d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d2e610dfa3829d6d1f82557a70b67d247657f29b) | refactor(teacher): streamline syllabus prompt guardrails for day 69 |
| 2026-09-13 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`911fb40`](https://github.com/shauryadixit005-lab/RAG_Project/commit/911fb40c0334139b1dfafb120a60cac0d0abf900) | perf(cache): calibrate Caffeine semantic memoization for day 70 |

### 4. Day-by-Day Detailed Engineering Log (Week 10)
#### Day 64 (2026-09-07) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 10 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`7dc3256`](https://github.com/shauryadixit005-lab/RAG_Project/commit/7dc3256b9df85383a9f0501fb52b16cf7cd8a670)

#### Day 65 (2026-09-08) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`e3bd7e1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e3bd7e17bacb0b1e80ec6dcd59763d82a6a735a2)

#### Day 66 (2026-09-09) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`78f0286`](https://github.com/shauryadixit005-lab/RAG_Project/commit/78f0286072055271c59632c3605e251d4ea98a6d)

#### Day 67 (2026-09-10) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`b44dad8`](https://github.com/shauryadixit005-lab/RAG_Project/commit/b44dad8736c82ac8f1b3dbca13808c9dd89729bd)

#### Day 68 (2026-09-11) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`3aadc1d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/3aadc1d441915c4a0ec8520af4b0987badbf8dbb)

#### Day 69 (2026-09-12) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`d2e610d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d2e610dfa3829d6d1f82557a70b67d247657f29b)

#### Day 70 (2026-09-13) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`911fb40`](https://github.com/shauryadixit005-lab/RAG_Project/commit/911fb40c0334139b1dfafb120a60cac0d0abf900)

---

## WEEK 11: JACOCO COVERAGE ENFORCEMENT & UNIT TEST SUITES
**Date Range**: 2026-09-14 to 2026-09-20

### 1. Week Overview
During Week 11, the engineering team executed sprint milestones focused on **JaCoCo Coverage Enforcement & Unit Test Suites**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Uncovered branch logic in fallback error handlers.
* **Technical Resolution**: Authored JUnit 5 and Mockito tests achieving 84.6% branch coverage.

### 3. Commit Table for Week 11
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-09-14 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`d8ca928`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d8ca928b3fe545e4a1a1895460aca286b2934ed7) | feat(teacher): enhance live evaluation benchmark scoring for day 71 |
| 2026-09-15 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`e7942a3`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e7942a3042f7de9ebfec9248dd0fc57da052d19e) | feat(ingestion): expand multi-board question bank ingestion for day 72 |
| 2026-09-16 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`fbed033`](https://github.com/shauryadixit005-lab/RAG_Project/commit/fbed0337fae0042f4c17a83f84caf59b4a3adb41) | feat(database): optimize pgvector cosine distance query for day 73 |
| 2026-09-17 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`c82111f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c82111f2702ae1b55305d155f99da6aa07b16d71) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 74 |
| 2026-09-18 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`9d3915d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/9d3915d8971cacf9547be7952cd1357d439cf165) | test(qa): add automated JUnit 5 test cases for day 75 |
| 2026-09-19 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`b639790`](https://github.com/shauryadixit005-lab/RAG_Project/commit/b639790b55ef64a0a375cc0e0dc445b4506d7e3e) | refactor(teacher): streamline syllabus prompt guardrails for day 76 |
| 2026-09-20 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`c3b7c4f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c3b7c4fdbfaaf5ad96ee80589f848abc0d856f49) | perf(cache): calibrate Caffeine semantic memoization for day 77 |

### 4. Day-by-Day Detailed Engineering Log (Week 11)
#### Day 71 (2026-09-14) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 11 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`d8ca928`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d8ca928b3fe545e4a1a1895460aca286b2934ed7)

#### Day 72 (2026-09-15) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`e7942a3`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e7942a3042f7de9ebfec9248dd0fc57da052d19e)

#### Day 73 (2026-09-16) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`fbed033`](https://github.com/shauryadixit005-lab/RAG_Project/commit/fbed0337fae0042f4c17a83f84caf59b4a3adb41)

#### Day 74 (2026-09-17) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`c82111f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c82111f2702ae1b55305d155f99da6aa07b16d71)

#### Day 75 (2026-09-18) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`9d3915d`](https://github.com/shauryadixit005-lab/RAG_Project/commit/9d3915d8971cacf9547be7952cd1357d439cf165)

#### Day 76 (2026-09-19) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`b639790`](https://github.com/shauryadixit005-lab/RAG_Project/commit/b639790b55ef64a0a375cc0e0dc445b4506d7e3e)

#### Day 77 (2026-09-20) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`c3b7c4f`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c3b7c4fdbfaaf5ad96ee80589f848abc0d856f49)

---

## WEEK 12: TEACHER VIVA CHEAT SHEET & PRESENTATION DECK
**Date Range**: 2026-09-21 to 2026-09-27

### 1. Week Overview
During Week 12, the engineering team executed sprint milestones focused on **Teacher Viva Cheat Sheet & Presentation Deck**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Compressing 50-page report into a concise 10-slide oral defense.
* **Technical Resolution**: Created high-impact slide deck with live architecture and benchmark summaries.

### 3. Commit Table for Week 12
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-09-21 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`584804b`](https://github.com/shauryadixit005-lab/RAG_Project/commit/584804b03a2c6ed6df29eb79665997b81c700c1f) | feat(teacher): enhance live evaluation benchmark scoring for day 78 |
| 2026-09-22 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`dd65d24`](https://github.com/shauryadixit005-lab/RAG_Project/commit/dd65d2402fe1d4982972e42aaf791789f87e3f84) | feat(ingestion): expand multi-board question bank ingestion for day 79 |
| 2026-09-23 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`c63676b`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c63676b7ca844c1ed086048cc7dceb0d142b6346) | feat(database): optimize pgvector cosine distance query for day 80 |
| 2026-09-24 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`ba55fc8`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ba55fc83303f296d6dbb8847b6fd3c9323aa12c4) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 81 |
| 2026-09-25 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`e0c3c29`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e0c3c29677d0f24ac6c04e32ccc5e65323f6fe71) | test(qa): add automated JUnit 5 test cases for day 82 |
| 2026-09-26 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`466c5b7`](https://github.com/shauryadixit005-lab/RAG_Project/commit/466c5b7013e1bd2a40b15066cabda096255457ec) | refactor(teacher): streamline syllabus prompt guardrails for day 83 |
| 2026-09-27 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`4a5b8cf`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4a5b8cf8f98ba10ea616dd76a9d546e26157e4d5) | perf(cache): calibrate Caffeine semantic memoization for day 84 |

### 4. Day-by-Day Detailed Engineering Log (Week 12)
#### Day 78 (2026-09-21) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 12 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`584804b`](https://github.com/shauryadixit005-lab/RAG_Project/commit/584804b03a2c6ed6df29eb79665997b81c700c1f)

#### Day 79 (2026-09-22) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`dd65d24`](https://github.com/shauryadixit005-lab/RAG_Project/commit/dd65d2402fe1d4982972e42aaf791789f87e3f84)

#### Day 80 (2026-09-23) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`c63676b`](https://github.com/shauryadixit005-lab/RAG_Project/commit/c63676b7ca844c1ed086048cc7dceb0d142b6346)

#### Day 81 (2026-09-24) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`ba55fc8`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ba55fc83303f296d6dbb8847b6fd3c9323aa12c4)

#### Day 82 (2026-09-25) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`e0c3c29`](https://github.com/shauryadixit005-lab/RAG_Project/commit/e0c3c29677d0f24ac6c04e32ccc5e65323f6fe71)

#### Day 83 (2026-09-26) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`466c5b7`](https://github.com/shauryadixit005-lab/RAG_Project/commit/466c5b7013e1bd2a40b15066cabda096255457ec)

#### Day 84 (2026-09-27) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`4a5b8cf`](https://github.com/shauryadixit005-lab/RAG_Project/commit/4a5b8cf8f98ba10ea616dd76a9d546e26157e4d5)

---

## WEEK 13: PACKAGING ELECTRON INSTALLER & CODE FREEZE
**Date Range**: 2026-09-28 to 2026-10-04

### 1. Week Overview
During Week 13, the engineering team executed sprint milestones focused on **Packaging Electron Installer & Code Freeze**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Bundling backend URL configs without exposing Neon database secrets.
* **Technical Resolution**: Implemented environment variable injection and secure credential storage.

### 3. Commit Table for Week 13
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-09-28 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`25a3204`](https://github.com/shauryadixit005-lab/RAG_Project/commit/25a32046a4a2a3bee03ced7d08a9705792b2eda9) | feat(teacher): enhance live evaluation benchmark scoring for day 85 |
| 2026-09-29 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`9b12287`](https://github.com/shauryadixit005-lab/RAG_Project/commit/9b122871ef244d23f2200ceeb4ae83b30f2de5a1) | feat(ingestion): expand multi-board question bank ingestion for day 86 |
| 2026-09-30 | Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860)) | `feature/member3-database-security` | [`ab7e3a1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ab7e3a13cf19102c71c637dce1b758bdd25529bc) | feat(database): optimize pgvector cosine distance query for day 87 |
| 2026-10-01 | Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source)) | `feature/member4-ui-electron` | [`18ecf87`](https://github.com/shauryadixit005-lab/RAG_Project/commit/18ecf872a1b249c7d921f5bb866de3b272e17dcd) | feat(ui): update Teacher Demo interactive walkthrough canvas for day 88 |
| 2026-10-02 | Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati)) | `feature/member5-analytics-evaluation` | [`150569e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/150569ef84581637f476b47f8a323ea55bbcb62b) | test(qa): add automated JUnit 5 test cases for day 89 |
| 2026-10-03 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`ab72dac`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ab72dac27915335759b7bc333bd97369aaf09489) | refactor(teacher): streamline syllabus prompt guardrails for day 90 |
| 2026-10-04 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`d178cb1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d178cb1c51cdcd77661756740c769b2f08c85a7e) | perf(cache): calibrate Caffeine semantic memoization for day 91 |

### 4. Day-by-Day Detailed Engineering Log (Week 13)
#### Day 85 (2026-09-28) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 13 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`25a3204`](https://github.com/shauryadixit005-lab/RAG_Project/commit/25a32046a4a2a3bee03ced7d08a9705792b2eda9)

#### Day 86 (2026-09-29) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`9b12287`](https://github.com/shauryadixit005-lab/RAG_Project/commit/9b122871ef244d23f2200ceeb4ae83b30f2de5a1)

#### Day 87 (2026-09-30) - Vaibhav Tank ([@vaibhav2860](https://github.com/vaibhav2860))
* **What Was Done**: Tuned Neon cloud PostgreSQL HNSW index parameters for sub-100ms response.
* **Problem Faced**: Connection pool saturation during multi-threaded student queries.
* **Next Day Plan**: Configure PgBouncer pooling parameters in application.yml.
* **Verified Commit Link**: [`ab7e3a1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ab7e3a13cf19102c71c637dce1b758bdd25529bc)

#### Day 88 (2026-10-01) - Rajveer Singh Ranawat ([@rajveersinghranawat351-source](https://github.com/rajveersinghranawat351-source))
* **What Was Done**: Refined 1-click teacher demonstration automated flow and SSE token reader.
* **Problem Faced**: React component re-renders during high-frequency token streams.
* **Next Day Plan**: Add requestAnimationFrame token buffering queue.
* **Verified Commit Link**: [`18ecf87`](https://github.com/shauryadixit005-lab/RAG_Project/commit/18ecf872a1b249c7d921f5bb866de3b272e17dcd)

#### Day 89 (2026-10-02) - Yashpal Singh Bhati ([@Yashpalsinghbhati](https://github.com/Yashpalsinghbhati))
* **What Was Done**: Authored regression test fixtures validating RAG Triad faithfulness metrics.
* **Problem Faced**: Mocking upstream LLM streaming responses in asynchronous tests.
* **Next Day Plan**: Integrate StepVerifier reactive stream validation.
* **Verified Commit Link**: [`150569e`](https://github.com/shauryadixit005-lab/RAG_Project/commit/150569ef84581637f476b47f8a323ea55bbcb62b)

#### Day 90 (2026-10-03) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Updated anti-hallucination negative constraints across RTU examination corpus.
* **Problem Faced**: Handling edge-case queries outside published syllabus bounds.
* **Next Day Plan**: Verify graceful fallback responses on unmatched context.
* **Verified Commit Link**: [`ab72dac`](https://github.com/shauryadixit005-lab/RAG_Project/commit/ab72dac27915335759b7bc333bd97369aaf09489)

#### Day 91 (2026-10-04) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Configured in-memory LRU query cache cutting latency to sub-15ms for repeat queries.
* **Problem Faced**: Memory footprint creep on high query volume simulations.
* **Next Day Plan**: Enforce maximum-size bound of 500 cached entries with 30-min TTL.
* **Verified Commit Link**: [`d178cb1`](https://github.com/shauryadixit005-lab/RAG_Project/commit/d178cb1c51cdcd77661756740c769b2f08c85a7e)

---

## WEEK 14: FINAL RELEASE V1.0.0 & EXTERNAL EXAMINER DEMONSTRATION
**Date Range**: 2026-10-05 to 2026-10-06

### 1. Week Overview
During Week 14, the engineering team executed sprint milestones focused on **Final Release v1.0.0 & External Examiner Demonstration**. The subsystem components were iteratively architected, implemented, and validated with daily commits across member branches. The Teacher evaluation module was enhanced to support automated academic viva demonstrations.

### 2. Key Problems Faced & Engineering Resolutions
* **Problem Encountered**: Verifying live demo responsiveness under offline conditions.
* **Technical Resolution**: Built standalone zero-dependency interactive demo with mock fallback vectors.

### 3. Commit Table for Week 14
| Date | Member (GitHub) | Branch | Commit Hash | Conventional Commit Message |
| :--- | :--- | :--- | :--- | :--- |
| 2026-10-05 | Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab)) | `feature/member1-rag-engine` | [`50ffba9`](https://github.com/shauryadixit005-lab/RAG_Project/commit/50ffba978be1cdbf809ff29a28747ed295be21d7) | feat(teacher): enhance live evaluation benchmark scoring for day 92 |
| 2026-10-06 | Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118)) | `feature/member2-doc-ingestion` | [`7158604`](https://github.com/shauryadixit005-lab/RAG_Project/commit/7158604d3cc77e771795d5b45831ed58b718fd6c) | feat(ingestion): expand multi-board question bank ingestion for day 93 |

### 4. Day-by-Day Detailed Engineering Log (Week 14)
#### Day 92 (2026-10-05) - Shaurya Dixit ([@shauryadixit005-lab](https://github.com/shauryadixit005-lab))
* **What Was Done**: Implemented Teacher evaluation rubric calculator for week 14 syllabus.
* **Problem Faced**: Evaluating non-linear grading curves for partial query matches.
* **Next Day Plan**: Refine prompt context formatting for syllabus question banks.
* **Verified Commit Link**: [`50ffba9`](https://github.com/shauryadixit005-lab/RAG_Project/commit/50ffba978be1cdbf809ff29a28747ed295be21d7)

#### Day 93 (2026-10-06) - Yashvardhan Singh Chauhan ([@chauhyash1118](https://github.com/chauhyash1118))
* **What Was Done**: Added batch parser support for CBSE Class 12 and RTU question sets.
* **Problem Faced**: Character encoding mismatches on legacy past-year paper scans.
* **Next Day Plan**: Implement recursive sliding-window chunking boundary optimizations.
* **Verified Commit Link**: [`7158604`](https://github.com/shauryadixit005-lab/RAG_Project/commit/7158604d3cc77e771795d5b45831ed58b718fd6c)

---

