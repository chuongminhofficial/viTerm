# Chuẩn bị phát hành v2.5.0

Gói này là repo Showcase công khai: tài liệu, ảnh và issue templates. Không chứa source frontend/backend/native hoặc các bộ cài trên máy Windows.

## Trước khi publish

1. Repo đích: https://github.com/chuongminhofficial/viTerm, nhánh mặc định: main. Giữ các tệp khác đang có trong repo.
2. Kiểm tra bộ cài được build từ phiên bản mã nguồn cuối cùng muốn phát hành. Chưa kiểm chứng được điều này chỉ từ tên tệp trên máy Windows.
3. Cập nhật README.md, CHANGELOG.md, SECURITY.md, .gitignore và thêm RELEASE_NOTES_v2.5.0.md.
4. Kiểm tra release/tag v2.5.0 đã tồn tại hay chưa. Nếu đã có, cập nhật đúng release đó; không tự ghi đè tài sản trùng tên khi chưa so sánh.
5. Chuẩn bị release ở dạng draft, dùng nội dung RELEASE_NOTES_v2.5.0.md, đính kèm đúng hai bộ cài. Chưa publish release nếu còn thiếu tài sản.
6. Hai tệp người phát hành xác nhận đã build:
   - D:\App\viTerm\src-tauri\target\release\bundle\msi\viTerm_2.5.0_x64_en-US.msi
   - D:\App\viTerm\src-tauri\target\release\bundle\nsis\viTerm_2.5.0_x64-setup.exe
7. Lấy SHA-256 từ chính các tệp bộ cài, không tự tạo giá trị hash minh họa. Có thể đính kèm SHA256SUMS.txt cùng release.

Gói Showcase đã chuẩn bị chưa đồng nghĩa repo GitHub hoặc release đã được cập nhật. Cần URL repo và quyền truy cập GitHub; muốn tải bộ cài lên release cần có bytes của hai tệp, không chỉ đường dẫn Windows.
