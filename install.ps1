# AWF Installer for Windows (PowerShell)
# Supports: Per-Project & Global installation

param(
    [switch]$Global
)

$RepoUrl = "https://raw.githubusercontent.com/TUAN130294/awf/main/workflows"
$Workflows = @(
    "plan.md", "code.md", "visualize.md", "deploy.md", 
    "debug.md", "refactor.md", "test.md", "run.md", 
    "init.md", "recap.md", "rollback.md", "save_brain.md", 
    "audit.md", "cloudflare-tunnel.md", "README.md"
)

# Determine target directory
if ($Global) {
    $TargetDir = "$env:USERPROFILE\.agent\workflows"
    Write-Host "🌍 Chế độ GLOBAL: Cài vào $TargetDir" -ForegroundColor Cyan
} else {
    $TargetDir = ".agent\workflows"
    Write-Host "📁 Chế độ PROJECT: Cài vào thư mục hiện tại" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "🚀 Đang cài đặt Antigravity Workflow Framework (AWF)..." -ForegroundColor Yellow
Write-Host ""

# Create directory
if (-not (Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
    Write-Host "📂 Đã tạo thư mục: $TargetDir" -ForegroundColor Green
}

# Download files
$success = 0
$failed = 0
foreach ($wf in $Workflows) {
    try {
        $url = "$RepoUrl/$wf"
        $output = "$TargetDir\$wf"
        Invoke-WebRequest -Uri $url -OutFile $output -ErrorAction Stop
        Write-Host "   ✅ $wf" -ForegroundColor Green
        $success++
    } catch {
        Write-Host "   ❌ $wf (Lỗi tải)" -ForegroundColor Red
        $failed++
    }
}

Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor DarkGray
Write-Host "🎉 Hoàn tất! Đã cài $success/$($Workflows.Count) workflows." -ForegroundColor Yellow

if ($Global) {
    Write-Host ""
    Write-Host "📌 LƯU Ý: Đây là cài đặt Global." -ForegroundColor Cyan
    Write-Host "   Antigravity sẽ tự động nhận diện nếu support global workflows." -ForegroundColor DarkGray
    Write-Host "   Nếu không, hãy chạy lệnh sau trong mỗi project mới:" -ForegroundColor DarkGray
    Write-Host ""
    Write-Host "   iex (irm https://raw.githubusercontent.com/TUAN130294/awf/main/install.ps1)" -ForegroundColor White
} else {
    Write-Host ""
    Write-Host "👉 Restart Antigravity/IDE để nhận diện lệnh mới." -ForegroundColor Cyan
    Write-Host "👉 Gõ '/' trong chat để thấy các siêu lệnh!" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "📖 Hướng dẫn chi tiết: https://tuan130294.github.io/awsweb" -ForegroundColor DarkGray
Write-Host ""
