<div align="center">
  <img src="assets/hero-banner.svg" alt="viTerm v2.8.0 — Chuong Minh Studio" width="100%" />

  <br />

  <p>
    <a href="https://github.com/chuongminhofficial/viTerm/releases/latest">
      <img src="https://img.shields.io/badge/Release-v2.8.0-10B981?style=for-the-badge" alt="Latest Release" />
    </a>
    <img src="https://img.shields.io/badge/Platform-Windows%20x64-0A84FF?style=for-the-badge" alt="Platform" />
    <img src="https://img.shields.io/badge/Engine-Tauri%20v2%20%2B%20Rust-F59E0B?style=for-the-badge" alt="Engine" />
    <img src="https://img.shields.io/badge/Signed-Chuong%20Minh%20Studio-6366F1?style=for-the-badge" alt="Signed" />
    <img src="https://img.shields.io/badge/Vault-AES--256--GCM-8B5CF6?style=for-the-badge" alt="Security" />
  </p>

  <p>
    <strong>Trình quản trị hạ tầng SSH, Dual-Pane SFTP, Terminal chia khung thông minh (1x1 / 1x2 / 1+2 / 2x2), Server Control Center &amp; AI DevOps Workspace</strong><br />
    <em>Thiết kế Casa Engine Square Mono | Hiệu năng Native Rust | Phát triển bởi <strong>Chuong Minh Studio</strong></em>
  </p>

  <p>
    <a href="#tai-xuong--cai-dat-v280"><b>Tải xuống v2.8.0</b></a> |
    <a href="#diem-nang-cap-lon-trong-v280"><b>Có gì mới</b></a> |
    <a href="#tinh-nang-cot-loi"><b>Tính năng</b></a> |
    <a href="#chu-ky-so--kiem-chung-toan-ven"><b>Chữ ký số &amp; SHA-256</b></a> |
    <a href="#english-summary"><b>English</b></a>
  </p>
</div>

---

> **Official Public Release & Showcase Repository**  
> Kho lưu trữ này là kênh phát hành chính thức các gói cài đặt đã biên dịch và ký số (`.exe`, `.msi`), chứng chỉ công khai (`.cer`), bảng mã băm `SHA256SUMS.txt`, tài liệu kỹ thuật và tiếp nhận báo lỗi (Issues). Mã nguồn gốc được lưu giữ riêng tư tại `chuongminhofficial/viTerm-source`.

---

## Tải xuống & Cài đặt (v2.8.0)

<div align="center">
  <a href="https://github.com/chuongminhofficial/viTerm/releases/tag/v2.8.0">
    <img src="https://img.shields.io/badge/TAI%20VITERM%20v2.8.0%20WINDOWS%20x64-10B981?style=for-the-badge" alt="Download viTerm v2.8.0" />
  </a>
  &nbsp;
  <a href="https://github.com/chuongminhofficial/viTerm/releases">
    <img src="https://img.shields.io/badge/TAT%20CA%20PHIEN%20BAN-1E293B?style=for-the-badge" alt="All Releases" />
  </a>
</div>

<br />

Toàn bộ bộ cài đặt Windows x64 v2.8.0 bên dưới đã được biên dịch trực tiếp, kiểm định và ký số **Authenticode SHA-256** bởi **Chuong Minh Studio** kèm dấu thời gian **DigiCert RFC3161**:

