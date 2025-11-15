@echo off
REM 简单的页面复制脚本
REM 此脚本将page2.html复制到page4到page36.html

set "template=page2.html"

if not exist %template% (
    echo 错误：找不到模板文件 %template%
    pause
    exit
)

echo 开始复制模板文件...

REM 复制到page4-page36
for /l %%i in (4,1,36) do (
    copy %template% page%%i.html
    echo 已创建 page%%i.html
)

echo 复制完成！
echo 注意：所有页面标题仍为"页面 2"，可根据需要手动修改标题中的数字。
pause