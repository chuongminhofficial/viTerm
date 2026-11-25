# viTerm v2.8.1 — Microsoft Store Silent Edition & Chuong Minh Studio Signed

Bản phát hành chuẩn hóa toàn diện quy trình đóng gói bộ cài đặt Windows **Silent 100% (Zero-UI)** đáp ứng chính sách **Microsoft Store Policy 10.2.9.2 (`Win32 products must install silently`)**, ánh xạ đầy đủ mã trả về Win32 tiêu chuẩn cho Partner Center, đồng thời giữ trọn vẹn toàn bộ cải tiến cốt lõi của dòng `v2.8.x`.

## Điểm mới nổi bật trong v2.8.1
- **Chuẩn hóa Microsoft Store Silent Edition (`10.2.9.2` Compliant)**:
  - Bổ sung 2 gói cài đặt chuyên biệt cho Microsoft Partner Center: `viTerm_2.8.1_x64-store-setup.exe` (~3.13 MB, Standalone Offline, có link `raw` trực tiếp) và `viTerm_2.8.1_x64-store-offline-setup.exe` (~287.33 MB, nhúng sẵn WebView2 Offline Runtime).
  - Bật mặc định `SilentInstall silent`, `SilentUninstall silent`, `AutoCloseWindow true` (`store-silent-hooks.nsh`): tự động cài đặt im lặng 100% dù không truyền tham số hay truyền `/S`, `/s`, không hiện hộp thoại xác nhận `certutil`, không bật trình tải mạng (no downloader stub).
- **Ánh xạ đầy đủ Mã trả về EXE tiêu chuẩn (`EXE return code values`)**:
  - Hỗ trợ kiểm tra Mutex chống cài trùng (`1618`), phát hiện phiên bản mới hơn đã cài đặt (`1638`), kiểm tra dung lượng ổ cứng (`112`), kiểm tra quyền ghi/chính sách bảo mật (`1625`), hủy cài đặt (`1602`), yêu cầu khởi động lại (`3010`), lỗi cài đặt nghiêm trọng (`1603`) và thành công (`0`).
  - Tài liệu đặc tả chính thức: [`INSTALLER_PARAMETERS.md`](https://github.com/chuongminhofficial/viTerm/blob/main/INSTALLER_PARAMETERS.md).
- **Kế thừa trọn vẹn nền tảng v2.8.x**:
  - Win32 Work-Area Fit sửa triệt để lỗi Minimize/Restore cửa sổ không viền trên Windows 10/11.
  - Tự động vô hiệu hóa Telex/VNI 2 lớp trong Terminal, chia khung thông minh (`1x1`, `1x2`, `1+2`, `2x2`), Local-First Sync (`AES-256-GCM`) và chuẩn hóa giao diện RTL.

## Thông tin Chữ ký số Windows (Authenticode SHA-256 + RFC3161 Timestamp)
- **Signer**: `CN=Chuong Minh Studio, O=Chuong Minh Studio, C=VN`
- **Thumbprint**: `63F0FAF511CD33F8CC7453E6FBC0F20D9126B875`
- **Timestamp**: `DigiCert SHA256 RSA4096 Timestamp Responder`

## Danh sách tệp phát hành Windows x64 (Đã biên dịch, ký số & kiểm thử Silent tự động)

| Tệp | Dung lượng | Mô tả |
| :--- | :---: | :--- |
| `viTerm_2.8.1_x64-store-setup.exe` | ~3.13 MB | **Microsoft Store Silent Standalone EXE** (Zero-UI, không cần switch, hỗ trợ link `raw` trực tiếp) |
| `viTerm_2.8.1_x64-store-offline-setup.exe` | ~287.33 MB | **Microsoft Store Silent Offline EXE** (Zero-UI, nhúng sẵn WebView2 Offline Runtime) |
| `viTerm_2.8.1_x64-setup.exe` | ~287.31 MB | Bộ cài đặt NSIS **Offline đầy đủ** (nhúng sẵn WebView2 Runtime) |
| `viTerm_2.8.1_x64-setup-light.exe` | ~4.78 MB | Bộ cài đặt NSIS **Siêu nhẹ** (hỗ trợ cả GUI và `/S` không chặn hộp thoại) |
| `viTerm_2.8.1_x64_en-US.msi` | ~5.43 MB | Gói cài đặt chuẩn **Microsoft Windows Installer (MSI)** |
| `viTerm_2.8.1_x64-portable.exe` | ~3.01 MB | Bản **Portable** chạy trực tiếp không cần cài đặt |
| `viterm.exe` | ~5.40 MB | File thực thi Windows x64 độc lập |
| `ChuongMinhStudio-CodeSigning.cer` | 1.1 KB | Chứng chỉ công khai RSA-3072 của Chuong Minh Studio |
| `SHA256SUMS.txt` | — | Bảng mã băm SHA-256 xác thực toàn vẹn toàn bộ tệp phát hành |

## Bảng mã băm SHA-256 (`v2.8.1`)

```text
40100C9B59441AA0C76D4AF4DF5352FF2429FEC28C76ABA8F97C4E24A26E0491  viTerm_2.8.1_x64-store-setup.exe
2D65FB3C7CA6EE8C7C06EC6A08D15A454CCB3344EAE62974177A91425AB958C1  viTerm_2.8.1_x64-store-offline-setup.exe
7EB9602B201D18358A78A52FDD7D299E1187F5C71ED55B163A13DC54B9E4C7A3  viTerm_2.8.1_x64-setup.exe
6D15663758BBA6AE5D6CFB38687D96C5A679F2A3E1132A68316208D83C07404F  viTerm_2.8.1_x64-setup-light.exe
E7836E11F31C8646AFEC9F435594A3F891C286D9A2A9C4FA62D6D30CB4BB9963  viTerm_2.8.1_x64_en-US.msi
466977340A8ECDB5352BE499497D216FEB46B49F8DB143659232406AB2DCB4BB  viTerm_2.8.1_x64-portable.exe
C98CB9E7F3E09F08A93A71586672D91614B5B47E6564E8B6DA1EAD37209B5226  viterm.exe
F8E67BFE4DC98A53DA55D741AE5B0A9C896AA62262E3FA477EAA7E7EE6E75DBD  ChuongMinhStudio-CodeSigning.cer
```
