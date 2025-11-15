# 读取page2.html作为模板
$templatePath = "c:\Users\唐军\Desktop\文件夹\网页设计\新网页项目\pages\page2.html"
$templateContent = Get-Content -Path $templatePath -Raw

# 循环生成1-36号页面
for ($i = 1; $i -le 36; $i++) {
    # 修改标题
    $pageContent = $templateContent -replace '<title>页面 2 - 创意小代码</title>', "<title>页面 $i - 创意小代码</title>"
    
    # 保存到对应页面文件
    $pagePath = "c:\Users\唐军\Desktop\文件夹\网页设计\新网页项目\pages\page${i}.html"
    Set-Content -Path $pagePath -Value $pageContent -Encoding UTF8
    Write-Host "已生成页面: page${i}.html"
}

Write-Host "所有页面生成完成！"