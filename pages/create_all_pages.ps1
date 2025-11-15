# 为所有36个按钮创建专属跳转页面的PowerShell脚本

# 定义不同的颜色渐变方案
$gradientColors = @(
    @('rgba(100, 255, 218, 0.8)', 'rgba(50, 180, 150, 0.8)'),  # 页面1：青绿色
    @('rgba(100, 149, 255, 0.8)', 'rgba(65, 105, 225, 0.8)'), # 页面2：蓝色
    @('rgba(150, 100, 255, 0.8)', 'rgba(128, 0, 128, 0.8)'),  # 页面3：紫色
    @('rgba(255, 100, 200, 0.8)', 'rgba(255, 0, 127, 0.8)'),  # 页面4：粉色
    @('rgba(255, 165, 100, 0.8)', 'rgba(255, 140, 0, 0.8)'),  # 页面5：橙色
    @('rgba(100, 255, 100, 0.8)', 'rgba(50, 205, 50, 0.8)'),  # 页面6：绿色
    @('rgba(255, 255, 100, 0.8)', 'rgba(255, 215, 0, 0.8)'),  # 页面7：黄色
    @('rgba(100, 200, 255, 0.8)', 'rgba(70, 130, 180, 0.8)'), # 页面8：钢蓝色
    @('rgba(255, 100, 100, 0.8)', 'rgba(220, 20, 60, 0.8)'),  # 页面9：红色
    @('rgba(200, 100, 255, 0.8)', 'rgba(147, 112, 219, 0.8)'), # 页面10：紫罗兰色
    @('rgba(100, 255, 170, 0.8)', 'rgba(64, 224, 208, 0.8)'), # 页面11：绿松石色
    @('rgba(255, 100, 150, 0.8)', 'rgba(219, 112, 147, 0.8)'), # 页面12：紫红色
    @('rgba(150, 255, 100, 0.8)', 'rgba(144, 238, 144, 0.8)'), # 页面13：浅绿色
    @('rgba(255, 200, 100, 0.8)', 'rgba(255, 160, 122, 0.8)'), # 页面14：浅珊瑚色
    @('rgba(100, 100, 255, 0.8)', 'rgba(100, 149, 237, 0.8)'), # 页面15：矢车菊蓝
    @('rgba(200, 255, 100, 0.8)', 'rgba(173, 255, 47, 0.8)'),  # 页面16：黄绿色
    @('rgba(255, 100, 255, 0.8)', 'rgba(221, 160, 221, 0.8)'), # 页面17：紫红色
    @('rgba(100, 255, 255, 0.8)', 'rgba(175, 238, 238, 0.8)'), # 页面18：浅青色
    @('rgba(255, 255, 200, 0.8)', 'rgba(255, 255, 182, 0.8)'), # 页面19：浅黄色
    @('rgba(200, 100, 100, 0.8)', 'rgba(205, 92, 92, 0.8)'),  # 页面20：火砖色
    @('rgba(100, 200, 100, 0.8)', 'rgba(143, 188, 143, 0.8)'), # 页面21：暗橄榄绿
    @('rgba(200, 200, 255, 0.8)', 'rgba(188, 143, 143, 0.8)'), # 页面22：玫瑰棕色
    @('rgba(255, 200, 200, 0.8)', 'rgba(255, 182, 193, 0.8)'), # 页面23：浅粉色
    @('rgba(100, 100, 200, 0.8)', 'rgba(123, 104, 238, 0.8)'), # 页面24：中板岩蓝
    @('rgba(200, 255, 200, 0.8)', 'rgba(152, 251, 152, 0.8)'), # 页面25：浅绿色
    @('rgba(255, 200, 255, 0.8)', 'rgba(255, 192, 203, 0.8)'), # 页面26：粉色
    @('rgba(200, 255, 255, 0.8)', 'rgba(176, 224, 230, 0.8)'), # 页面27：浅钢蓝色
    @('rgba(255, 255, 100, 0.8)', 'rgba(240, 230, 140, 0.8)'), # 页面28：卡其色
    @('rgba(100, 255, 100, 0.8)', 'rgba(144, 238, 144, 0.8)'), # 页面29：浅绿色
    @('rgba(100, 100, 255, 0.8)', 'rgba(135, 206, 235, 0.8)'), # 页面30：天蓝色
    @('rgba(255, 100, 100, 0.8)', 'rgba(255, 99, 71, 0.8)'),   # 页面31：番茄色
    @('rgba(100, 255, 200, 0.8)', 'rgba(64, 224, 208, 0.8)'), # 页面32：青色
    @('rgba(255, 200, 100, 0.8)', 'rgba(255, 165, 0, 0.8)'),  # 页面33：橙色
    @('rgba(100, 200, 255, 0.8)', 'rgba(70, 130, 180, 0.8)'), # 页面34：钢蓝色
    @('rgba(200, 100, 255, 0.8)', 'rgba(147, 112, 219, 0.8)'), # 页面35：紫罗兰色
    @('rgba(255, 100, 200, 0.8)', 'rgba(255, 0, 127, 0.8)')   # 页面36：深粉色
)

