# Chính sách Bảo mật (Security Policy)

## Kiến trúc Bảo mật của viTerm
- **Mã hóa đầu-cuối (AES-256-GCM)**: Mọi thông tin kết nối máy chủ và khóa SSH được mã hóa bằng thuật toán AES-256-GCM trước khi lưu trữ.
- **Không lưu trữ khóa thô**: Khóa riêng tư tạm thời được ghi đè `0x00` và xóa sạch ngay sau khi thiết lập kênh truyền.
- **Bảo vệ mã nguồn**: Kho lưu trữ công khai này chỉ chứa tài liệu sản phẩm và bản phát hành chính thức, tuyệt đối không chứa khóa bí mật hay cấu hình máy chủ nội bộ.

## Báo cáo lỗ hổng bảo mật
Nếu bạn phát hiện bất kỳ vấn đề bảo mật nào, vui lòng tạo báo cáo riêng tư qua mục **Security Advisories** trên GitHub thay vì mở Issue công khai.
