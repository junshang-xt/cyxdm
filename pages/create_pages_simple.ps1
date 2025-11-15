# 简单版本，避免复杂语法
$templatePath = ".\base_template.html"
$template = Get-Content -Path $templatePath -Raw

# 使用简单循环
1..36 | ForEach-Object {
    $pageNum = $_
    $content = $template -replace "\{PAGE_NUM\}", $pageNum
    $content | Out-File -FilePath ".\page$pageNum.html" -Encoding utf8
    Write-Host "创建页面: page$pageNum.html"
}

Write-Host "完成!"