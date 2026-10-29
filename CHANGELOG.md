# Nhật ký phát hành

## [2.6.0] — 2026-10-29

- Bổ sung giao diện Server Control Center, Spotlight onboarding, kiểm tra nhiều host và tự khóa khi không hoạt động từ frontend mới.
- Giữ luồng SSO trực tiếp, quản lý license, SSH/SFTP và Cloud hiện có.
- Sửa selector CSS Spotlight gây lỗi minify khi build Vite.
- Dùng phiên bản trong package.json để tạo phiên bản/build number hiển thị trong frontend.
- Bỏ thông báo phát hành mẫu, link tải giả và checksum minh họa; fallback chuyển về trang Releases chính thức.
- Bổ sung pipeline private để tạo Setup/Portable Windows, DMG/ZIP macOS theo kiến trúc và AppImage/DEB Linux.
- Chỉ công khai release khi đủ 8 bộ cài. Giữ nguyên các release trước đó.

Phạm vi kiểm tra: frontend build và các công cụ chuẩn bị/phát hành được kiểm tra riêng. Phần Rust gốc được lấy tại máy người phát hành, nên phải kiểm tra qua workflow và chạy thử trên từng hệ điều hành trước khi khẳng định mọi tính năng native hoạt động.

---

# Nhật ký Phát hành (Changelog)

## [2.5.0] — 2026-10-29

### Bộ cài Windows x64
- Đã build bộ cài NSIS: `viTerm_2.5.0_x64-setup.exe`.
- Đã build bộ cài MSI: `viTerm_2.5.0_x64_en-US.msi`.
- macOS/Linux chưa có bộ cài được cung cấp trong đợt phát hành này.

### Tài khoản, license và Cloud
- Chuyển sang đăng nhập trực tiếp CM Studio SSO; bỏ popup SSO, giữ 2FA/OTP.
- Khóa/gia hạn license áp dụng khi đăng nhập lại.
- Sửa xử lý hạn license và các lượt kích hoạt đã ghi nhận bị lệch hạn; không trừ thêm lượt khi nhập lại key đã kích hoạt.
- Bỏ nút Sync thủ công, giữ lưu host cloud và tải danh sách lúc đăng nhập.
- Sửa câu INSERT VPS cloud bị thiếu giá trị `favorite`.

### Phạm vi xác minh
- Người phát hành xác nhận đã tạo được hai bộ cài Windows. Chưa có tệp MSI/EXE trong gói Showcase để xác minh hash hoặc nội dung bộ cài.
- Các mục sửa lỗi mô tả bản cập nhật đã cung cấp; cần xác nhận bộ cài phát hành được build từ đúng mã nguồn đó.

---

## Tổng quan tính năng 2.5.0 — 2026-10
### Điểm mới nổi bật
- **Giao diện Apple Studio (Sequoia Dark & Keynote Light)**: Tự động nhận diện chế độ Sáng/Tối và ngôn ngữ hệ điều hành (Tiếng Việt, Tiếng Anh, Tiếng Ả Rập RTL) ngay lần đầu mở ứng dụng.
- **AI Terminal Agent & Bot Studio**: Tích hợp 9 cổng API mẫu (Ollama Local, Gemini, OpenAI, OpenRouter, Groq, DeepSeek, LM Studio, vLLM, Claude) kèm tính năng **Tự động Quét Model 1-Click** và bộ lọc an toàn **Safe-Guard**.
- **Apple Finder Pro SFTP**: Hỗ trợ kéo thả 2 chiều (Drag & Drop), tải lên tệp lớn kèm thanh tiến trình, giải nén trực tiếp trên Server và trình sửa code **Live Code Editor (Auto-Save)**.
- **Thông báo Đa kênh**: Đẩy cảnh báo thời gian thực qua **Telegram Bot**, **Zalo Bot**, **Slack**, và **Discord**.
- **Terminal Thông minh**: Hỗ trợ `Ctrl + Click` mở liên kết thông minh, ghi nhớ thao tác Chuột phải và bảng lệnh nhanh `Ctrl + K`.
