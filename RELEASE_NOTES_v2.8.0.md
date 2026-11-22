# viTerm v2.8.0 — Chuong Minh Studio Signed Edition

Phiên bản nâng cấp toàn diện về độ ổn định Windows, trải nghiệm gõ lệnh Terminal (tự động vô hiệu hóa Telex/VNI), cơ chế Local-First Sync, bố cục RTL, chia khung thông minh, hiệu năng và bảo mật.

## Điểm mới nổi bật
- **Sửa triệt để lỗi Thu nhỏ (Minimize) không mở lại được ứng dụng** trên Windows 10/11 nhờ Win32 Work-Area Fit cho cửa sổ không viền.
- **Lưu cục bộ 100% Theme Sáng/Tối, Ngôn ngữ và Danh sách máy chủ**: Không bị reset khi mở lại; chỉ tự động đồng bộ Cloud lần đầu trên máy mới.
- **Tự động vô hiệu hóa Telex / VNI trong khung Terminal**: Chống lỗi gõ dấu tiếng Việt khi nhập lệnh (`clear`, `free`, `ufw`, `root`, `dd`...) kể cả khi bật UniKey/EVKey, kèm nút chuyển nhanh `EN · Tắt Telex/VNI`.
- **Thêm khung / Bỏ khung thông minh (`1x1`, `1x2`, `1+2`, `2x2`)**: Thêm khung tự động kết nối, đóng riêng từng khung mà không ảnh hưởng các khung đang chạy khác.
- **Sửa triệt để lỗi giao diện RTL (Tiếng Ả Rập)** bị dư khoảng trống lộ phần tử phía sau trong Terminal.
- **Tăng cường Hiệu năng, Bảo mật & UI/UX**: Bật CSP chặt chẽ, giảm hơn 55% dung lượng CSS và hơn 15 MB tài nguyên thừa, tinh chỉnh đồng bộ cả giao diện Sáng và Tối.

## Thông tin Chữ ký số Windows (Authenticode SHA-256 + RFC3161 Timestamp)
- **Signer**: `CN=Chuong Minh Studio, O=Chuong Minh Studio, C=VN`
- **Thumbprint**: `C189966102B56902F723943D0EA49E76B421D201`
- **Timestamp**: `DigiCert SHA256 RSA4096 Timestamp Responder`

## Danh sách tệp phát hành Windows x64 (Đã biên dịch & ký số đầy đủ)

| Tệp | Dung lượng | Mô tả |
| :--- | :---: | :--- |
| `viTerm_2.8.0_x64-setup.exe` | ~287.28 MB | Bộ cài đặt NSIS **Offline đầy đủ** (nhúng sẵn WebView2 Runtime) — Đã ký số `Chuong Minh Studio` |
| `viTerm_2.8.0_x64-setup-light.exe` | ~4.82 MB | Bộ cài đặt NSIS **Siêu nhẹ** (dùng WebView2 Bootstrapper) — Đã ký số `Chuong Minh Studio` |
| `viTerm_2.8.0_x64_en-US.msi` | ~5.40 MB | Gói cài đặt chuẩn **Microsoft Windows Installer (MSI)** — Đã ký số `Chuong Minh Studio` |
| `viTerm_2.8.0_x64-portable.exe` | ~2.98 MB | Bản **Portable** chạy trực tiếp không cần cài đặt — Đã ký số `Chuong Minh Studio` |
| `viterm.exe` | ~5.40 MB | File thực thi Windows x64 độc lập — Đã ký số `Chuong Minh Studio` |
| `ChuongMinhStudio-CodeSigning.cer` | 1.1 KB | Chứng chỉ công khai RSA-3072 của Chuong Minh Studio |
| `SHA256SUMS.txt` | — | Bảng mã băm SHA-256 xác thực toàn vẹn cho toàn bộ tệp phát hành |
| `CERTIFICATE-THUMBPRINT.txt` | — | Mã Thumbprint chứng chỉ đối chiếu |

## Bảng mã băm SHA-256

```text
8128B975D26CB217276C414F7EB73347792CDD9A4F57365315DCDC54AF4BAD94  viTerm_2.8.0_x64-setup.exe
0A44EBDA99E01ECDAFDD793BD9569414796A5599F23B84D0F600E92462E2C8DD  viTerm_2.8.0_x64-setup-light.exe
2EFEE4DE70E656CA9FB723CE5F590BFAA709CBD173EBD8A3FE4F78E3B5E7F0F2  viTerm_2.8.0_x64_en-US.msi
11E511648684EBDDF95EA4C0B98842105D765D2E5D3C979FEE063559458EB67C  viTerm_2.8.0_x64-portable.exe
B09558569130D37CAF24397FCB2E4B621A1BC9DBF22070D2C4DE6205BAF5BBCA  viterm.exe
E4A671C94B54C660F4EEA085D7DC08F8B98A0E67AF2C2A4766A426006AD41428  ChuongMinhStudio-CodeSigning.cer
```
