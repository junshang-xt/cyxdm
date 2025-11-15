@echo off
REM 此批处理文件将复制page2.html的内容到page4到page36.html
REM 使用方法：双击运行或在命令行中执行

set "templateFile=page2.html"

REM 检查模板文件是否存在
if not exist %templateFile% (
    echo 错误：找不到模板文件 %templateFile%
    pause
    exit /b 1
)

echo 开始复制模板到其他页面...

REM 循环创建page4到page36
for /l %%i in (4,1,36) do (
    echo 创建页面 %%i...
    REM 复制模板文件
    copy %templateFile% page%%i.html
    
    REM 使用PowerShell替换标题中的数字
    powershell -Command "(Get-Content page%%i.html) -replace '页面 2', '页面 %%i' | Set-Content page%%i.html"
)

echo 所有页面已创建完成！
echo 现在page1到page36都具有与page2相同的样式。
pause