# 页面内容数组
$titles = @(
    "创新设计模式",
    "前沿技术探索",
    "用户体验优化",
    "视觉效果创新",
    "交互逻辑重构",
    "性能优化方案",
    "响应式设计策略",
    "动画效果进阶",
    "色彩理论应用",
    "排版设计指南",
    "无障碍设计实践",
    "微交互设计",
    "数据可视化方案",
    "移动优先设计",
    "跨平台兼容性",
    "渐进式增强",
    "服务端渲染优化",
    "客户端缓存策略",
    "离线功能实现",
    "安全防护措施",
    "国际化与本地化",
    "可访问性标准",
    "代码分割策略",
    "懒加载优化",
    "资源预加载",
    "关键渲染路径优化",
    "字体加载策略",
    "图片优化技巧",
    "网络请求优化",
    "状态管理方案",
    "组件复用策略",
    "测试自动化",
    "监控与分析",
    "CI/CD实践",
    "文档编写规范",
    "团队协作流程"
)

$contents = @(
    "探索最新的设计模式和架构理念，提升代码质量和可维护性。通过合理的模式应用，可以显著提高开发效率并降低维护成本。",
    "深入研究前沿技术栈，包括但不限于WebAssembly、Serverless、边缘计算等新兴领域，为项目带来技术优势。",
    "以用户为中心的设计理念，通过用户研究、原型测试和持续优化，打造卓越的用户体验和交互流程。",
    "创新的视觉设计和动效，运用现代CSS和JavaScript技术，创造引人入胜的界面效果和流畅的过渡动画。",
    "重新思考和优化交互逻辑，简化用户操作路径，提升界面直观性和操作便捷性，减少学习成本。",
    "全面的性能优化方案，包括代码优化、资源压缩、缓存策略等，确保应用在各种设备上都能流畅运行。",
    "采用移动优先的响应式设计策略，确保应用在从手机到桌面的各种设备上都能提供一致且优质的体验。",
    "高级动画效果和交互设计，运用CSS动画、SVG动画和JavaScript动画，创造生动有趣的用户界面。",
    "深入理解色彩理论和色彩心理学，合理运用色彩搭配，提升品牌识别度和用户视觉体验。",
    "专业的排版设计原则和最佳实践，优化文本可读性和视觉层次，提升内容传达效果。",
    "无障碍设计实践指南，确保应用对所有用户，包括残障用户都能友好访问和使用。",
    "微交互设计的艺术，通过精心设计的小细节，提升用户体验和产品品质感。",
    "数据可视化的设计与实现，将复杂数据转化为直观易懂的图表和图形，帮助用户理解和分析数据。",
    "移动优先的设计理念和实现方法，确保在移动设备上的最佳体验，同时兼顾桌面端需求。",
    "跨平台兼容性解决方案，确保应用在不同浏览器和设备上都能正常运行，提供一致的用户体验。",
    "渐进式增强策略，从基础功能开始，逐步添加高级特性，确保所有用户都能访问核心功能。",
    "服务端渲染优化技术，提升首屏加载速度和SEO表现，改善用户体验和搜索引擎排名。",
    "客户端缓存策略和最佳实践，合理利用浏览器缓存和本地存储，减少重复请求，提升性能。",
    "离线功能的设计与实现，确保应用在网络不稳定或离线状态下仍能提供基本功能。",
    "全面的安全防护措施，包括XSS防护、CSRF防护、数据加密等，确保应用和用户数据的安全。",
    "国际化与本地化策略，支持多语言和多地区用户，提升产品的全球可用性。",
    "Web可访问性标准和实施指南，确保应用符合WCAG等国际标准，对所有用户友好。",
    "代码分割和按需加载策略，减少初始加载时间，提升用户体验和应用性能。",
    "懒加载优化技术，延迟加载非关键资源，提升首屏加载速度和整体性能。",
    "资源预加载策略，提前加载可能需要的资源，减少用户等待时间，提升交互流畅度。",
    "关键渲染路径优化技术，减少渲染阻塞，提升页面加载速度和用户感知性能。",
    "字体加载优化策略，减少字体加载对页面渲染的影响，提升用户体验和视觉一致性。",
    "图片优化技巧和最佳实践，包括格式选择、压缩、响应式图片等，平衡视觉质量和加载性能。",
    "网络请求优化策略，减少请求数量、优化请求顺序、使用HTTP/2等，提升网络性能。",
    "状态管理方案和最佳实践，合理管理应用状态，提升代码可维护性和用户体验。",
    "组件复用策略和设计模式，提高代码复用率，减少重复开发，提升一致性和可维护性。",
    "测试自动化实践，包括单元测试、集成测试、端到端测试等，确保代码质量和功能稳定性。",
    "应用监控与性能分析方案，实时监控应用运行状态，及时发现和解决问题。",
    "CI/CD实践和最佳实践，自动化构建、测试和部署流程，提高开发效率和发布质量。",
    "技术文档编写规范和最佳实践，创建清晰、准确、易于维护的项目文档。",
    "团队协作流程和工具，优化开发流程，提高团队效率和项目质量。"
)

