// 当页面加载完成后执行
window.addEventListener('DOMContentLoaded', () => {
    // 获取所有按钮
    const buttons = document.querySelectorAll('.grid-button');
    
    // 移除鼠标跟踪和3D效果，简化为平面按钮
    
    // 为每个按钮添加点击事件监听器和科幻效果
    buttons.forEach((button, index) => {
        button.addEventListener('click', function(e) {
            // 创建波纹效果
            createRipple(e, this);
            
            // 显示按钮被点击的信息
            console.log(`按钮 ${index + 1} 被点击了`);
            
            // 添加粒子效果
            createParticles(e);
            
            // 保存当前设置
            const currentTransform = this.style.transform;
            const currentBackground = this.style.background;
            const currentBackgroundSize = this.style.backgroundSize;
            const currentAnimation = this.style.animation;
            const currentFilter = this.style.filter;
            
            // 暂时暂停水波纹动画，添加点击效果
            this.style.animation = 'none';
            this.style.filter = 'brightness(1)';
            this.style.transform = 'translateY(2px) scale(0.98)';
            this.style.boxShadow = '0 2px 8px rgba(0, 0, 0, 0.3), inset 0 2px 4px rgba(0, 0, 0, 0.2)';
            
            // 恢复所有效果并跳转到对应页面
        setTimeout(() => {
            this.style.transform = '';
            this.style.boxShadow = '';
            this.style.background = currentBackground;
            this.style.backgroundSize = currentBackgroundSize;
            this.style.filter = currentFilter;
            // 恢复水波纹动画
            this.style.animation = currentAnimation;
            
            // 跳转到对应页面
            const pageNum = index + 1;
            // 跳转到对应的页面文件
            const pageUrl = `pages/page${pageNum}.html`;
            console.log(`准备跳转到: ${pageUrl}`);
            
            // 创建一个简单的提示效果
            const statusMessage = document.createElement('div');
            statusMessage.textContent = `正在跳转到页面 ${pageNum}...`;
            statusMessage.style.cssText = `
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background: rgba(0, 0, 0, 0.8);
                color: white;
                padding: 15px 30px;
                border-radius: 25px;
                z-index: 9999;
                backdrop-filter: blur(5px);
                transition: all 0.3s ease;
            `;
            document.body.appendChild(statusMessage);
            
            // 延迟跳转，给用户一个提示
            setTimeout(() => {
                window.location.href = pageUrl;
            }, 800);
        }, 150);
        });
        
        // 添加键盘焦点样式（更科幻的发光效果）
        button.addEventListener('focus', function() {
            this.style.outline = 'none';
            this.style.boxShadow = '0 0 20px rgba(100, 255, 218, 0.8), 0 0 40px rgba(100, 255, 218, 0.4)';
            this.style.borderColor = 'rgba(255, 255, 255, 0.8)';
            
            // 添加焦点时的轻微缩放
            this.style.transform = 'scale(1.03)';
            this.style.boxShadow = '0 0 15px rgba(100, 255, 218, 0.4)';
        });
        
        button.addEventListener('blur', function() {
            // 恢复原始样式
            resetButtonStyles(this);
        });
        
        // 添加悬停时的轻微光晕
        button.addEventListener('mouseenter', function() {
            // 随机光晕颜色
            const glowColors = [
                'rgba(100, 150, 255, 0.6)',
                'rgba(150, 100, 255, 0.6)',
                'rgba(100, 255, 218, 0.6)',
                'rgba(255, 100, 200, 0.6)'
            ];
            const randomGlow = glowColors[Math.floor(Math.random() * glowColors.length)];
            this.style.boxShadow = `0 6px 20px rgba(0,0,0,0.3), 0 0 15px ${randomGlow}`;
        });
        
        button.addEventListener('mouseleave', function() {
            this.style.transform = '';
            this.style.boxShadow = '';
        });
    });
    
    // 为页面添加键盘事件，实现键盘导航
    document.addEventListener('keydown', (e) => {
        // 获取当前焦点元素
        const activeElement = document.activeElement;
        
        // 如果焦点在按钮上，处理方向键
        if (activeElement.classList.contains('grid-button')) {
            // 获取当前按钮的索引
            let currentIndex = Array.from(buttons).indexOf(activeElement);
            let newIndex = currentIndex;
            
            switch (e.key) {
                case 'ArrowUp':
                    // 向上移动6个位置
                    newIndex = Math.max(0, currentIndex - 6);
                    break;
                case 'ArrowDown':
                    // 向下移动6个位置
                    newIndex = Math.min(buttons.length - 1, currentIndex + 6);
                    break;
                case 'ArrowLeft':
                    // 向左移动1个位置
                    newIndex = Math.max(0, currentIndex - 1);
                    break;
                case 'ArrowRight':
                    // 向右移动1个位置
                    newIndex = Math.min(buttons.length - 1, currentIndex + 1);
                    break;
                case 'Home':
                    // 移到第一个按钮
                    newIndex = 0;
                    break;
                case 'End':
                    // 移到最后一个按钮
                    newIndex = buttons.length - 1;
                    break;
                case 'Enter':
                case ' ':
                    // 空格键也触发点击
                    activeElement.click();
                    return;
                default:
                    return; // 不处理其他键
            }
            
            // 移动焦点
            if (newIndex !== currentIndex) {
                e.preventDefault();
                // 重置原按钮样式
                resetButtonStyles(buttons[currentIndex]);
                // 移动焦点到新按钮
                buttons[newIndex].focus();
            }
        }
    });
    
    // 简化的键盘导航处理
    document.addEventListener('keydown', function(e) {
        // 仅处理方向键
        if (['ArrowUp', 'ArrowDown', 'ArrowLeft', 'ArrowRight', 'Tab'].includes(e.key)) {
            // 短暂延迟后处理，确保焦点已更新
            setTimeout(() => {
                const focusedButton = document.activeElement;
                
                // 如果焦点是按钮，添加聚焦效果
                if (focusedButton && focusedButton.classList.contains('grid-button')) {
                    // 添加简单的聚焦效果
                focusedButton.style.transform = 'scale(1.05)';
                focusedButton.style.boxShadow = '0 0 15px rgba(100, 255, 218, 0.4)';
                
                // 移除其他按钮的效果
                document.querySelectorAll('.grid-button').forEach(btn => {
                    if (btn !== focusedButton) {
                        btn.style.transform = '';
                        btn.style.boxShadow = '';
                    }
                });
                }
            }, 100);
        }
    });

    // 按钮失去焦点时恢复正常样式
    buttons.forEach(button => {
        button.addEventListener('blur', function() {
            this.style.transform = '';
            this.style.boxShadow = '';
        });
    });
    
    // 让第一个按钮获得焦点
    if (buttons.length > 0) {
        buttons[0].tabIndex = 0;
        buttons[0].focus(); // 自动获得焦点以启用键盘导航
    }
    
    console.log('6×6宫格按钮页面已加载完成');
    
    // 重置按钮样式的函数 - 与水波纹动画兼容
    function resetButtonStyles(button) {
        // 重置为基本样式 - 保留渐变效果和水波纹动画
            button.style.transform = '';
            button.style.boxShadow = '';
            button.style.borderWidth = '2px';
            button.style.borderColor = 'rgba(255, 255, 255, 0.2)';
            // 确保不清除背景渐变和动画
            button.style.background = '';
            button.style.backgroundSize = '';
            button.style.filter = '';
            button.style.animation = '';
    }
    
    // 创建波纹效果
    function createRipple(e, button) {
        const ripple = document.createElement('span');
        const rect = button.getBoundingClientRect();
        const size = Math.max(rect.width, rect.height);
        const x = e.clientX - rect.left - size / 2;
        const y = e.clientY - rect.top - size / 2;
        
        ripple.style.width = ripple.style.height = `${size}px`;
        ripple.style.left = `${x}px`;
        ripple.style.top = `${y}px`;
        ripple.classList.add('ripple');
        
        // 添加波纹到按钮
        button.appendChild(ripple);
        
        // 600ms后移除波纹
        setTimeout(() => {
            ripple.remove();
        }, 600);
    }
    
    // 创建粒子效果
    function createParticles(e) {
        const particlesCount = 12;
        const colors = ['#ffffff', '#64ffda', '#6495ff', '#9664ff'];
        
        for (let i = 0; i < particlesCount; i++) {
            const particle = document.createElement('div');
            particle.classList.add('particle');
            
            // 随机粒子大小
            const size = Math.random() * 8 + 2;
            particle.style.width = `${size}px`;
            particle.style.height = `${size}px`;
            
            // 随机颜色
            particle.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
            
            // 设置初始位置为点击位置
            particle.style.left = `${e.clientX}px`;
            particle.style.top = `${e.clientY}px`;
            
            // 随机速度和方向
            const speed = Math.random() * 4 + 2;
            const angle = (Math.PI * 2 * i) / particlesCount;
            const vx = Math.cos(angle) * speed;
            const vy = Math.sin(angle) * speed;
            
            // 添加到文档
            document.body.appendChild(particle);
            
            // 动画粒子
            animateParticle(particle, vx, vy);
        }
    }
    
    // 粒子动画
    function animateParticle(particle, vx, vy) {
        let x = parseFloat(particle.style.left);
        let y = parseFloat(particle.style.top);
        let alpha = 1;
        
        function update() {
            x += vx;
            y += vy;
            alpha -= 0.02;
            
            // 添加一些重力效果
            vy += 0.08;
            
            // 添加阻力
            vx *= 0.98;
            vy *= 0.98;
            
            particle.style.left = `${x}px`;
            particle.style.top = `${y}px`;
            particle.style.opacity = alpha;
            
            if (alpha > 0) {
                requestAnimationFrame(update);
            } else {
                // 移除粒子
                document.body.removeChild(particle);
            }
        }
        
        update();
    }
    
    // 为CSS添加粒子样式
    const style = document.createElement('style');
    style.textContent = `
        .ripple {
            position: absolute;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.5);
            transform: scale(0);
            animation: ripple 0.8s linear;
            pointer-events: none;
        }
        
        @keyframes ripple {
            to {
                transform: scale(4);
                opacity: 0;
            }
        }
        
        .particle {
            position: fixed;
            pointer-events: none;
            border-radius: 50%;
            z-index: 9999;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
        }
        
        /* 按钮基础样式 */
        .grid-button {
            transition: all 0.1s ease-out;
        }
    `;
    document.head.appendChild(style);
});