# 生成36个页面
for ($i = 3; $i -le 36; $i++) {
    # 获取当前页面的颜色
    $colorIndex = ($i - 1) % $gradientColors.Count
    $color1 = $gradientColors[$colorIndex][0]
    $color2 = $gradientColors[$colorIndex][1]
    
    # 生成页面内容
    $pageContent = @"
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>页面 $i - 创意小代码</title>
    <link rel="stylesheet" href="../styles.css">
    <style>
        .content-container {
            text-align: center;
            padding: 40px 20px;
            max-width: 800px;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 20px;
            border: 2px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
            min-height: 60vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        
        .page-title {
            font-size: 2.5rem;
            margin-bottom: 30px;
            background: linear-gradient(135deg, $color1, $color2);
            background-size: 200% auto;
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
            animation: gradientShift 3s ease infinite;
        }
        
        .page-content {
            font-size: 1.2rem;
            margin-bottom: 40px;
            line-height: 1.8;
            color: rgba(255, 255, 255, 0.9);
        }
        
        .back-button {
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            background: linear-gradient(135deg, $color1, $color2);
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            text-decoration: none;
            display: inline-block;
        }
        
        .back-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
        }
        
        .back-button:active {
            transform: translateY(0);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
        
        .feature-box {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            padding: 25px;
            margin: 20px 0;
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease;
        }
        
        .feature-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            background: rgba(255, 255, 255, 0.08);
        }
        
        .feature-title {
            font-size: 1.5rem;
            margin-bottom: 15px;
            color: rgba(255, 255, 255, 0.9);
        }
        
        .feature-description {
            color: rgba(255, 255, 255, 0.8);
            line-height: 1.6;
        }
        
        .core-features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin: 30px 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="content-container">
        <h1 class="page-title">页面 $i - 创意小代码</h1>
        
        <div class="page-content">
            <p>欢迎来到专属页面 $i！这是一个精心设计的专属内容页面，与主页的第 $i 个按钮关联。</p>
            <p>在这里，你可以展示独特的内容、功能或信息，为用户提供更丰富的交互体验。</p>
        </div>
        
        <div class="core-features">
            <div class="feature-box">
                <h2 class="feature-title">专属功能 $i</h2>
                <p class="feature-description">这是页面 $i 的核心功能区域，可以添加独特的交互元素、信息展示或其他创意内容。</p>
            </div>
            
            <div class="feature-box">
                <h2 class="feature-title">定制内容</h2>
                <p class="feature-description">根据不同的主题和需求，可以在这里放置图片、视频、表单或其他多媒体元素。</p>
            </div>
        </div>
        
        <a href="../index.html" class="back-button">返回首页</a>
    </div>
    
    <script>
        // 添加页面加载动画
        document.addEventListener('DOMContentLoaded', () => {
            const contentContainer = document.querySelector('.content-container');
            contentContainer.style.opacity = '0';
            contentContainer.style.transform = 'translateY(20px)';
            contentContainer.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
            
            setTimeout(() => {
                contentContainer.style.opacity = '1';
                contentContainer.style.transform = 'translateY(0)';
            }, 100);
        });
    </script>
</body>
</html>
"@
    
    # 保存页面文件
    $pagePath = ".\page$i.html"
    $pageContent | Out-File -FilePath $pagePath -Encoding utf8
    Write-Host "已创建页面: $pagePath"
}

Write-Host "所有36个页面创建完成！"