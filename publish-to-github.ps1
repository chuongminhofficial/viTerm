# ============================================================================
# KỊCH BẢN KHỞI TẠO & ĐẨY REPO GIỚI THIỆU VITERM LÊN GITHUB (AN TOÀN 100%)
# Chỉ đẩy tài liệu giới thiệu & hình ảnh, tuyệt đối không đẩy mã nguồn hay .env
# ============================================================================
param(
    [string]$RepoUrl = ""
)

Write-Host "=== Khoi tao Git Repository cho viTerm Showcase ===" -ForegroundColor Cyan
git init
git branch -M main
git add README.md CHANGELOG.md SECURITY.md .gitignore assets/ .github/
git commit -m "docs: official viTerm v2.5 Enterprise public showcase"

if ($RepoUrl -ne "") {
    git remote remove origin 2>$null
    git remote add origin $RepoUrl
    Write-Host "Dang day len GitHub: $RepoUrl ..." -ForegroundColor Green
    git push -u origin main
} else {
    Write-Host ""
    Write-Host "Da dong goi commit an toan! De day len GitHub, hay chay:" -ForegroundColor Yellow
    Write-Host "  git remote add origin https://github.com/<ten-tai-khoan>/viTerm.git" -ForegroundColor White
    Write-Host "  git push -u origin main" -ForegroundColor White
}
