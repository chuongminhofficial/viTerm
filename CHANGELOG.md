# Nhật ký Phát hành (Changelog)

## [2.8.1] — 2026-11-25 (Microsoft Store Silent Edition & Chuong Minh Studio Signed)

### Sửa lỗi Chứng nhận Microsoft Store (Policy 10.2.9.2) & Bộ cài Windows
- **Khắc phục triệt để lỗi `10.2.9.2 Security - Package Submissions (Win32 products must install silently)`**:
  - Bổ sung bộ cài chuyên dụng Microsoft Store (`viTerm_2.8.1_x64-store-setup.exe` và `viTerm_2.8.1_x64-store-offline-setup.exe`) tích hợp `SilentInstall silent`, `SilentUninstall silent`, `AutoCloseWindow true` (`src-tauri/windows/store-silent-hooks.nsh`), chạy **100% im lặng (Zero-UI)** ngay cả khi không truyền tham số dòng lệnh hoặc truyền `/S`, `/s`.
  - Loại bỏ hoàn toàn hộp thoại xác nhận `certutil.exe -user -addstore "Root"` chặn tiến trình cài đặt ngầm và đảm bảo chế độ cài đặt độc lập (Standalone Offline, không tải mạng khi setup).
  - Bổ sung `"silent": true` cho cấu hình `webviewInstallMode` trong `tauri.conf.json` và chặn hộp thoại `certutil` khi chạy `/S` ở bản cài đặt tiêu chuẩn (`selfsigned-hooks.nsh`).
- **Ánh xạ đầy đủ Mã trả về Win32 tiêu chuẩn (`EXE return code values`) cho Microsoft Partner Center**:
  - Hỗ trợ kiểm tra Mutex chống cài trùng tiến trình (`1618`), kiểm tra phiên bản mới hơn đã tồn tại (`1638`), kiểm tra dung lượng ổ đĩa (`112`), kiểm tra quyền ghi/chính sách bảo mật (`1625`), hủy cài đặt (`1602`), yêu cầu khởi động lại (`3010`), lỗi nghiêm trọng (`1603`) và thành công (`0`).
  - Xuất bản tài liệu chuẩn hóa mã trả về tại [`INSTALLER_PARAMETERS.md`](INSTALLER_PARAMETERS.md).

---

## [2.8.0] — 2026-11-22 (Chuong Minh Studio Signed Edition)

### Sửa lỗi & Cải tiến cốt lõi
- **Khắc phục triệt để lỗi Thu nhỏ (Minimize) không mở lại được trên Windows**: Bổ sung Win32 FFI Work-Area Fit (`MONITORINFO.rc_work` + `WS_MINIMIZEBOX / WS_MAXIMIZEBOX / WS_SYSMENU`) cho cửa sổ không viền `decorations: false` và lệnh `window_restore`.
- **Lưu cố định Theme Sáng/Tối & Ngôn ngữ**: Đảo ưu tiên đọc từ Tauri Persistent Store (`viterm_data.json`), khắc phục triệt để tình trạng reset về mặc định sau khi khởi động lại.
- **Cơ chế Local-First Cloud Sync**: Lưu toàn bộ máy chủ (Local + Cloud) và cấu hình cục bộ; chỉ tự động đồng bộ Cloud ở lần đăng nhập đầu tiên trên máy mới (thay vì sync lại sau mỗi lần mở app hay chuyển cửa sổ).
- **Sửa triệt để lỗi bố cục RTL (Tiếng Ả Rập)**: Khắc phục khoảng trống 216px lộ phần tử phía sau khi mở Terminal ở chế độ `dir="rtl"`, tự động đảo vị trí Terminal, Dock thu nhỏ, Drawer và giữ khung `xterm.js` căn trái `direction: ltr`.
- **Tự động vô hiệu hóa Telex / VNI trong khung Terminal**: Kết hợp lớp Win32 `set_terminal_ime_mode` (tắt IMM32 + tự chuyển Keyboard Layout sang EN khi focus Terminal) và lớp Anti-Telex/Anti-VNI thời gian thực chặn bộ gõ ngoài (UniKey/EVKey) phá câu lệnh. Kèm nút bật/tắt nhanh `EN · Tắt Telex/VNI`.
- **Thêm/Bỏ khung chia màn hình mượt mà & thông minh**: Hỗ trợ đủ 4 bố cục `1×1`, `1×2`, `1+2` (3 khung) và `2×2`; thêm nút `+` / `−` và nút đóng riêng từng khung chỉ giải phóng đúng khung đó mà giữ nguyên toàn bộ phiên SSH/Shell ở các khung còn lại.

### Hiệu năng, Bảo mật & Đóng gói
- Bật **Content Security Policy (CSP)** chặt chẽ trong Tauri v2, gia cố chống SSH Option Injection, dùng `rundll32.exe url.dll,FileProtocolHandler` mở URL an toàn và tự động dọn tiến trình/khóa tạm (`zeroize`) khi thoát.
- Cắt giảm >55% dung lượng CSS và >15 MB tài nguyên icon không sử dụng.
- Tinh chỉnh giao diện Casa Engine Square Mono (bo góc cân đối, độ tương phản Sáng/Tối sắc nét).
- Ký số Authenticode SHA-256 tự ký **Chuong Minh Studio** (`C189966102B56902F723943D0EA49E76B421D201`) kèm **DigiCert RFC3161 Timestamp** cho cả `viterm.exe`, NSIS plugins, uninstaller và bộ cài đặt (bản Offline đầy đủ & bản Light).

---

## [2.6.0] — 2026-10-29

- Bổ sung giao diện Server Control Center, Spotlight onboarding, kiểm tra nhiều host và tự khóa khi không hoạt động.
- Giữ luồng SSO trực tiếp, quản lý license, SSH/SFTP và Cloud hiện có.
- Bổ sung pipeline private để tạo Setup/Portable Windows, DMG/ZIP macOS theo kiến trúc và AppImage/DEB Linux.

---

## [2.5.0] — 2026-10-29

- Chuyển sang đăng nhập trực tiếp CM Studio SSO; giữ 2FA/OTP.
- Tích hợp AI Terminal Agent & Bot Studio (9 cổng API + tự động quét Model + Safe-Guard).
- Dual-Pane SFTP kéo thả 2 chiều, giải nén 1-Click và Live Code Editor Auto-Save.
- Trung tâm thông báo đa kênh (Telegram Bot, Zalo Bot, Slack, Discord).
