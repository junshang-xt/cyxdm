const fs = require('fs');
const path = require('path');

// 读取page2.html作为模板
const page2Content = fs.readFileSync('c:\\Users\\唐军\\Desktop\\文件夹\\网页设计\\新网页项目\\pages\\page2.html', 'utf8');

// 确保pages目录存在
const pagesDir = 'c:\\Users\\唐军\\Desktop\\文件夹\\网页设计\\新网页项目\\pages';
if (!fs.existsSync(pagesDir)) {
    fs.mkdirSync(pagesDir, { recursive: true });
}

// 生成1-36号页面
for (let i = 1; i <= 36; i++) {
    // 修改标题
    let pageContent = page2Content.replace(
        `<title>页面 2 - 创意小代码</title>`,
        `<title>页面 ${i} - 创意小代码</title>`
    );
    
    // 保存到对应页面文件
    const pagePath = path.join(pagesDir, `page${i}.html`);
    fs.writeFileSync(pagePath, pageContent, 'utf8');
    console.log(`已生成页面: page${i}.html`);
}

console.log('所有页面生成完成！');