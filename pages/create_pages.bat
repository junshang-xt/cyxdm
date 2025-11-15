@echo off

REM 批量创建页面4到页面36的批处理脚本

REM 定义颜色数组（简单的颜色方案）
set colors[1]=#ff64c8 #ff007f
set colors[2]=#ffa564 #ff8c00
set colors[3]=#64ff64 #32cd32
set colors[4]=#ffff64 #ffd700
set colors[5]=#64c8ff #4682b4
set colors[6]=#ff6464 #dc143c
set colors[7]=#c864ff #9370db
set colors[8]=#64ffaa #40e0d0
set colors[9]=#ff6496 #db7093
set colors[10]=#96ff64 #90ee90
set colors[11]=#ffc864 #ffa07a
set colors[12]=#6464ff #6495ed
set colors[13]=#c8ff64 #adff2f
set colors[14]=#ff64ff #dda0dd
set colors[15]=#64ffff #afeeee
set colors[16]=#ffffc8 #ffffb6
set colors[17]=#c86464 #cd5c5c
set colors[18]=#64c864 #8fbc8f
set colors[19]=#c8c8ff #bc8f8f
set colors[20]=#ffc8c8 #ffb6c1
set colors[21]=#6464c8 #7b68ee
set colors[22]=#c8ffc8 #98fb98
set colors[23]=#ffc8ff #ffc0cb
set colors[24]=#c8ffff #b0e0e6

REM 生成页面4到页面36
for /L %%i in (4,1,36) do (
    echo 创建页面 %%i...
    
    REM 计算使用哪个颜色方案
    set /a "colorIndex=(%%i-4)%%24+1"
    
    REM 获取颜色值
    for /f "tokens=2,3 delims= " %%a in ('echo !colors[!colorIndex!]!') do (
        set color1=%%a
        set color2=%%b
    )
    
    REM 创建HTML文件
    (echo ^<!DOCTYPE html^
    echo ^<html lang="zh-CN"^
    echo ^<head^
    echo     ^<meta charset="UTF-8"^
    echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^
    echo     ^<title^>页面 %%i - 创意小代码^</title^
    echo     ^<link rel="stylesheet" href="../styles.css"^
    echo     ^<style^
    echo         .content-container {
    echo             text-align: center;
    echo             padding: 40px 20px;
    echo             max-width: 800px;
    echo             margin: 0 auto;
    echo             background: rgba(255, 255, 255, 0.05);
    echo             border-radius: 20px;
    echo             border: 2px solid rgba(255, 255, 255, 0.1);
    echo             backdrop-filter: blur(10px);
    echo             box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
    echo             min-height: 60vh;
    echo             display: flex;
    echo             flex-direction: column;
    echo             justify-content: center;
    echo             align-items: center;
    echo         }
    echo         
    echo         .page-title {
    echo             font-size: 2.5rem;
    echo             margin-bottom: 30px;
    echo             background: linear-gradient(135deg, !color1!, !color2!);
    echo             background-size: 200% auto;
    echo             background-clip: text;
    echo             -webkit-background-clip: text;
    echo             color: transparent;
    echo             text-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
    echo             animation: gradientShift 3s ease infinite;
    echo         }
    echo         
    echo         .page-content {
    echo             font-size: 1.2rem;
    echo             margin-bottom: 40px;
    echo             line-height: 1.8;
    echo             color: rgba(255, 255, 255, 0.9);
    echo         }
    echo         
    echo         .back-button {
    echo             padding: 15px 30px;
    echo             font-size: 18px;
    echo             font-weight: bold;
    echo             background: linear-gradient(135deg, !color1!, !color2!);
    echo             color: white;
    echo             border: none;
    echo             border-radius: 25px;
    echo             cursor: pointer;
    echo             transition: all 0.3s ease;
    echo             box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
    echo             text-decoration: none;
    echo             display: inline-block;
    echo         }
    echo         
    echo         .back-button:hover {
    echo             transform: translateY(-3px);
    echo             box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
    echo         }
    echo     ^</style^
    echo ^</head^
    echo ^<body^
    echo     ^<div class="content-container"^
    echo         ^<h1 class="page-title"^>页面 %%i - 创意小代码^</h1^
    echo         
    echo         ^<div class="page-content"^
    echo             ^<p^>欢迎来到专属页面 %%i！^</p^
    echo             ^<p^>这是与主页第 %%i 个按钮关联的专属内容页面。^</p^
    echo         ^</div^
    echo         
    echo         ^<a href="../index.html" class="back-button"^>返回首页^</a^
    echo     ^</div^
    echo     
    echo     ^<script^
    echo         // 页面加载动画
    echo         document.addEventListener('DOMContentLoaded', () =^> {
    echo             const contentContainer = document.querySelector('.content-container');
    echo             contentContainer.style.opacity = '0';
    echo             contentContainer.style.transform = 'translateY(20px)';
    echo             contentContainer.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    echo             
    echo             setTimeout(() =^> {
    echo                 contentContainer.style.opacity = '1';
    echo                 contentContainer.style.transform = 'translateY(0)';
    echo             }, 100);
    echo         });
    echo     ^</script^
    echo ^</body^
    echo ^</html^
    ) > page%%i.html
)

echo 所有页面创建完成！
pause