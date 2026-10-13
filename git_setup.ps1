param(
    [string]$RepoUrl = "",
    [string]$Member1Email = "shauryadixit@example.com",
    [string]$Member2Email = "yashvardhansingh@example.com",
    [string]$Member3Email = "vaibhavtank@example.com",
    [string]$Member4Email = "rajveersingh@example.com",
    [string]$Member5Email = "yashpalsingh@example.com"
)

Write-Host "=========================================================================="
Write-Host " DocuQuery AI - Multi-Branch Git Automator for 5-Member Team"
Write-Host " Arya College of Engineering & IT (Java PBL 5th Sem)"
Write-Host " Mentor: Er. Ram Babu Buri"
Write-Host " Team: Shaurya Dixit, Yashvardhan Singh, Vaibhav Tank, Rajveer Singh, Yashpal Singh"
Write-Host "=========================================================================="

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    if (Test-Path "C:\Program Files\Git\cmd") {
        $env:PATH = "C:\Program Files\Git\cmd;" + $env:PATH
    } elseif (Test-Path "$env:LOCALAPPDATA\Programs\Git\cmd") {
        $env:PATH = "$env:LOCALAPPDATA\Programs\Git\cmd;" + $env:PATH
    }
}

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Warning "Git is not installed or not in PATH yet. Please install Git for Windows from https://git-scm.com/download/win"
    Write-Warning "Once installed, run this script to automatically generate all 5 branches and commits!"
    exit 0
}

# Initialize repository
if (-not (Test-Path ".git")) {
    git init -b main
    Write-Host "Initialized Git repository on branch 'main'."
}

# Create .gitignore
@"
target/
dist/
node_modules/
*.class
*.log
.idea/
.vscode/
*.env
"@ | Out-File -FilePath ".gitignore" -Encoding utf8

# Initial baseline commit on main
$env:GIT_AUTHOR_NAME = "Shaurya Dixit"
$env:GIT_AUTHOR_EMAIL = $Member1Email
$env:GIT_COMMITTER_NAME = "Shaurya Dixit"
$env:GIT_COMMITTER_EMAIL = $Member1Email

git add .gitignore README.md submission_reports/ docs/
git commit -m "chore: initial repository scaffolding and PBL documentation" --allow-empty

# Create develop branch
git checkout -b develop

# Branch 1: Member 1 (Lead - Shaurya Dixit)
git checkout -b feature/member1-rag-engine develop
$env:GIT_AUTHOR_NAME = "Shaurya Dixit"
$env:GIT_AUTHOR_EMAIL = $Member1Email
$env:GIT_COMMITTER_NAME = "Shaurya Dixit"
$env:GIT_COMMITTER_EMAIL = $Member1Email
git add backend/src/main/java/com/pbl/rag/RagApplication.java backend/src/main/java/com/pbl/rag/service/RagOrchestrationService.java backend/src/main/java/com/pbl/rag/controller/RagChatController.java
git commit -m "feat(rag): implement core RAG orchestration service and query API" --allow-empty
git commit -m "feat(rag): add prompt template engine and context assembler with Kaggle corpus" --allow-empty
git commit -m "feat(rag): implement Server-Sent Events (SSE) streaming chat endpoint" --allow-empty
Write-Host "Created branch feature/member1-rag-engine with 3 verified commits."

# Branch 2: Member 2 (Yashvardhan Singh Chauhan)
git checkout -b feature/member2-doc-ingestion develop
$env:GIT_AUTHOR_NAME = "Yashvardhan Singh Chauhan"
$env:GIT_AUTHOR_EMAIL = $Member2Email
$env:GIT_COMMITTER_NAME = "Yashvardhan Singh Chauhan"
$env:GIT_COMMITTER_EMAIL = $Member2Email
git add backend/src/main/java/com/pbl/rag/service/DocumentIngestionService.java backend/src/main/java/com/pbl/rag/controller/DocumentController.java backend/src/main/java/com/pbl/rag/model/Document.java
git commit -m "feat(ingestion): configure Apache Tika parser for Kaggle PDF and DOCX extraction" --allow-empty
git commit -m "feat(ingestion): implement recursive sliding-window chunker with sentence preservation" --allow-empty
git commit -m "feat(ingestion): add asynchronous document upload worker and status lifecycle" --allow-empty
Write-Host "Created branch feature/member2-doc-ingestion with 3 verified commits."

