@echo off

REM 循环生成1-36号页面
for /l %%i in (1,1,36) do (
    echo 创建页面 %%i...
    
    REM 创建基本HTML结构
    echo ^<!DOCTYPE html^> > page%%i.html
    echo ^<html lang="zh-CN"^> >> page%%i.html
    echo ^<head^> >> page%%i.html
    echo     ^<meta charset="UTF-8"^> >> page%%i.html
    echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> page%%i.html
    echo     ^<title^>页面 %%i - 创意小代码^</title^> >> page%%i.html
    echo     ^<link rel="stylesheet" href="../styles.css"^> >> page%%i.html
    echo ^</head^> >> page%%i.html
    echo ^<body^> >> page%%i.html
    
    REM 添加基本内容结构
    echo     ^<div class="container"^> >> page%%i.html
    echo         ^<h1^>创意小代码^</h1^> >> page%%i.html
    echo         ^<div class="grid-container"^> >> page%%i.html
    
    REM 添加9个按钮
    echo             ^<button class="grid-button"^>按钮 1^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 2^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 3^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 4^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 5^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 6^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 7^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 8^</button^> >> page%%i.html
    echo             ^<button class="grid-button"^>按钮 9^</button^> >> page%%i.html
    
    REM 关闭容器
    echo         ^</div^> >> page%%i.html
    echo     ^</div^> >> page%%i.html
    
    REM 添加脚本
    echo     ^<script src="../script.js"^>^</script^> >> page%%i.html
    echo ^</body^> >> page%%i.html
    echo ^</html^> >> page%%i.html
)

echo 所有页面创建完成！