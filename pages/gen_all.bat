@echo off
setlocal enabledelayedexpansion

REM 简单循环生成页面
for /l %%i in (1,1,36) do (
    echo 正在生成页面 %%i...
    REM 直接使用echo输出HTML内容
    echo ^<!DOCTYPE html^> > page%%i.html
    echo ^<html lang="zh-CN"^> >> page%%i.html
    echo ^<head^> >> page%%i.html
    echo     ^<meta charset="UTF-8"^> >> page%%i.html
    echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> page%%i.html
    echo     ^<title^>页面 %%i - 创意小代码^</title^> >> page%%i.html
    echo     ^<link rel="stylesheet" href="../styles.css"^> >> page%%i.html
    echo ^</head^> >> page%%i.html
    echo ^<body^> >> page%%i.html
    echo         ^<!-- 地面粒子效果容器 --^> >> page%%i.html
    echo         ^<div class="ground-dots"^>^</div^> >> page%%i.html
    echo         ^<div class="container"^> >> page%%i.html
    echo             ^<h1^>创意小代码^</h1^> >> page%%i.html
    echo             ^<div class="grid-container"^> >> page%%i.html
    echo                 ^<!-- 保留9个按钮 --^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 1^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 2^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 3^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 4^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 5^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 6^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 7^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 8^</button^> >> page%%i.html
    echo                 ^<button class="grid-button"^>按钮 9^</button^> >> page%%i.html
    echo             ^</div^> >> page%%i.html
    echo         ^</div^> >> page%%i.html
    echo     ^<script src="../script.js"^>^</script^> >> page%%i.html
    echo     ^<script^> >> page%%i.html
    echo         ^// 为CSS添加九宫格布局和按钮效果 >> page%%i.html
    echo         const style = document.createElement('style'); >> page%%i.html
    echo         style.textContent = ` >> page%%i.html
    echo             /* 九宫格布局样式 */ >> page%%i.html
    echo             .grid-container { >> page%%i.html
    echo                 display: grid; >> page%%i.html
    echo                 grid-template-columns: repeat(3, 1fr); >> page%%i.html
    echo                 grid-template-rows: repeat(3, 1fr); >> page%%i.html
    echo                 gap: 20px; >> page%%i.html
    echo                 width: 600px; >> page%%i.html
    echo                 height: 600px; >> page%%i.html
    echo                 position: absolute; >> page%%i.html
    echo                 top: 50%%; >> page%%i.html
    echo                 left: 50%%; >> page%%i.html
    echo                 transform: translate(-50%%, -50%%); >> page%%i.html
    echo             } >> page%%i.html
    echo             /* 按钮样式 */ >> page%%i.html
    echo             .grid-button { >> page%%i.html
    echo                 width: 100%%; >> page%%i.html
    echo                 height: 100%%; >> page%%i.html
    echo                 font-size: 18px; >> page%%i.html
    echo                 padding: 20px; >> page%%i.html
    echo                 margin: 0; >> page%%i.html
    echo                 border: none; >> page%%i.html
    echo                 background: linear-gradient(135deg, #6495ff, #4169e1); >> page%%i.html
    echo                 color: white; >> page%%i.html
    echo                 border-radius: 8px; >> page%%i.html
    echo                 cursor: pointer; >> page%%i.html
    echo                 transition: all 0.3s ease; >> page%%i.html
    echo                 display: flex; >> page%%i.html
    echo                 align-items: center; >> page%%i.html
    echo                 justify-content: center; >> page%%i.html
    echo                 box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); >> page%%i.html
    echo             } >> page%%i.html
    echo             /* 按钮悬停时的光晕效果 */ >> page%%i.html
    echo             .grid-button:hover { >> page%%i.html
    echo                 box-shadow: 0 0 15px 5px rgba(100, 149, 255, 0.7); >> page%%i.html
    echo                 transform: translateY(-2px); >> page%%i.html
    echo             } >> page%%i.html
    echo             /* 按钮点击时的下沉效果 */ >> page%%i.html
    echo             .grid-button:active { >> page%%i.html
    echo                 transform: translateY(0); >> page%%i.html
    echo                 box-shadow: 0 0 10px 3px rgba(100, 149, 255, 0.5); >> page%%i.html
    echo             } >> page%%i.html
    echo             /* 光晕动画效果 */ >> page%%i.html
    echo             @keyframes pulse { >> page%%i.html
    echo                 0%% { >> page%%i.html
    echo                     box-shadow: 0 0 15px 5px rgba(100, 149, 255, 0.7); >> page%%i.html
    echo                 } >> page%%i.html
    echo                 50%% { >> page%%i.html
    echo                     box-shadow: 0 0 20px 8px rgba(100, 149, 255, 0.9); >> page%%i.html
    echo                 } >> page%%i.html
    echo                 100%% { >> page%%i.html
    echo                     box-shadow: 0 0 15px 5px rgba(100, 149, 255, 0.7); >> page%%i.html
    echo                 } >> page%%i.html
    echo             } >> page%%i.html
    echo             /* 点击按钮后显示的光晕动画 */ >> page%%i.html
    echo             .pulse-animation { >> page%%i.html
    echo                 animation: pulse 0.8s ease-in-out; >> page%%i.html
    echo             } >> page%%i.html
    echo         `; >> page%%i.html
    echo         document.head.appendChild(style); >> page%%i.html
    echo     ^</script^> >> page%%i.html
    echo ^</body^> >> page%%i.html
    echo ^</html^> >> page%%i.html
)

echo 所有页面生成完成！
