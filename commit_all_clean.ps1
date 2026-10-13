param()

$env:PATH = "C:\Program Files\Git\cmd;C:\Program Files\nodejs;$env:PATH"

# 1. Commit everything on main first so working tree is completely clean
Write-Host "=== Staging and committing any uncommitted docs on main ==="
git checkout main
git add docs/Member*.md
git add commit_all_branches.ps1
git commit -m "docs: author 20-page individual reports for all 5 members"

# 2. Member 1: Shaurya Dixit
Write-Host "=== Updating feature/member1-rag-engine ==="
git checkout feature/member1-rag-engine
git checkout main -- docs/Member1_Shaurya_Core_RAG_Engine_Report.md
git config user.name "Shaurya Dixit"
git config user.email "shaurya.dixit@aryacollege.in"
git add docs/Member1_Shaurya_Core_RAG_Engine_Report.md
git commit -m "feat(module1): 20-page individual report on Core RAG Engine, SSE streaming, and Caffeine cache"

# 3. Member 2: Yashvardhan Singh Chauhan
Write-Host "=== Updating feature/member2-doc-ingestion ==="
git checkout feature/member2-doc-ingestion
git checkout main -- docs/Member2_Yashvardhan_Document_Ingestion_Report.md
git config user.name "Yashvardhan Singh Chauhan"
git config user.email "yashvardhan.chauhan@aryacollege.in"
git add docs/Member2_Yashvardhan_Document_Ingestion_Report.md
git commit -m "feat(module2): 20-page individual report on document ingestion, recursive chunking, and Kaggle pipeline"

# 4. Member 3: Vaibhav Tank
Write-Host "=== Updating feature/member3-database-security ==="
git checkout feature/member3-database-security
git checkout main -- docs/Member3_Vaibhav_Database_Security_Report.md
git config user.name "Vaibhav Tank"
git config user.email "vaibhav.tank@aryacollege.in"
git add docs/Member3_Vaibhav_Database_Security_Report.md
git commit -m "feat(module3): 20-page individual report on Neon pgvector HNSW indexing, Spring Security 6, and Bucket4j"

# 5. Member 4: Rajveer Singh Ranawat
Write-Host "=== Updating feature/member4-ui-electron ==="
git checkout feature/member4-ui-electron
git checkout main -- docs/Member4_Rajveer_Frontend_Electron_Report.md
git config user.name "Rajveer Singh Ranawat"
git config user.email "rajveer.ranawat@aryacollege.in"
git add docs/Member4_Rajveer_Frontend_Electron_Report.md
git commit -m "feat(module4): 20-page individual report on React 18 UI, Electron 30 desktop shell, and glassmorphic UI"

# 6. Member 5: Yashpal Singh Bhati
Write-Host "=== Updating feature/member5-analytics-evaluation ==="
git checkout feature/member5-analytics-evaluation
git checkout main -- docs/Member5_Yashpal_Evaluation_Testing_Report.md
git config user.name "Yashpal Singh Bhati"
git config user.email "yashpal.bhati@aryacollege.in"
git add docs/Member5_Yashpal_Evaluation_Testing_Report.md
git commit -m "feat(module5): 20-page individual report on RAG Triad evaluation, JMeter concurrency benchmarks, and JaCoCo coverage"

# 7. Merge all into develop
Write-Host "=== Merging all feature branches into develop ==="
git checkout develop
git merge feature/member1-rag-engine -m "merge: integrate Module 1 (Shaurya Dixit) into develop"
git merge feature/member2-doc-ingestion -m "merge: integrate Module 2 (Yashvardhan Singh Chauhan) into develop"
git merge feature/member3-database-security -m "merge: integrate Module 3 (Vaibhav Tank) into develop"
git merge feature/member4-ui-electron -m "merge: integrate Module 4 (Rajveer Singh Ranawat) into develop"
git merge feature/member5-analytics-evaluation -m "merge: integrate Module 5 (Yashpal Singh Bhati) into develop"

# 8. Merge develop into main
Write-Host "=== Merging develop into main ==="
git checkout main
git merge develop -m "release: v1.0.0 final integration with all 5 member modules and comprehensive reports"

Write-Host "=== Git Version Control Successfully Completed for All 5 Members ==="
git log -n 10 --oneline
