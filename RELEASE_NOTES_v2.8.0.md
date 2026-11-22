# 🚀 viTerm v2.8.0 — Chuong Minh Studio Signed Edition

Phiên bản nâng cấp toàn diện về **độ ổn định Windows, trải nghiệm gõ lệnh Terminal (chặn Telex/VNI), Local-First Sync, hỗ trợ RTL, chia khung thông minh, hiệu năng & bảo mật**.

## ✨ Điểm mới nổi bật
- **🪟 Sửa triệt để lỗi Thu nhỏ (Minimize) không mở lại được ứng dụng** trên Windows 10/11 nhờ Win32 Work-Area Fit cho cửa sổ không viền.
- **💾 Lưu cục bộ 100% Theme Sáng/Tối, Ngôn ngữ & Danh sách máy chủ**: Không bị reset khi mở lại; chỉ tự động đồng bộ Cloud lần đầu trên máy mới.
- **⌨️ Tự động vô hiệu hóa Telex / VNI trong khung Terminal**: Chống lỗi gõ dấu tiếng Việt khi nhập lệnh (`clear`, `free`, `ufw`, `root`, `dd`...) kể cả khi bật UniKey/EVKey, kèm nút chuyển nhanh `EN · Tắt Telex/VNI`.
- **🧩 Thêm khung / Bỏ khung thông minh (`1×1`, `1×2`, `1+2`, `2×2`)**: Thêm khung tự động kết nối, đóng riêng từng khung mà không ảnh hưởng các khung đang chạy khác.
- **🌍 Sửa triệt để lỗi giao diện RTL (Tiếng Ả Rập)** bị dư khoảng trống lộ phần tử phía sau trong Terminal.
- **⚡ Tăng cường Hiệu năng, Bảo mật & UI/UX**: Bật CSP chặt chẽ, giảm >55% CSS & >15 MB tài nguyên thừa, chau chuốt toàn bộ thẻ, nút, thanh công cụ ở cả chế độ Sáng và Tối.

## 🔐 Thông tin Chữ ký số Windows (Authenticode SHA-256 + RFC3161 Timestamp)
- **Signer**: `CN=Chuong Minh Studio, O=Chuong Minh Studio, C=VN`
- **Thumbprint**: `C189966102B56902F723943D0EA49E76B421D201`
- **Timestamp**: `DigiCert SHA256 RSA4096 Timestamp Responder`

## 📦 Các tệp phát hành trong bản này
| Tệp | Mô tả |
| :--- | :--- |
| `viTerm_2.8.0_x64-setup.exe` | Bộ cài đặt Windows x64 **Offline đầy đủ** (nhúng sẵn WebView2 Runtime) — Đã ký số `Chuong Minh Studio` |
| `viTerm_2.8.0_x64-setup-light.exe` | Bộ cài đặt Windows x64 **Siêu nhẹ (~4.8 MB)** — Đã ký số `Chuong Minh Studio` |
| `viterm.exe` | File thực thi Windows x64 độc lập — Đã ký số `Chuong Minh Studio` |
| `ChuongMinhStudio-CodeSigning.cer` | Chứng chỉ công khai RSA-3072 của Chuong Minh Studio |
| `viTerm-macOS-2.8.0-arm64.dmg` / `.zip` | Bộ cài macOS Apple Silicon (M1–M4) *(tự động bổ sung từ GitHub Actions)* |
| `viTerm-macOS-2.8.0-x64.dmg` / `.zip` | Bộ cài macOS Intel *(tự động bổ sung từ GitHub Actions)* |
| `viTerm-Linux-2.8.0-x64.AppImage` / `.deb` | Bộ cài Linux x64 *(tự động bổ sung từ GitHub Actions)* |
| `SHA256SUMS.txt` | Mã băm SHA-256 xác thực toàn vẹn tệp |