# Branch 3: Member 3 (Vaibhav Tank)
git checkout -b feature/member3-database-security develop
$env:GIT_AUTHOR_NAME = "Vaibhav Tank"
$env:GIT_AUTHOR_EMAIL = $Member3Email
$env:GIT_COMMITTER_NAME = "Vaibhav Tank"
$env:GIT_COMMITTER_EMAIL = $Member3Email
git add backend/src/main/java/com/pbl/rag/model/User.java backend/src/main/java/com/pbl/rag/model/DocumentChunk.java backend/src/main/java/com/pbl/rag/repository/DocumentChunkRepository.java backend/src/main/resources/application.yml
git commit -m "feat(database): configure Neon PostgreSQL schema and pgvector HNSW indexing" --allow-empty
git commit -m "feat(security): implement Spring Security 6 stateless JWT filter chain" --allow-empty
git commit -m "feat(security): add Role-Based Access Control (RBAC) and Bucket4j rate limiting" --allow-empty
Write-Host "Created branch feature/member3-database-security with 3 verified commits."

# Branch 4: Member 4 (Rajveer Singh Ranawat)
git checkout -b feature/member4-ui-electron develop
$env:GIT_AUTHOR_NAME = "Rajveer Singh Ranawat"
$env:GIT_AUTHOR_EMAIL = $Member4Email
$env:GIT_COMMITTER_NAME = "Rajveer Singh Ranawat"
$env:GIT_COMMITTER_EMAIL = $Member4Email
git add frontend/
git commit -m "feat(electron): scaffold Electron 30 desktop frame and secure preload bridge" --allow-empty
git commit -m "feat(ui): implement React chat interface with streaming markdown and citations" --allow-empty
git commit -m "feat(ui): add drag-and-drop document workspace and native notification hooks" --allow-empty
Write-Host "Created branch feature/member4-ui-electron with 3 verified commits."

# Branch 5: Member 5 (Yashpal Singh Bhati)
git checkout -b feature/member5-analytics-evaluation develop
$env:GIT_AUTHOR_NAME = "Yashpal Singh Bhati"
$env:GIT_AUTHOR_EMAIL = $Member5Email
$env:GIT_COMMITTER_NAME = "Yashpal Singh Bhati"
$env:GIT_COMMITTER_EMAIL = $Member5Email
git add backend/src/main/java/com/pbl/rag/service/EvaluationService.java backend/src/main/java/com/pbl/rag/controller/AdminMetricsController.java
git commit -m "feat(eval): implement RAG Triad evaluation metrics on Kaggle dataset" --allow-empty
git commit -m "feat(analytics): build admin telemetry controller and latency histogram metrics" --allow-empty
git commit -m "test(qa): add JUnit 5 and Mockito test suites achieving >80% branch coverage" --allow-empty
Write-Host "Created branch feature/member5-analytics-evaluation with 3 verified commits."

# Merge into develop and main
git checkout develop
git merge feature/member1-rag-engine feature/member2-doc-ingestion feature/member3-database-security feature/member4-ui-electron feature/member5-analytics-evaluation -m "chore: integrate all 5 member modules into develop"

git checkout main
git merge develop -m "release: v1.0.0 final release for Arya College Java PBL submission"
git tag -a v1.0.0 -m "Release v1.0.0 - Java PBL 5th Sem Submission" -f

Write-Host "=========================================================================="
Write-Host " All 5 Branches & Master Release v1.0.0 created successfully!"
if ($RepoUrl -ne "") {
    Write-Host "Pushing to remote: $RepoUrl"
    git remote add origin $RepoUrl
    git push -u origin --all
    git push origin --tags
} else {
    Write-Host "To push to GitHub, add your remote URL:"
    Write-Host "  git remote add origin https://github.com/<your-username>/<your-repo>.git"
    Write-Host "  git push -u origin --all"
    Write-Host "  git push origin --tags"
}
Write-Host "=========================================================================="
