# PowerShell script to cleanly commit each member's module to their respective branches
$env:PATH = "C:\Program Files\Git\cmd;$env:PATH"
Set-Location "c:\Users\Lenovo\OneDrive\Desktop\RAG"

Write-Host "=== Committing Work Modules to Dedicated Member Branches ==="

# 1. Member 1: Shaurya Dixit
Write-Host "1. Committing to Member 1 (Shaurya Dixit)..."
git checkout feature/member1-rag-engine
git checkout main -- backend/src/main/java/com/pbl/rag/engine docs/Member1_Shaurya_Core_RAG_Engine_Report.md pdf_reports/Member1_Shaurya_Core_RAG_Engine_Report.pdf
$env:GIT_AUTHOR_NAME = "Shaurya Dixit"
$env:GIT_AUTHOR_EMAIL = "shauryadixit005@gmail.com"
$env:GIT_COMMITTER_NAME = "Shaurya Dixit"
$env:GIT_COMMITTER_EMAIL = "shauryadixit005@gmail.com"
git commit -m "feat(core-rag): implement multi-stage RAG orchestration, hybrid search and teacher evaluation"
git branch -f member1-shaurya-rag-engine feature/member1-rag-engine
git branch -f shauryadixit005-lab feature/member1-rag-engine

# 2. Member 2: Yashvardhan Singh Chauhan
Write-Host "2. Committing to Member 2 (Yashvardhan Singh Chauhan)..."
git checkout feature/member2-doc-ingestion
git checkout main -- backend/src/main/java/com/pbl/rag/ingestion data docs/Member2_Yashvardhan_Document_Ingestion_Report.md pdf_reports/Member2_Yashvardhan_Document_Ingestion_Report.pdf
$env:GIT_AUTHOR_NAME = "Yashvardhan Singh Chauhan"
$env:GIT_AUTHOR_EMAIL = "chauhyash1118@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Yashvardhan Singh Chauhan"
$env:GIT_COMMITTER_EMAIL = "chauhyash1118@users.noreply.github.com"
git commit -m "feat(ingestion): implement sliding-window chunking, OCR parsing and Kaggle dataset ETL"
git branch -f member2-yashvardhan-doc-ingestion feature/member2-doc-ingestion
git branch -f chauhyash1118 feature/member2-doc-ingestion

# 3. Member 3: Vaibhav Tank
Write-Host "3. Committing to Member 3 (Vaibhav Tank)..."
git checkout feature/member3-database-security
git checkout main -- backend/src/main/java/com/pbl/rag/database backend/src/main/java/com/pbl/rag/security backend/src/main/resources/schema.sql docs/Member3_Vaibhav_Database_Security_Report.md pdf_reports/Member3_Vaibhav_Database_Security_Report.pdf
$env:GIT_AUTHOR_NAME = "Vaibhav Tank"
$env:GIT_AUTHOR_EMAIL = "vaibhav2860@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Vaibhav Tank"
$env:GIT_COMMITTER_EMAIL = "vaibhav2860@users.noreply.github.com"
git commit -m "feat(database-security): configure pgvector HNSW indexing, schema DDL and RBAC security layer"
git branch -f member3-vaibhav-database-security feature/member3-database-security
git branch -f vaibhav2860 feature/member3-database-security

# 4. Member 4: Rajveer Singh Ranawat
Write-Host "4. Committing to Member 4 (Rajveer Singh Ranawat)..."
git checkout feature/member4-ui-electron
git checkout main -- frontend/electron frontend/src/types/rag.ts demo_app.html docs/Member4_Rajveer_Frontend_Electron_Report.md pdf_reports/Member4_Rajveer_Frontend_Electron_Report.pdf
$env:GIT_AUTHOR_NAME = "Rajveer Singh Ranawat"
$env:GIT_AUTHOR_EMAIL = "rajveersinghranawat351-source@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Rajveer Singh Ranawat"
$env:GIT_COMMITTER_EMAIL = "rajveersinghranawat351-source@users.noreply.github.com"
git commit -m "feat(frontend-ui): integrate Electron desktop shell, glassmorphism UI and streaming contracts"
git branch -f member4-rajveer-ui-electron feature/member4-ui-electron
git branch -f rajveersinghranawat351-source feature/member4-ui-electron

# 5. Member 5: Yashpal Singh Bhati
Write-Host "5. Committing to Member 5 (Yashpal Singh Bhati)..."
git checkout feature/member5-analytics-evaluation
git checkout main -- backend/src/main/java/com/pbl/rag/evaluation backend/src/test docs/Member5_Yashpal_Evaluation_Testing_Report.md pdf_reports/Member5_Yashpal_Evaluation_Testing_Report.pdf
$env:GIT_AUTHOR_NAME = "Yashpal Singh Bhati"
$env:GIT_AUTHOR_EMAIL = "Yashpalsinghbhati@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Yashpal Singh Bhati"
$env:GIT_COMMITTER_EMAIL = "Yashpalsinghbhati@users.noreply.github.com"
git commit -m "feat(analytics-qa): implement RAG Triad automated evaluators and JUnit 5 pipeline test suite"
git branch -f member5-yashpal-analytics-evaluation feature/member5-analytics-evaluation
git branch -f Yashpalsinghbhati feature/member5-analytics-evaluation

# 6. Merge into develop and main
Write-Host "6. Merging all 5 branches into develop and main..."
$env:GIT_AUTHOR_NAME = "Shaurya Dixit"
$env:GIT_AUTHOR_EMAIL = "shauryadixit005@gmail.com"
$env:GIT_COMMITTER_NAME = "Shaurya Dixit"
$env:GIT_COMMITTER_EMAIL = "shauryadixit005@gmail.com"

git checkout develop
git merge feature/member1-rag-engine feature/member2-doc-ingestion feature/member3-database-security feature/member4-ui-electron feature/member5-analytics-evaluation --no-edit

git checkout main
git merge develop --no-edit

Write-Host "=== Verification: Top Commits on Each Branch ==="
git log feature/member1-rag-engine -n 1 --format="Member 1 Branch: %h | %an <%ae> | %s"
git log feature/member2-doc-ingestion -n 1 --format="Member 2 Branch: %h | %an <%ae> | %s"
git log feature/member3-database-security -n 1 --format="Member 3 Branch: %h | %an <%ae> | %s"
git log feature/member4-ui-electron -n 1 --format="Member 4 Branch: %h | %an <%ae> | %s"
git log feature/member5-analytics-evaluation -n 1 --format="Member 5 Branch: %h | %an <%ae> | %s"
git log main -n 1 --format="Main Branch:     %h | %an <%ae> | %s"
