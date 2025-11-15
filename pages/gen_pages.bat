@echo off

REM 简单的批量生成页面脚本
setlocal enabledelayedexpansion

REM 生成页面4到页面36
for /L %%i in (4,1,36) do (
    echo 创建页面 %%i...
    
    REM 计算一个简单的颜色值（基于页面号）
    set /a "hue=%%i*10"
    set "color1=hsl(!hue!, 100%, 70%)"
    set "color2=hsl(!hue!, 100%, 50%)"
    
    REM 使用echo创建文件，避免变量展开问题
    > page%%i.html echo ^<!DOCTYPE html^
    >> page%%i.html echo ^<html lang="zh-CN"^
    >> page%%i.html echo ^<head^
    >> page%%i.html echo     ^<meta charset="UTF-8"^
    >> page%%i.html echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^
    >> page%%i.html echo     ^<title^>页面 %%i - 创意小代码^</title^
    >> page%%i.html echo     ^<link rel="stylesheet" href="../styles.css"^
    >> page%%i.html echo     ^<style^
    >> page%%i.html echo         .content-container {
    >> page%%i.html echo             text-align: center;
    >> page%%i.html echo             padding: 40px 20px;
    >> page%%i.html echo             max-width: 800px;
    >> page%%i.html echo             margin: 0 auto;
    >> page%%i.html echo             background: rgba(255, 255, 255, 0.05);
    >> page%%i.html echo             border-radius: 20px;
    >> page%%i.html echo             border: 2px solid rgba(255, 255, 255, 0.1);
    >> page%%i.html echo             backdrop-filter: blur(10px);
    >> page%%i.html echo             box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
    >> page%%i.html echo             min-height: 60vh;
    >> page%%i.html echo             display: flex;
    >> page%%i.html echo             flex-direction: column;
    >> page%%i.html echo             justify-content: center;
    >> page%%i.html echo             align-items: center;
    >> page%%i.html echo         }
    >> page%%i.html echo         .page-title {
    >> page%%i.html echo             font-size: 2.5rem;
    >> page%%i.html echo             margin-bottom: 30px;
    >> page%%i.html echo             background: linear-gradient(135deg, !color1!, !color2!);
    >> page%%i.html echo             background-size: 200% auto;
    >> page%%i.html echo             background-clip: text;
    >> page%%i.html echo             -webkit-background-clip: text;
    >> page%%i.html echo             color: transparent;
    >> page%%i.html echo             text-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
    >> page%%i.html echo             animation: gradientShift 3s ease infinite;
    >> page%%i.html echo         }
    >> page%%i.html echo         .back-button {
    >> page%%i.html echo             padding: 15px 30px;
    >> page%%i.html echo             font-size: 18px;
    >> page%%i.html echo             font-weight: bold;
    >> page%%i.html echo             background: linear-gradient(135deg, !color1!, !color2!);
    >> page%%i.html echo             color: white;
    >> page%%i.html echo             border: none;
    >> page%%i.html echo             border-radius: 25px;
    >> page%%i.html echo             cursor: pointer;
    >> page%%i.html echo             transition: all 0.3s ease;
    >> page%%i.html echo             box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
    >> page%%i.html echo             text-decoration: none;
    >> page%%i.html echo             display: inline-block;
    >> page%%i.html echo         }
    >> page%%i.html echo     ^</style^
    >> page%%i.html echo ^</head^
    >> page%%i.html echo ^<body^
    >> page%%i.html echo     ^<div class="content-container"^
    >> page%%i.html echo         ^<h1 class="page-title"^>页面 %%i - 创意小代码^</h1^
    >> page%%i.html echo         ^<p^>欢迎来到专属页面 %%i！^</p^
    >> page%%i.html echo         ^<a href="../index.html" class="back-button"^>返回首页^</a^
    >> page%%i.html echo     ^</div^
    >> page%%i.html echo ^</body^
    >> page%%i.html echo ^</html^
)

echo 所有页面创建完成！
pause