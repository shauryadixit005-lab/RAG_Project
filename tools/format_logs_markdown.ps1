$repoRoot = "c:\Users\Lenovo\OneDrive\Desktop\RAG"
$mdPath = "$repoRoot\WEEKLY_AND_DAILY_PROJECT_LOGS.md"
$content = [System.IO.File]::ReadAllText($mdPath, [System.Text.Encoding]::UTF8)

# Replace table lines
$cleanTable = @"
| Member Name | GitHub Username | Role & Assigned Module | Dedicated Branch |
| :--- | :--- | :--- | :--- |
| **Shaurya Dixit** | [`shauryadixit005-lab`](https://github.com/shauryadixit005-lab) | Team Lead & Core RAG Pipeline / Teacher Module Lead | ``main``, ``feature/member1-rag-engine`` |
| **Yashvardhan Singh Chauhan** | [`chauhyash1118`](https://github.com/chauhyash1118) | Data Pipeline Engineer & Kaggle Ingestion Lead | ``feature/member2-doc-ingestion`` |
| **Vaibhav Tank** | [`vaibhav2860`](https://github.com/vaibhav2860) | Database Architect & Security Engineer | ``feature/member3-database-security`` |
| **Rajveer Singh Ranawat** | [`rajveersinghranawat351-source`](https://github.com/rajveersinghranawat351-source) | Frontend Architecture & Desktop Shell Lead | ``feature/member4-ui-electron`` |
| **Yashpal Singh Bhati** | [`Yashpalsinghbhati`](https://github.com/Yashpalsinghbhati) | QA, RAG Triad Evaluation & Performance Analytics | ``feature/member5-analytics-evaluation`` |
"@

$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?s)\| Member Name.*?\| \*\*Yashpal Singh Bhati\*\*.*?\n', ($cleanTable + "`n"))

[System.IO.File]::WriteAllText($mdPath, $content, [System.Text.Encoding]::UTF8)
Write-Host "Table cleaned successfully!"