| Gói phát hành | Định dạng & Dung lượng | Đặc điểm & Chữ ký số | Phù hợp cho |
| :--- | :---: | :--- | :--- |
| [`viTerm_2.8.0_x64-setup.exe`](https://github.com/chuongminhofficial/viTerm/releases/download/v2.8.0/viTerm_2.8.0_x64-setup.exe) | NSIS Offline (~287.3 MB) | Nhúng sẵn WebView2 Offline Installer, tự nạp chứng chỉ `Chuong Minh Studio` vào CurrentUser | Cài offline, VM sạch, môi trường doanh nghiệp |
| [`viTerm_2.8.0_x64-setup-light.exe`](https://github.com/chuongminhofficial/viTerm/releases/download/v2.8.0/viTerm_2.8.0_x64-setup-light.exe) | NSIS Light (~4.82 MB) | Bộ cài siêu nhẹ (dùng WebView2 Bootstrapper), tự nạp chứng chỉ `Chuong Minh Studio` | Windows 10/11 đã có sẵn WebView2 (tải nhanh) |
| [`viTerm_2.8.0_x64_en-US.msi`](https://github.com/chuongminhofficial/viTerm/releases/download/v2.8.0/viTerm_2.8.0_x64_en-US.msi) | Windows MSI (~5.40 MB) | Gói cài đặt chuẩn Microsoft Windows Installer (WiX), hỗ trợ triển khai GPO / Silent `/qn` | Quản trị hệ thống, triển khai hàng loạt |
| [`viTerm_2.8.0_x64-portable.exe`](https://github.com/chuongminhofficial/viTerm/releases/download/v2.8.0/viTerm_2.8.0_x64-portable.exe) | Portable SFX (~2.98 MB) | Chạy trực tiếp không cần cài đặt (yêu cầu WebView2 Runtime trên máy) | USB, kiểm thử nhanh |
| [`viterm.exe`](https://github.com/chuongminhofficial/viTerm/releases/download/v2.8.0/viterm.exe) | Standalone PE (~5.40 MB) | File thực thi độc lập đã ký số `Chuong Minh Studio` | Chạy trực tiếp / đóng gói tùy chỉnh |
| [`ChuongMinhStudio-CodeSigning.cer`](https://github.com/chuongminhofficial/viTerm/releases/download/v2.8.0/ChuongMinhStudio-CodeSigning.cer) | X.509 Public Cert | Chứng chỉ công khai RSA-3072 (không chứa private key) | Nhập tin cậy cục bộ |
| [`SHA256SUMS.txt`](https://github.com/chuongminhofficial/viTerm/releases/download/v2.8.0/SHA256SUMS.txt) | Checksum | Danh sách mã băm SHA-256 đối chiếu toàn bộ tệp phát hành | Kiểm chứng toàn vẹn tệp |

> Ghi chú nền tảng: Phiên bản `v2.8.0` cung cấp đầy đủ 5 định dạng phát hành cho **Windows x64** được build và ký số trực tiếp. Các bản cài cho macOS và Linux từ bản trước vẫn có thể tải tại trang [Releases](https://github.com/chuongminhofficial/viTerm/releases).

---

## Điểm nâng cấp lớn trong v2.8.0

| Hạng mục | Cải tiến kỹ thuật chi tiết |
| :--- | :--- |
| **Khắc phục triệt để lỗi Thu nhỏ (Minimize) Windows** | Tích hợp Win32 FFI **Work-Area Fit** (`MONITORINFO.rc_work` + `WS_MINIMIZEBOX / WS_SYSMENU`) cho cửa sổ không viền, giúp thu nhỏ và bấm Taskbar mở lại ổn định 100%, không bị treo hay mất cửa sổ. |
| **Tự động vô hiệu hóa Telex / VNI trong Terminal** | Cơ chế bảo vệ **2 lớp**: Win32 `ImmAssociateContextEx` + tự động chuyển Keyboard Layout sang `EN` khi focus khung Terminal kết hợp bộ giải mã ASCII thời gian thực chặn bộ gõ ngoài (UniKey/EVKey). Gõ `clear`, `free`, `ufw`, `root`, `dd`, `awk` chính xác tuyệt đối. Có nút bật/tắt nhanh `EN · Tắt Telex/VNI` ngay trên thanh lệnh. |
| **Local-First & Ghi nhớ Theme/Ngôn ngữ vĩnh viễn** | Ưu tiên Tauri Persistent Store (`viterm_data.json`), giữ cố định chế độ Sáng/Tối và Ngôn ngữ qua mọi lần khởi động. Toàn bộ cấu hình và danh sách máy chủ lưu cục bộ 100%; chỉ tự động kéo Cloud Sync khi đăng nhập lần đầu trên máy mới. |
| **Chia khung thông minh (`1x1`, `1x2`, `1+2`, `2x2`)** | Bổ sung bố cục **3 khung (`1+2`)**, nút `+` thêm khung tự động kết nối và nút `-` / `x` đóng chính xác từng khung riêng lẻ mà giữ nguyên toàn bộ phiên SSH/Shell đang chạy ở các khung còn lại. |
| **Chuẩn xác 100% giao diện RTL (Tiếng Ả Rập)** | Sửa triệt để lỗi dư khoảng trống 216px lộ phần tử phía sau khi mở Terminal ở chế độ `dir="rtl"`, tự động căn phải Sidebar/Dock và giữ lưới ký tự `xterm.js` căn trái chuẩn xác. |
| **Hiệu năng & Bảo mật cấp hệ thống** | Bật **Content Security Policy (CSP)**, gia cố chống SSH Option Injection, dọn sạch 100% tiến trình ngầm và ghi đè `0x00` xóa khóa tạm khi thoát, cắt giảm hơn 55% dung lượng CSS và hơn 15 MB font thừa. |

---

## Tính năng cốt lõi

### 1. Multi-Tab & Smart Split-View Terminal (`xterm.js` 60fps)
- **Đa Tab + Đa khung**: Mở không giới hạn số Tab; mỗi Tab chia tối đa 4 khung (`1x1`, `1x2`, `1+2`, `2x2`) chạy đồng thời SSH VPS, Windows PowerShell, CMD hoặc Bash/WSL.
- **Native `SSH_ASKPASS` nội bộ**: Tự động xác thực Password/Passphrase và xử lý xung đột `known_hosts` ngầm, không bật cửa sổ CMD đen, không bị màn hình Terminal trống.
- **Broadcast Input & Smart Command Bar**: Gõ lệnh đồng loạt trên nhiều máy chủ; thanh nhập lệnh thông minh cố định ở đáy kèm nút nhảy nhanh đầu/cuối trang và chế độ `TUI Fit`.
- **Smart Link (`Ctrl + Click`) & Right-Click Memory**: Tự động nhận diện URL/IP trong Terminal và ghi nhớ thao tác chuột phải Copy/Paste.

### 2. Server Control Center (Quản trị Máy chủ Toàn diện)
- Giám sát thời gian thực từ máy chủ thật (không giả lập): **CPU Load, RAM, Disk (`df -hT`), Network Interfaces (`/proc/net/dev`), Listening Ports (`ss -tulpn`)**.
- **Process Manager**: Lọc tiến trình, gửi `SIGTERM (-15)` hoặc `SIGKILL (-9)` trực tiếp.
- **Systemd Services & Docker Studio**: Start/Stop/Restart/Reload dịch vụ, xem `journalctl` / `docker logs`, mở shell container và dọn cache Docker.
- **Firewall UFW, Fail2ban & Cronjobs**: Thêm/chặn cổng UFW, rà soát IP Brute-force SSH và quản lý Crontab trực quan.

### 3. Dual-Pane SFTP Studio & Live Code Editor
- Kéo và thả 2 chiều giữa **Local Machine <-> Remote Server** (và kéo trực tiếp từ Windows Explorer) với thanh tiến trình thời gian thực.
- **Live Code Editor (Auto-Save)**: Sửa tệp cấu hình/mã nguồn trực tiếp trên máy chủ, tự động đồng bộ khi ngừng gõ và dọn sạch bản tạm cục bộ.
- Giải nén trực tiếp (`.zip`, `.tar.gz`, `.tgz`, `.tar.bz2`, `.tar.xz`) và đổi tên ngay trên giao diện.

![Dual-Pane SFTP Studio](assets/screenshots/sftp-dual-pane.png)

### 4. AI Terminal Copilot & Thông báo Đa kênh
- Kết nối trực tiếp **Ollama Local** (miễn phí), **Gemini**, **OpenAI**, **OpenRouter**, **Groq**, **DeepSeek**, **LM Studio**, **vLLM**, và **Claude** với bộ quét Model tự động.
- **Safe-Guard** cảnh báo lệnh nguy hiểm (`rm -rf`, `mkfs`, `reboot`) và đẩy cảnh báo vận hành tức thì về **Telegram Bot**, **Zalo Bot**, **Slack**, **Discord**.

![AI Terminal Agent](assets/screenshots/ai-terminal-agent.png)

---

## Chữ ký số & Kiểm chứng toàn vẹn

Toàn bộ các gói cài đặt và tệp thực thi Windows của **viTerm v2.8.0** đều được ký số chuẩn **Authenticode SHA-256** kèm dấu thời gian **DigiCert RFC3161**:

| Thuộc tính | Giá trị xác thực |
| :--- | :--- |
| **Signer Subject** | `CN=Chuong Minh Studio, O=Chuong Minh Studio, C=VN` |
| **Thuật toán** | `RSA-3072 / SHA-256` + `DigiCert SHA256 RSA4096 Timestamp` |
| **Certificate Thumbprint** | `C189966102B56902F723943D0EA49E76B421D201` |
| **NSIS Trust Hook** | Tự động nạp chứng chỉ công khai vào `CurrentUser\Root` & `CurrentUser\TrustedPublisher` khi cài đặt và gỡ sạch khi Uninstall |

### Bảng mã băm SHA-256 chính thức (`v2.8.0`)

```text
8128B975D26CB217276C414F7EB73347792CDD9A4F57365315DCDC54AF4BAD94  viTerm_2.8.0_x64-setup.exe
0A44EBDA99E01ECDAFDD793BD9569414796A5599F23B84D0F600E92462E2C8DD  viTerm_2.8.0_x64-setup-light.exe
2EFEE4DE70E656CA9FB723CE5F590BFAA709CBD173EBD8A3FE4F78E3B5E7F0F2  viTerm_2.8.0_x64_en-US.msi
11E511648684EBDDF95EA4C0B98842105D765D2E5D3C979FEE063559458EB67C  viTerm_2.8.0_x64-portable.exe
B09558569130D37CAF24397FCB2E4B621A1BC9DBF22070D2C4DE6205BAF5BBCA  viterm.exe
E4A671C94B54C660F4EEA085D7DC08F8B98A0E67AF2C2A4766A426006AD41428  ChuongMinhStudio-CodeSigning.cer
```

### Lệnh kiểm tra trên Windows PowerShell

```powershell
Get-FileHash -Algorithm SHA256 .\viTerm_2.8.0_x64-setup.exe
Get-AuthenticodeSignature .\viTerm_2.8.0_x64-setup.exe | Format-List Status, SignerCertificate, TimeStamperCertificate
```

---

## English Summary

**viTerm v2.8.0** (*Chuong Minh Studio Edition*) is a high-performance **SSH, Dual-Pane SFTP, Smart Split-View Terminal, Server Control Center & AI DevOps Workspace** built on **Tauri v2 (Rust)** and **xterm.js**.

- **Zero-Glitch Windows UX**: Native Win32 Work-Area Fit for borderless windows ensures reliable taskbar minimize/restore on Windows 10/11.
- **Automatic Terminal IME / Telex / VNI Guard**: Dual-layer native Win32 IME suppression + real-time ASCII reconstruction prevents Vietnamese Telex/VNI input methods from corrupting shell commands.
- **Local-First Architecture**: Instant startup with persistent local theme/language/vault storage (`AES-256-GCM`); cloud sync automatically triggers only on new devices.
- **Smart Split Panes (`1x1`, `1x2`, `1+2`, `2x2`) & Full RTL Support**: Add or close individual panes smoothly without interrupting sibling sessions, with pixel-accurate Arabic RTL layout.
- **Complete Signed Windows Release Suite**: Available as Offline Setup EXE, Light Setup EXE, MSI Installer, Portable SFX EXE, and Standalone EXE — all Authenticode-signed by **Chuong Minh Studio** with DigiCert RFC3161 timestamps.

---

<div align="center">
  <p>Developed by <strong>Chuong Minh Studio</strong> | <a href="CHANGELOG.md">Changelog</a> | <a href="SECURITY.md">Security Policy</a> | <a href="https://github.com/chuongminhofficial/viTerm/issues">Report an Issue</a></p>
</div>