$featureSets = @(
    @("模块化设计架构", "组件化开发模式", "依赖注入管理"),
    @("最新API集成", "性能基准测试", "技术栈评估报告"),
    @("用户旅程映射", "用户测试反馈", "界面优化建议"),
    @("动画效果库", "过渡效果定制", "交互反馈设计"),
    @("用户流程图", "交互原型设计", "可用性测试"),
    @("代码性能分析", "资源优化建议", "加载速度提升"),
    @("断点设计策略", "设备适配方案", "响应式框架选择"),
    @("CSS动画技巧", "SVG动画实现", "JavaScript动画库"),
    @("品牌色彩系统", "色彩对比度优化", "情绪色彩应用"),
    @("字体层次结构", "行高行距优化", "响应式排版"),
    @("键盘导航支持", "屏幕阅读器兼容", "ARIA属性应用"),
    @("按钮反馈设计", "表单交互优化", "状态变化提示"),
    @("图表库选择", "数据可视化最佳实践", "交互式图表实现"),
    @("触摸友好设计", "手势支持实现", "移动性能优化"),
    @("浏览器兼容性测试", "跨平台开发框架", "渐进式Web应用"),
    @("基础功能实现", "高级特性增强", "降级方案设计"),
    @("SSR框架选择", "SEO优化策略", "首屏性能提升"),
    @("缓存策略设计", "本地存储应用", "离线数据同步"),
    @("Service Worker实现", "离线缓存策略", "背景同步功能"),
    @("数据验证机制", "输入净化处理", "安全头部配置"),
    @("i18n框架选择", "多语言内容管理", "地区特定适配"),
    @("WCAG标准合规", "可访问性审计", "用户体验测试"),
    @("动态导入实现", "路由级代码分割", "组件懒加载"),
    @("图片懒加载", "资源优先级设置", "关键资源预加载"),
    @("Link预加载", "DNS预解析", "资源提示优化"),
    @("减少渲染阻塞", "关键CSS提取", "JavaScript执行优化"),
    @("字体显示策略", "Web字体优化", "字体子集化"),
    @("WebP/AVIF格式应用", "响应式图片实现", "图片CDN加速"),
    @("请求合并优化", "HTTP缓存策略", "API响应压缩"),
    @("状态管理库选择", "数据流设计", "持久化策略"),
    @("组件设计系统", "共享组件库", "样式隔离方案"),
    @("测试覆盖率目标", "自动化测试流程", "CI集成策略"),
    @("性能监控工具", "错误跟踪系统", "用户体验分析"),
    @("自动化部署流程", "环境管理策略", "回滚机制设计"),
    @("文档结构规范", "API文档自动化", "开发指南维护"),
    @("Git工作流设计", "代码审查流程", "协作工具集成")
)

# 颜色数组
$colors = @("64ffda", "6495ff", "9664ff", "ff64aa", "ff9564", "64ff95", "da64ff", "ffda64", "64daff", "ff6464", "95ff64", "6464ff")
$secondColors = @("40e0d0", "4169e1", "7b68ee", "ff69b4", "ffa500", "32cd32", "9370db", "ffd700", "4682b4", "ff6347", "7cfc00", "483d8b")

# 循环创建页面（从2开始，因为page1已创建）
for ($i=2; $i -le 36; $i++) {
    $title = $titles[$i-1]
    $content = $contents[$i-1]
    $features = $featureSets[$i-1]
    $colorIndex = ($i - 1) % 12
    $color = $colors[$colorIndex]
    $secondColor = $secondColors[$colorIndex]
    
    # 创建功能列表HTML
    $featureList = ""
    foreach ($feature in $features) {
        $featureList += "<li style=\"margin: 10px 0; color: rgba(255, 255, 255, 0.8);\">$feature</li>
                    "
    }
    
    # 创建HTML内容
    $htmlContent = @"
<!DOCTYPE html>
<html lang=\"zh-CN\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>页面 $i - 创意小代码</title>
    <link rel=\"stylesheet\" href=\"../styles.css\">
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
            background: linear-gradient(135deg, #$color, #$secondColor);
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
            background: linear-gradient(135deg, rgba(100, 255, 218, 0.8), rgba(50, 180, 150, 0.8));
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(100, 255, 218, 0.4);
            backdrop-filter: blur(5px);
        }
        
        .back-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(100, 255, 218, 0.6), 0 0 20px rgba(100, 255, 218, 0.3);
            background: linear-gradient(135deg, rgba(100, 255, 218, 0.9), rgba(50, 180, 150, 0.9));
        }
        
        .back-button:active {
            transform: translateY(1px);
            box-shadow: 0 2px 10px rgba(100, 255, 218, 0.4);
        }
        
        .feature-box {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            padding: 25px;
            margin: 20px 0;
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease;
            width: 100%;
        }
        
        .feature-box:hover {
            transform: scale(1.02);
            background: rgba(255, 255, 255, 0.08);
            border-color: rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>
    <!-- 地面粒子效果容器 -->
    <div class=\"ground-dots\"></div>
    
    <div class=\"container\">
        <div class=\"content-container\">
            <h1 class=\"page-title\">页面 $i</h1>
            
            <div class=\"feature-box\">
                <h2>$title</h2>
                <p class=\"page-content\">$content</p>
            </div>
            
            <div class=\"feature-box\">
                <h3>核心功能</h3>
                <ul style=\"text-align: left; max-width: 600px; margin: 0 auto;\">
                    $featureList
                </ul>
            </div>
            
            <button class=\"back-button\">返回首页</button>
        </div>
    </div>
    
    <script>
        // 返回首页功能
        document.querySelector('.back-button').addEventListener('click', function() {
            // 添加点击效果
            this.style.transform = 'scale(0.95)';
            setTimeout(() => {
                this.style.transform = '';
                window.location.href = '../index.html';
            }, 150);
        });
    </script>
</body>
</html>
"@
    
    # 写入文件
    $filePath = "page$i.html"
    Set-Content -Path $filePath -Value $htmlContent -Encoding UTF8
    Write-Output "创建页面: $filePath"
}

Write-Output "所有页面创建完成!"