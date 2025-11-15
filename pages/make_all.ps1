# 读取模板文件
$template = Get-Content -Path ".\base_template.html" -Raw

# 循环生成1-36号页面
for ($i=1; $i -le 36; $i++) {
    # 替换页面编号
    $content = $template -replace "\{PAGE_NUM\}", $i
    # 保存文件
    $content | Out-File -FilePath ".\page$i.html" -Encoding utf8
    Write-Output "已创建 page$i.html"
}

Write-Output "所有页面创建完成！"