[English](README.md) | [Tiếng Việt](README_vi.md)

<a id="readme-top"></a>

<div align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/amelia-wordmark-full-white.svg">
    <source media="(prefers-color-scheme: light)" srcset="assets/amelia-wordmark-full-black.svg">
    <img src="assets/amelia-wordmark.svg" alt="Amelia Linux" width="380">
  </picture>

  <h2 align="center">Amelia Linux</h2>

  <p align="center">
    <b>Hệ điều hành Linux hiện đại, tối giản và tinh tế dựa trên nền tảng Debian</b>
    <br />
    <a href="https://github.com/justlimorina/amelia-genesis"><strong>Khám phá kho mã nguồn »</strong></a>
    <br />
    <br />
    <a href="https://www.debian.org/">
      <img src="https://img.shields.io/badge/N%E1%BB%81n%20t%E1%BA%A3ng-Debian-A81D33?style=flat&logo=debian&logoColor=white" alt="Debian Base">
    </a>
    <a href="https://www.gnome.org/">
      <img src="https://img.shields.io/badge/Desktop-GNOME%20Core-4a86cf?style=flat&logo=gnome&logoColor=white" alt="GNOME Core">
    </a>
    <a href="https://flathub.org/">
      <img src="https://img.shields.io/badge/G%C3%B3i%20%E1%BB%A9ng%20d%E1%BB%A5ng-Flatpak%20%7C%20Flathub-4B32C3?style=flat&logo=flatpak&logoColor=white" alt="Flatpak">
    </a>
    <a href="https://nixos.org/">
      <img src="https://img.shields.io/badge/Nix-Flakes%20Ready-5277C3?style=flat&logo=nixos&logoColor=white" alt="Nix Flakes">
    </a>
    <a href="https://calamares.io/">
      <img src="https://img.shields.io/badge/Tr%C3%ACnh%20c%C3%A0i%20%C4%91%E1%BA%B7t-Calamares-5c3b88?style=flat" alt="Calamares">
    </a>
    <a href="LICENSE">
      <img src="https://img.shields.io/badge/Gi%E1%BA%A5y%20ph%C3%A9p-GPL--3.0-blue.svg?style=flat" alt="GPL-3.0 License">
    </a>
    <a href="https://github.com/justlimorina/amelia-genesis/stargazers">
      <img src="https://img.shields.io/github/stars/justlimorina/amelia-genesis?style=flat&color=yellow" alt="Stars">
    </a>
    <a href="https://github.com/justlimorina/amelia-genesis/network/members">
      <img src="https://img.shields.io/github/forks/justlimorina/amelia-genesis?style=flat&color=orange" alt="Forks">
    </a>
    <a href="https://github.com/justlimorina/amelia-genesis/issues">
      <img src="https://img.shields.io/github/issues/justlimorina/amelia-genesis?style=flat&color=red" alt="Issues">
    </a>
  </p>

  <p align="center">
    <a href="#-c%C3%A1c-phi%C3%AAn-b%E1%BA%A3n-editions"><strong>Xem các phiên bản »</strong></a>
    <br />
    <br />
    <a href="#-t%C3%ADnh-n%C4%83ng-n%E1%BB%95i-b%E1%BA%ADt">Tính năng</a>
    ·
    <a href="#-h%C6%B0%E1%BB%9Bng-d%E1%BA%ABn-t%E1%BB%B1-bi%C3%AAn-d%E1%BB%8Bch-build-iso">Tự build ISO</a>
    ·
    <a href="https://github.com/justlimorina/amelia-genesis/issues/new?template=bug_report.yml">Báo lỗi</a>
    ·
    <a href="https://github.com/justlimorina/amelia-genesis/issues/new?template=feature_request.yml">Góp ý tính năng</a>
  </p>
</div>

<br />

**Amelia Linux** là bản phân phối Linux được phát triển với triết lý kết hợp độ tin cậy vượt trội và khả năng tương thích phần cứng sâu rộng của Debian cùng giao diện máy tính GNOME tối giản, không bloatware và hệ sinh thái phần mềm hiện đại.

---

## 🌟 Các phiên bản (Editions)

Amelia Linux được phát triển và duy trì song song trên hai nhánh chuyên biệt:

| Đặc điểm | **Amelia Linux: Charlotte** (`main`) | **Amelia Linux: Nicole** (`nix`) |
| :--- | :--- | :--- |
| **Nhánh Git** | `main` | `nix` |
| **Hệ thống nền tảng** | Debian Testing (`testing`) | Debian Stable (`stable`) |
| **Môi trường Desktop** | GNOME tối giản (`gnome-core`) | GNOME tối giản (`gnome-core`) |
| **Quản lý phần mềm** | APT + Flatpak (kích hoạt Flathub sẵn) | **Nix Flakes** + Flatpak + APT |
| **Kho ứng dụng** | Nhánh Debian Testing + Flathub | Hơn 120.000 gói từ `nixpkgs` + Flathub |
| **Đối tượng phù hợp** | Người dùng muốn công nghệ mới nhất, trải nghiệm mượt mà | Lập trình viên, kỹ sư phần mềm, người cần môi trường tái lập (reproducible) |

---

## 🚀 Tính năng nổi bật

