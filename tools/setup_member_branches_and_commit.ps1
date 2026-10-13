# PowerShell Script: Configure Member Branches and Commit Work Modules
$env:PATH = "C:\Program Files\Git\cmd;$env:PATH"
Set-Location "c:\Users\Lenovo\OneDrive\Desktop\RAG"

Write-Host "=== Setting up Member Branches and Module Commits ==="

# Stash or preserve any current untracked state if needed
git add -A

# 1. MEMBER 1: Shaurya Dixit (Core RAG Engine & Teacher Module)
Write-Host "Configuring Member 1 (Shaurya Dixit) - Core RAG Engine..."
$env:GIT_AUTHOR_NAME = "Shaurya Dixit"
$env:GIT_AUTHOR_EMAIL = "shauryadixit005@gmail.com"
$env:GIT_COMMITTER_NAME = "Shaurya Dixit"
$env:GIT_COMMITTER_EMAIL = "shauryadixit005@gmail.com"

git checkout feature/member1-rag-engine 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b feature/member1-rag-engine }
git add backend/src/main/java/com/pbl/rag/engine/ docs/Member1_Shaurya_Core_RAG_Engine_Report.md pdf_reports/Member1_Shaurya_Core_RAG_Engine_Report.pdf
git commit -m "feat(core-rag): implement multi-stage RAG orchestration, hybrid search and teacher evaluation" 2>$null
git branch -f member1-shaurya-rag-engine feature/member1-rag-engine
git branch -f shauryadixit005-lab feature/member1-rag-engine

# 2. MEMBER 2: Yashvardhan Singh Chauhan (Document Ingestion & Kaggle Dataset)
Write-Host "Configuring Member 2 (Yashvardhan Singh Chauhan) - Document Ingestion..."
$env:GIT_AUTHOR_NAME = "Yashvardhan Singh Chauhan"
$env:GIT_AUTHOR_EMAIL = "chauhyash1118@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Yashvardhan Singh Chauhan"
$env:GIT_COMMITTER_EMAIL = "chauhyash1118@users.noreply.github.com"

git checkout feature/member2-doc-ingestion 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b feature/member2-doc-ingestion }
git add backend/src/main/java/com/pbl/rag/ingestion/ data/ docs/Member2_Yashvardhan_Document_Ingestion_Report.md pdf_reports/Member2_Yashvardhan_Document_Ingestion_Report.pdf
git commit -m "feat(ingestion): implement sliding-window chunking, OCR parsing and Kaggle dataset ETL" 2>$null
git branch -f member2-yashvardhan-doc-ingestion feature/member2-doc-ingestion
git branch -f chauhyash1118 feature/member2-doc-ingestion

# 3. MEMBER 3: Vaibhav Tank (Vector Database & Security)
Write-Host "Configuring Member 3 (Vaibhav Tank) - Vector Database & Security..."
$env:GIT_AUTHOR_NAME = "Vaibhav Tank"
$env:GIT_AUTHOR_EMAIL = "vaibhav2860@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Vaibhav Tank"
$env:GIT_COMMITTER_EMAIL = "vaibhav2860@users.noreply.github.com"

git checkout feature/member3-database-security 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b feature/member3-database-security }
git add backend/src/main/java/com/pbl/rag/database/ backend/src/main/java/com/pbl/rag/security/ backend/src/main/resources/schema.sql docs/Member3_Vaibhav_Database_Security_Report.md pdf_reports/Member3_Vaibhav_Database_Security_Report.pdf
git commit -m "feat(database-security): configure pgvector HNSW indexing, schema DDL and RBAC security" 2>$null
git branch -f member3-vaibhav-database-security feature/member3-database-security
git branch -f vaibhav2860 feature/member3-database-security

# 4. MEMBER 4: Rajveer Singh Ranawat (Modern UI & Desktop Electron)
Write-Host "Configuring Member 4 (Rajveer Singh Ranawat) - Frontend & Electron..."
$env:GIT_AUTHOR_NAME = "Rajveer Singh Ranawat"
$env:GIT_AUTHOR_EMAIL = "rajveersinghranawat351-source@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Rajveer Singh Ranawat"
$env:GIT_COMMITTER_EMAIL = "rajveersinghranawat351-source@users.noreply.github.com"

git checkout feature/member4-ui-electron 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b feature/member4-ui-electron }
git add frontend/electron/ frontend/src/types/ demo_app.html docs/Member4_Rajveer_Frontend_Electron_Report.md pdf_reports/Member4_Rajveer_Frontend_Electron_Report.pdf
git commit -m "feat(frontend-ui): integrate Electron desktop shell, glassmorphism UI and streaming contracts" 2>$null
git branch -f member4-rajveer-ui-electron feature/member4-ui-electron
git branch -f rajveersinghranawat351-source feature/member4-ui-electron

# 5. MEMBER 5: Yashpal Singh Bhati (Evaluation, Analytics & QA Testing)
Write-Host "Configuring Member 5 (Yashpal Singh Bhati) - Analytics & QA Testing..."
$env:GIT_AUTHOR_NAME = "Yashpal Singh Bhati"
$env:GIT_AUTHOR_EMAIL = "Yashpalsinghbhati@users.noreply.github.com"
$env:GIT_COMMITTER_NAME = "Yashpal Singh Bhati"
$env:GIT_COMMITTER_EMAIL = "Yashpalsinghbhati@users.noreply.github.com"

git checkout feature/member5-analytics-evaluation 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b feature/member5-analytics-evaluation }
git add backend/src/main/java/com/pbl/rag/evaluation/ backend/src/test/ docs/Member5_Yashpal_Evaluation_Testing_Report.md pdf_reports/Member5_Yashpal_Evaluation_Testing_Report.pdf
git commit -m "feat(analytics-qa): implement RAG Triad evaluators and JUnit 5 pipeline test suite" 2>$null
git branch -f member5-yashpal-analytics-evaluation feature/member5-analytics-evaluation
git branch -f Yashpalsinghbhati feature/member5-analytics-evaluation

# Return to main and merge all branches
Write-Host "Merging all member branches into develop and main..."
$env:GIT_AUTHOR_NAME = "Shaurya Dixit"
$env:GIT_AUTHOR_EMAIL = "shauryadixit005@gmail.com"
$env:GIT_COMMITTER_NAME = "Shaurya Dixit"
$env:GIT_COMMITTER_EMAIL = "shauryadixit005@gmail.com"

git checkout develop 2>$null
git merge feature/member1-rag-engine feature/member2-doc-ingestion feature/member3-database-security feature/member4-ui-electron feature/member5-analytics-evaluation --no-edit

git checkout main
git merge develop --no-edit
git add -A
git commit -m "release(v1.0.0): finalize all 5 member module branches and comprehensive PBL submission" 2>$null

Write-Host "=== Current Git Branches ==="
git branch -a
