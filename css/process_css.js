const fs = require('fs');
const path = require('path');

function processCssFile(filePath) {
    let content = fs.readFileSync(filePath, 'utf8');
    let output = '';
    let mediaBlocks = [];
    
    let i = 0;
    while (i < content.length) {
        // Look for @media
        const mediaMatch = content.indexOf('@media', i);
        if (mediaMatch === -1) {
            output += content.slice(i);
            break;
        }
        
        output += content.slice(i, mediaMatch);
        
        // Find the opening brace
        let openBraceIndex = content.indexOf('{', mediaMatch);
        if (openBraceIndex === -1) break; // formatting error
        
        // Find the corresponding closing brace
        let braceCount = 1;
        let j = openBraceIndex + 1;
        while (j < content.length && braceCount > 0) {
            if (content[j] === '{') braceCount++;
            else if (content[j] === '}') braceCount--;
            j++;
        }
        
        const block = content.slice(mediaMatch, j);
        mediaBlocks.push(block);
        
        i = j;
    }
    
    if (mediaBlocks.length > 0) {
        // Output file logic: normal content + \n\n/* @media queries */\n + mediaBlocks
        let newContent = output.trim() + '\n\n/* === @MEDIA KONTSULTAK === */\n' + mediaBlocks.join('\n\n') + '\n';
        fs.writeFileSync(filePath, newContent, 'utf8');
        console.log('Processed: ' + path.basename(filePath) + ' (' + mediaBlocks.length + ' blocks moved)');
    }
}

const dir = __dirname;
const files = fs.readdirSync(dir);
files.forEach(file => {
    if (file.endsWith('.css') && file !== 'normalize.css' && file !== 'process_css.js') {
        processCssFile(path.join(dir, file));
    }
});