### 🖥️ Môi trường GNOME tối giản (Không Bloatware)
- Cài đặt tinh gọn thông qua gói `gnome-core` (thay vì toàn bộ bộ cài `gnome` cồng kềnh), loại bỏ các ứng dụng thừa và dịch vụ chạy ngầm không cần thiết.
- Tích hợp sẵn các tiện ích mở rộng cao cấp: **Dash to Panel**, **ArcMenu**, **AppIndicator**, và **Add to Desktop**.

### 💾 USB Live hỗ trợ lưu phiên (Persistence)
- Menu khởi động cung cấp tùy chọn chạy thử sạch hoặc **Amelia Linux Live with Persistence**.
- Toàn bộ dữ liệu, tệp tin tải về, mật khẩu Wi-Fi và các thiết lập cá nhân đều được lưu trữ trực tiếp trên phân vùng USB qua mỗi lần khởi động lại máy.

### 💿 Trình cài đặt Calamares đồ họa tùy biến
- Giao diện Calamares đồng bộ theo chủ đề Amelia.
- Tự động thiết lập cấu trúc phân vùng tiên tiến: Btrfs subvolumes (`/@`, `/@home`, `/@nix`), ext4, XFS và tùy chọn mã hóa ổ đĩa toàn diện bằng LUKS.

### 🛠️ Trung tâm hỗ trợ Amelia Welcome Hub
- Ứng dụng đồng hành viết bằng GTK4 và Libadwaita tự động mở khi vào hệ thống:
  - **Cài đặt 1-Click ứng dụng phổ biến**: Google Chrome, VS Code, Steam, Discord, Spotify, Heroic Games Launcher...
  - **Công cụ hệ thống**: Phím tắt tùy biến giao diện, điểm khôi phục nhanh Timeshift, phát hiện và cài đặt driver card đồ họa NVIDIA chính thức, khởi tạo phân vùng USB persistence.
  - **Nix Hub** *(trên bản Nicole)*: Giám sát trạng thái daemon, nâng cấp gói `nix profile upgrade`, dọn dẹp dung lượng store và danh mục lệnh Flakes thông dụng kèm nút sao chép nhanh.

### 📄 Tích hợp ONLYOFFICE theo nhu cầu
- Dễ dàng cài đặt trực tiếp từ GNOME Software hoặc Amelia Welcome mà không làm phình dung lượng tệp tin ISO ban đầu.
- Tự động gán làm trình xử lý mặc định cho các định dạng văn phòng `.docx`, `.xlsx`, `.pptx`.

### 🎨 Nhận diện thương hiệu tinh tế
- Theme bootloader GRUB (UEFI & BIOS) và Syslinux mang bản sắc màu tím thương hiệu Amelia.
- Theme khởi động Plymouth Spinner giữ nguyên logo phần cứng OEM của máy tính.
- Logo trong phần Giới thiệu (About) của Cài đặt hệ thống (GNOME Settings) tự động chuyển đổi thông minh giữa chế độ Sáng (Light) và Tối (Dark).

---

## 🛠️ Hướng dẫn tự biên dịch (Build ISO)

Amelia Linux được đóng gói chuẩn xác và có tính tái lập cao bằng bộ công cụ `live-build` chính thức của Debian.

### Yêu cầu môi trường

Chuẩn bị một máy tính hoặc máy ảo chạy Debian/Ubuntu có quyền `sudo`:

```bash
sudo apt update
sudo apt install -y live-build debootstrap git gcc
```

### Biên dịch bản Amelia Linux: Charlotte (`main`)

```bash
git clone https://github.com/justlimorina/amelia-genesis.git
cd amelia-genesis
git checkout main
chmod +x build.sh
./build.sh
```

### Biên dịch bản Amelia Linux: Nicole (`nix`)

```bash
git clone -b nix https://github.com/justlimorina/amelia-genesis.git amelia-with-nix
cd amelia-with-nix
chmod +x build.sh
./build.sh
```

Tệp `.hybrid.iso` tạo ra có thể ghi trực tiếp vào USB bằng `dd`, `Ventoy` hoặc Raspberry Pi Imager:

```bash
sudo dd if=amelia-linux-*.hybrid.iso of=/dev/sdX bs=4M status=progress conv=fsync
```

---

## 🤝 Đóng góp phát triển

Mọi sự đóng góp từ cộng đồng đều được hoan nghênh nhiệt liệt! Bạn có thể báo cáo lỗi, đề xuất tính năng mới hoặc gửi Pull Request.

1. Fork dự án trên GitHub
2. Tạo nhánh tính năng mới (`git checkout -b feature/TinhNangMoi`)
3. Commit thay đổi (`git commit -m 'Thêm tính năng mới'`)
4. Đẩy lên nhánh của bạn (`git push origin feature/TinhNangMoi`)
5. Mở một Pull Request

---

## 📄 Giấy phép

Các tập lệnh, tệp cấu hình và công cụ phát triển riêng của Amelia Linux (bao gồm Amelia Welcome) được phát hành theo [Giấy phép Công cộng GNU v3.0 (GPL-3.0)](LICENSE). Các gói phần mềm upstream của Debian, hình ảnh và thành phần từ bên thứ ba tuân theo giấy phép gốc tương ứng.

<p align="right">(<a href="#readme-top">lên đầu trang ↑</a>)</p>

