$pptPath = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\DocuQuery_AI_Presentation.pptx"
$jsonPath = "c:\Users\Lenovo\OneDrive\Desktop\RAG\submission_reports\slides.json"

$slidesData = Get-Content -Path $jsonPath -Raw -Encoding utf8 | ConvertFrom-Json

$ppt = New-Object -ComObject PowerPoint.Application
$pres = $ppt.Presentations.Add()
$pres.PageSetup.SlideWidth = 960
$pres.PageSetup.SlideHeight = 540

foreach ($data in $slidesData) {
    # 12 = ppLayoutBlank
    $slide = $pres.Slides.Add($pres.Slides.Count + 1, 12)
    
    # Background shape (Navy Slate #0F172A = RGB(15, 23, 42))
    $bg = $slide.Shapes.AddShape(1, 0, 0, 960, 540) # 1 = msoShapeRectangle
    $bg.Fill.Solid()
    $bg.Fill.ForeColor.RGB = 0x2A170F # BGR format: R=15 (0F), G=23 (17), B=42 (2A)
    $bg.Line.Visible = 0

    # Header Top Accent Bar (#38BDF8 = RGB(56, 189, 248) -> BGR: F8BD38)
    $headerBar = $slide.Shapes.AddShape(1, 0, 0, 960, 8)
    $headerBar.Fill.Solid()
    $headerBar.Fill.ForeColor.RGB = 0xF8BD38
    $headerBar.Line.Visible = 0

    # Title Box
    $titleBox = $slide.Shapes.AddTextbox(1, 40, 25, 880, 55)
    $titleBox.TextFrame.TextRange.Text = $data.title
    $titleBox.TextFrame.TextRange.Font.Name = "Segoe UI"
    $titleBox.TextFrame.TextRange.Font.Size = 24
    $titleBox.TextFrame.TextRange.Font.Bold = 1
    $titleBox.TextFrame.TextRange.Font.Color.RGB = 0xF8BD38

    # Subtitle Box
    $subBox = $slide.Shapes.AddTextbox(1, 40, 80, 880, 35)
    $subBox.TextFrame.TextRange.Text = $data.subtitle
    $subBox.TextFrame.TextRange.Font.Name = "Segoe UI"
    $subBox.TextFrame.TextRange.Font.Size = 13
    $subBox.TextFrame.TextRange.Font.Color.RGB = 0xB8A394

    # Speaker Tag Box
    $speakerBox = $slide.Shapes.AddTextbox(1, 40, 115, 880, 25)
    $speakerBox.TextFrame.TextRange.Text = "Speaker: " + $data.speaker
    $speakerBox.TextFrame.TextRange.Font.Name = "Segoe UI"
    $speakerBox.TextFrame.TextRange.Font.Size = 12
    $speakerBox.TextFrame.TextRange.Font.Bold = 1
    $speakerBox.TextFrame.TextRange.Font.Color.RGB = 0xF755A8

    # Bullets Content Box
    if ($data.bullets -and $data.bullets.Count -gt 0) {
        $contentBox = $slide.Shapes.AddTextbox(1, 40, 150, 880, 340)
        $textRange = $contentBox.TextFrame.TextRange
        $bulletText = ($data.bullets | ForEach-Object { [string]::Format("[*]  {0}", $_) }) -join "`n`n"
        $textRange.Text = $bulletText
        $textRange.Font.Name = "Segoe UI"
        $textRange.Font.Size = 15
        $textRange.Font.Color.RGB = 0xF9F5F1
    }

    # Footer Box
    $footerBox = $slide.Shapes.AddTextbox(1, 40, 505, 880, 25)
    $footerBox.TextFrame.TextRange.Text = "Arya College of Engineering & I.T., Jaipur | Java PBL (5th Sem) | Mentor: Er. Ram Babu Buri"
    $footerBox.TextFrame.TextRange.Font.Name = "Segoe UI"
    $footerBox.TextFrame.TextRange.Font.Size = 10
    $footerBox.TextFrame.TextRange.Font.Color.RGB = 0x8B7464
}

if (Test-Path $pptPath) { Remove-Item $pptPath -Force }
$pres.SaveAs($pptPath)
$pres.Close()
$ppt.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($ppt) | Out-Null

Write-Host "SUCCESS: PowerPoint presentation saved to: $pptPath"
