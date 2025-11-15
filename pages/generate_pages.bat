@echo off
setlocal enabledelayedexpansion

REM 设置文件路径
set template_file="c:\Users\唐军\Desktop\文件夹\网页设计\新网页项目\pages\page2.html"
set output_dir="c:\Users\唐军\Desktop\文件夹\网页设计\新网页项目\pages"

REM 循环生成1-36号页面
for /l %%i in (1,1,36) do (
    echo 正在生成页面 %%i...
    REM 使用powershell进行文件内容替换
    powershell -Command "$content = Get-Content -Path %template_file% -Raw; $content = $content -replace '<title>页面 2 - 创意小代码</title>', '<title>页面 %%i - 创意小代码</title>'; Set-Content -Path '%output_dir%\page%%i.html' -Value $content -Encoding UTF8"
)

echo 所有页面生成完成！
pause