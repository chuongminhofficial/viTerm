# Phát hành viTerm

- Repo này chỉ giữ tài liệu, ảnh, issue templates và bộ cài trên Releases.
- Source và workflow build nằm trong repo private `chuongminhofficial/viTerm-source`.
- Không đưa `frontend`, `src-tauri`, `private`, backend, dữ liệu người dùng hoặc token lên repo public.
- Pipeline tạo đủ 8 bộ cài rồi mới publish. Hash được tính từ file thực tế.
- Tag public trỏ tới commit tài liệu; source archives tự sinh của GitHub không chứa mã nguồn private.
- Nội dung và release cũ được giữ lại. Không force-push hoặc reset public khi cập nhật.
- Mục tiêu đa nền tảng không thay thế việc kiểm thử tính năng native trên từng hệ điều hành.
