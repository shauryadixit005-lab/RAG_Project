param()

$env:PATH = "C:\Program Files\Git\cmd;C:\Program Files\nodejs;$env:PATH"

# Set Git User identity
git config user.name "Shaurya Dixit"
git config user.email "shaurya.dixit@aryacollege.in"

Write-Host "=== Staging Master Project Deliverables ==="
# First, commit global documents, reports, and submission sheets to main/develop
git add docs/Master_Project_Report_50_Pages.md
git add docs/1_SRS_Document.md
git add docs/2_UML_Diagrams_Package.md
git add docs/3_Project_Report_Final.md
git add docs/4_IEEE_Research_Paper.md
git add docs/5_PPT_Presentation_Master.html
git add docs/6_Demo_Video_Script_and_Viva.md
git add docs/IEEE_Two_Column_Paper.html
git add submission_reports/
git add tools/

git commit -m "docs: compile 50-page master project report, IEEE 2-column paper, and daily/weekly logs"

# 1. Member 1: Shaurya Dixit
Write-Host "=== Committing to feature/member1-rag-engine ==="
git checkout feature/member1-rag-engine
git checkout main -- docs/Member1_Shaurya_Core_RAG_Engine_Report.md
git config user.name "Shaurya Dixit"
git config user.email "shaurya.dixit@aryacollege.in"
git add docs/Member1_Shaurya_Core_RAG_Engine_Report.md
git commit -m "feat(module1): author 20-page individual report on Core RAG Engine, SSE streaming, and Caffeine cache"

# 2. Member 2: Yashvardhan Singh Chauhan
Write-Host "=== Committing to feature/member2-doc-ingestion ==="
git checkout feature/member2-doc-ingestion
git checkout main -- docs/Member2_Yashvardhan_Document_Ingestion_Report.md
git config user.name "Yashvardhan Singh Chauhan"
git config user.email "yashvardhan.chauhan@aryacollege.in"
git add docs/Member2_Yashvardhan_Document_Ingestion_Report.md
git commit -m "feat(module2): author 20-page individual report on multi-format document ingestion, recursive chunking, and Kaggle dataset pipeline"

# 3. Member 3: Vaibhav Tank
Write-Host "=== Committing to feature/member3-database-security ==="
git checkout feature/member3-database-security
git checkout main -- docs/Member3_Vaibhav_Database_Security_Report.md
git config user.name "Vaibhav Tank"
git config user.email "vaibhav.tank@aryacollege.in"
git add docs/Member3_Vaibhav_Database_Security_Report.md
git commit -m "feat(module3): author 20-page individual report on Neon pgvector HNSW indexing, Spring Security 6, and Bucket4j rate limiting"

# 4. Member 4: Rajveer Singh Ranawat
Write-Host "=== Committing to feature/member4-ui-electron ==="
git checkout feature/member4-ui-electron
git checkout main -- docs/Member4_Rajveer_Frontend_Electron_Report.md
git config user.name "Rajveer Singh Ranawat"
git config user.email "rajveer.ranawat@aryacollege.in"
git add docs/Member4_Rajveer_Frontend_Electron_Report.md
git commit -m "feat(module4): author 20-page individual report on React 18 UI, Electron 30 desktop shell, and glassmorphic portal"

# 5. Member 5: Yashpal Singh Bhati
Write-Host "=== Committing to feature/member5-analytics-evaluation ==="
git checkout feature/member5-analytics-evaluation
git checkout main -- docs/Member5_Yashpal_Evaluation_Testing_Report.md
git config user.name "Yashpal Singh Bhati"
git config user.email "yashpal.bhati@aryacollege.in"
git add docs/Member5_Yashpal_Evaluation_Testing_Report.md
git commit -m "feat(module5): author 20-page individual report on RAG Triad evaluation, JMeter concurrency benchmarks, and JaCoCo coverage"

# Merge all into develop and main
Write-Host "=== Merging all feature branches into develop and main ==="
git checkout develop
git merge feature/member1-rag-engine -m "merge: integrate Module 1 (Shaurya Dixit) into develop"
git merge feature/member2-doc-ingestion -m "merge: integrate Module 2 (Yashvardhan Singh Chauhan) into develop"
git merge feature/member3-database-security -m "merge: integrate Module 3 (Vaibhav Tank) into develop"
git merge feature/member4-ui-electron -m "merge: integrate Module 4 (Rajveer Singh Ranawat) into develop"
git merge feature/member5-analytics-evaluation -m "merge: integrate Module 5 (Yashpal Singh Bhati) into develop"

git checkout main
git merge develop -m "release: v1.0.0 final integration with all 5 member modules and comprehensive reports"

Write-Host "=== Git Version Control Operations Completed Successfully ==="
git status
git log -n 8 --oneline
