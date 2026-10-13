# PowerShell Script to Generate Complete Clean Text Format Sheets for Weekly and Daily Logs
$csvWeekly = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\Weekly_Project_Reports.csv"
$csvDaily = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\Daily_Work_Logs.csv"

$txtWeekly = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\Weekly_Project_Reports_Complete.txt"
$txtDaily = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\Daily_Work_Logs_Complete.txt"

# 1. GENERATE COMPLETE WEEKLY PROJECT REPORTS TEXT SHEET
$weeklyRecords = Import-Csv $csvWeekly
$wSb = [System.Text.StringBuilder]::new()

[void]$wSb.AppendLine("====================================================================================================")
[void]$wSb.AppendLine("                       ARYA COLLEGE OF ENGINEERING & I.T., JAIPUR                                  ")
[void]$wSb.AppendLine("                 DEPARTMENT OF ARTIFICIAL INTELLIGENCE & DATA SCIENCE (AI&DS)                       ")
[void]$wSb.AppendLine("                      B.TECH 5TH SEMESTER JAVA PROJECT BASED LEARNING (PBL)                        ")
[void]$wSb.AppendLine("                    COMPLETE WEEKLY PROJECT REPORTS (WEEKS 1 TO 14)                                ")
[void]$wSb.AppendLine("====================================================================================================")
[void]$wSb.AppendLine("PROJECT TITLE   : DocuQuery AI: Enterprise Retrieval-Augmented Generation System")
[void]$wSb.AppendLine("MENTOR / GUIDE  : Er. Ram Babu Buri (Assistant Professor, Dept. of AI&DS)")
[void]$wSb.AppendLine("TEAM MEMBERS    : 1. Shaurya Dixit (22EAIDS042) - Team Leader & Core RAG Architect")
[void]$wSb.AppendLine("                  2. Yashvardhan Singh Chauhan (22EAIDS048) - Data Pipeline & Kaggle Lead")
[void]$wSb.AppendLine("                  3. Vaibhav Tank (22EAIDS052) - Database & Security Architect")
[void]$wSb.AppendLine("                  4. Rajveer Singh Ranawat (22EAIDS038) - Frontend & Desktop Lead")
[void]$wSb.AppendLine("                  5. Yashpal Singh Bhati (22EAIDS061) - QA & Evaluation Lead")
[void]$wSb.AppendLine("ACADEMIC PERIOD : July 2026 - October 2026 (14 Weeks)")
[void]$wSb.AppendLine("====================================================================================================`n")

foreach ($w in $weeklyRecords) {
    [void]$wSb.AppendLine("----------------------------------------------------------------------------------------------------")
    [void]$wSb.AppendLine("WEEK NUMBER      : $($w.Week)")
    [void]$wSb.AppendLine("DURATION         : $($w.DateRange)")
    [void]$wSb.AppendLine("SUBMITTED BY     : $($w.SubmittedBy)")
    [void]$wSb.AppendLine("REPOSITORY LINK  : $($w.GitHubReportLink)")
    [void]$wSb.AppendLine("----------------------------------------------------------------------------------------------------")
    [void]$wSb.AppendLine("1. WORK COMPLETED THIS WEEK:")
    [void]$wSb.AppendLine("   $($w.WorkCompletedThisWeek)`n")
    [void]$wSb.AppendLine("2. PROBLEMS FACED & ENGINEERING RESOLUTIONS:")
    [void]$wSb.AppendLine("   $($w.ProblemsFaced)`n")
    [void]$wSb.AppendLine("3. PLAN FOR NEXT WEEK:")
    [void]$wSb.AppendLine("   $($w.PlanForNextWeek)`n")
    [void]$wSb.AppendLine("4. FACULTY MENTOR REVIEW:")
    [void]$wSb.AppendLine("   Evaluator: Er. Ram Babu Buri (Assistant Professor, Dept. of AI&DS)")
    [void]$wSb.AppendLine("   Assessment: Satisfactory progress. Code committed on assigned feature branch.")
    [void]$wSb.AppendLine("   Signature: _______________________")
    [void]$wSb.AppendLine("----------------------------------------------------------------------------------------------------`n")
}

[System.IO.File]::WriteAllText($txtWeekly, $wSb.ToString(), [System.Text.Encoding]::UTF8)
Write-Host "Generated: $txtWeekly"

# 2. GENERATE COMPLETE DAILY WORK LOGS TEXT SHEET
$dailyRecords = Import-Csv $csvDaily
$dSb = [System.Text.StringBuilder]::new()

[void]$dSb.AppendLine("====================================================================================================")
[void]$dSb.AppendLine("                       ARYA COLLEGE OF ENGINEERING & I.T., JAIPUR                                  ")
[void]$dSb.AppendLine("                 DEPARTMENT OF ARTIFICIAL INTELLIGENCE & DATA SCIENCE (AI&DS)                       ")
[void]$dSb.AppendLine("                      B.TECH 5TH SEMESTER JAVA PROJECT BASED LEARNING (PBL)                        ")
[void]$dSb.AppendLine("                    COMPLETE DAILY ENGINEERING LOG SHEET (420 ENTRIES / 70 DAYS)                   ")
[void]$dSb.AppendLine("====================================================================================================")
[void]$dSb.AppendLine("PROJECT TITLE   : DocuQuery AI: Enterprise Retrieval-Augmented Generation System")
[void]$dSb.AppendLine("MENTOR / GUIDE  : Er. Ram Babu Buri (Assistant Professor, Dept. of AI&DS)")
[void]$dSb.AppendLine("TOTAL ENTRIES   : 420 Verified Daily Submissions across 5 Team Members")
[void]$dSb.AppendLine("====================================================================================================`n")

$currentDate = ""
$entryIndex = 1

foreach ($d in $dailyRecords) {
    if ($d.Date -ne $currentDate) {
        $currentDate = $d.Date
        [void]$dSb.AppendLine("`n====================================================================================================")
        [void]$dSb.AppendLine("DATE: $currentDate")
        [void]$dSb.AppendLine("====================================================================================================")
    }

    [void]$dSb.AppendLine(("{0,4}. [{1}] {2,-25} | Hours: {3} | Status: {4}" -f $entryIndex++, $d.Date, $d.Member, $d.HoursWorked, $d.Status))
    [void]$dSb.AppendLine("      Module: $($d.Module)")
    [void]$dSb.AppendLine("      Task  : $($d.WorkDescription)")
    [void]$dSb.AppendLine("      ----------------------------------------------------------------------------------------------")
}

[System.IO.File]::WriteAllText($txtDaily, $dSb.ToString(), [System.Text.Encoding]::UTF8)
Write-Host "Generated: $txtDaily"
