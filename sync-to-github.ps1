# 同步到 GitHub 脚本
# Sync to GitHub Script

Write-Host "开始同步到 GitHub..." -ForegroundColor Green
Write-Host "Starting sync to GitHub..." -ForegroundColor Green
Write-Host ""

# 检查是否有未提交的更改
$status = git status --porcelain
if ($status) {
    Write-Host "检测到文件更改，正在添加..." -ForegroundColor Yellow
    Write-Host "Changes detected, adding files..." -ForegroundColor Yellow
    
    # 添加所有更改的文件
    git add *.md .gitignore README.md
    
    # 提交更改
    $commitMessage = Read-Host "请输入提交信息 (Enter commit message): "
    if ([string]::IsNullOrWhiteSpace($commitMessage)) {
        $commitMessage = "Update course summaries"
    }
    
    git commit -m $commitMessage
    
    Write-Host "文件已提交" -ForegroundColor Green
    Write-Host "Files committed" -ForegroundColor Green
} else {
    Write-Host "没有检测到更改" -ForegroundColor Cyan
    Write-Host "No changes detected" -ForegroundColor Cyan
}

# 推送到 GitHub
Write-Host ""
Write-Host "正在推送到 GitHub..." -ForegroundColor Yellow
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow

try {
    git push origin main
    Write-Host ""
    Write-Host "✓ 同步成功！" -ForegroundColor Green
    Write-Host "✓ Sync successful!" -ForegroundColor Green
    Write-Host "查看仓库: https://github.com/lazyfly3/cityu-dg-software" -ForegroundColor Cyan
    Write-Host "View repository: https://github.com/lazyfly3/cityu-dg-software" -ForegroundColor Cyan
} catch {
    Write-Host ""
    Write-Host "✗ 推送失败，请检查网络连接和 GitHub 认证" -ForegroundColor Red
    Write-Host "✗ Push failed, please check network connection and GitHub authentication" -ForegroundColor Red
    Write-Host "错误信息: $_" -ForegroundColor Red
    Write-Host "Error: $_" -ForegroundColor Red
}

