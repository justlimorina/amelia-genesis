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
    <b>A modern, minimal, and refined Linux distribution based on Debian</b>
    <br />
    <a href="https://github.com/justlimorina/amelia-genesis"><strong>Explore Repository »</strong></a>
    <br />
    <br />
    <a href="https://www.debian.org/">
      <img src="https://img.shields.io/badge/Base-Debian-A81D33?style=flat&logo=debian&logoColor=white" alt="Debian Base">
    </a>
    <a href="https://www.gnome.org/">
      <img src="https://img.shields.io/badge/Desktop-GNOME%20Core-4a86cf?style=flat&logo=gnome&logoColor=white" alt="GNOME Core">
    </a>
    <a href="https://flathub.org/">
      <img src="https://img.shields.io/badge/Packaging-Flatpak%20%7C%20Flathub-4B32C3?style=flat&logo=flatpak&logoColor=white" alt="Flatpak">
    </a>
    <a href="https://nixos.org/">
      <img src="https://img.shields.io/badge/Nix-Flakes%20Ready-5277C3?style=flat&logo=nixos&logoColor=white" alt="Nix Flakes">
    </a>
    <a href="https://calamares.io/">
      <img src="https://img.shields.io/badge/Installer-Calamares-5c3b88?style=flat" alt="Calamares">
    </a>
    <a href="LICENSE">
      <img src="https://img.shields.io/badge/License-GPL--3.0-blue.svg?style=flat" alt="GPL-3.0 License">
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
    <a href="#-editions"><strong>Choose an Edition »</strong></a>
    <br />
    <br />
    <a href="#-key-features">Features</a>
    ·
    <a href="#-building-from-source">Build ISO</a>
    ·
    <a href="https://github.com/justlimorina/amelia-genesis/issues/new?template=bug_report.yml">Report Bug</a>
    ·
    <a href="https://github.com/justlimorina/amelia-genesis/issues/new?template=feature_request.yml">Request Feature</a>
  </p>
</div>

<br />

**Amelia Linux** is a purpose-built Linux distribution designed to combine the rock-solid dependability and broad hardware compatibility of Debian with a modern, bloat-free GNOME desktop experience and first-class application ecosystems.

---

## 🌟 Editions

Amelia Linux is maintained across two parallel branches, catering to different workflow requirements:

| Feature | **Amelia Linux: Charlotte** (`main`) | **Amelia Linux: Nicole** (`nix`) |
| :--- | :--- | :--- |
| **Branch** | `main` | `nix` |
| **Base System** | Debian Testing (`testing`) | Debian Stable (`stable`) |
| **Desktop Environment** | Minimal GNOME (`gnome-core`) | Minimal GNOME (`gnome-core`) |
| **Package Management** | APT + Flatpak (Flathub out-of-the-box) | **Nix Flakes** + Flatpak + APT |
| **Software Repository** | Debian Testing stream + Flathub | 120,000+ packages via `nixpkgs` + Flathub |
| **Target Audience** | Users desiring cutting-edge packages and newer GNOME versions | Developers, power users, and engineers seeking reproducible environments |

---

## 🚀 Key Features

### 🖥️ Minimal GNOME Experience (Zero Bloatware)
- Installed exclusively via `gnome-core` rather than full `gnome` to eliminate background bloatware and unnecessary daemon overhead.
- Enhanced with refined extensions: **Dash to Panel**, **ArcMenu**, **AppIndicator**, and **Add to Desktop**.

### 💾 Live USB with Persistence
- Native bootloader entries for both a clean guest session and **Amelia Linux Live with Persistence**.
- Retain documents, custom configurations, Wi-Fi credentials, and packages across reboots directly on your USB drive.

### 💿 Calamares Graphical Installer
- Tailored Amelia theme and customized Calamares pipeline.
- Flexible partitioning: automatic Btrfs subvolumes (`/@`, `/@home`, `/@nix`), ext4, XFS, and full-disk LUKS encryption.

### 🛠️ Amelia Welcome Hub
- First-boot interactive companion application built with GTK4 and Libadwaita.
- **1-Click Popular App Installer**: Google Chrome, VS Code, Steam, Discord, Spotify, Heroic Games Launcher, and more.
- **System Tools & Maintenance**: Desktop customization shortcuts, Timeshift restore points, proprietary NVIDIA driver detector and installer, and USB persistence initializers.
- **Nix Hub** *(on Nicole edition)*: Daemon status indicators, 1-click `nix profile upgrade`, store garbage collection, and curated command snippets.

### 📄 On-Demand ONLYOFFICE Integration
- Discoverable in GNOME Software Center and Amelia Welcome without inflating ISO download size.
- Pre-configured MIME type associations for `.docx`, `.xlsx`, `.pptx`, and standard OpenDocument formats.

### 🎨 Refined Brand Identity
- Custom GRUB (UEFI & BIOS) and Syslinux boot themes.
- Plymouth Spinner theme preserving your computer manufacturer's OEM BGRT boot logo.
- Native GNOME Settings About panel logo supporting automatic Dark & Light mode switching.

---

## 🛠️ Building from Source

Amelia Linux images are built reproducibly using official Debian `live-build` tooling.

### Prerequisites

You need a Debian or Ubuntu environment with `live-build` and root privileges:

```bash
sudo apt update
sudo apt install -y live-build debootstrap git gcc
```

### Build Amelia Linux: Charlotte (`main`)

```bash
git clone https://github.com/justlimorina/amelia-genesis.git
cd amelia-genesis
git checkout main
chmod +x build.sh
./build.sh
```

### Build Amelia Linux: Nicole (`nix`)

```bash
git clone -b nix https://github.com/justlimorina/amelia-genesis.git amelia-with-nix
cd amelia-with-nix
chmod +x build.sh
./build.sh
```

Generated `.hybrid.iso` images can be written directly to a USB stick using `dd`, `Ventoy`, or Raspberry Pi Imager:

```bash
sudo dd if=amelia-linux-*.hybrid.iso of=/dev/sdX bs=4M status=progress conv=fsync
```

---

## 🤝 Contributing

Contributions are warmly welcomed! Feel free to report bugs, suggest features, or submit pull requests.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

Amelia Linux scripts, configuration files, and tools (including Amelia Welcome) are released under the [GNU General Public License v3.0 (GPL-3.0)](LICENSE). Upstream Debian packages, third-party artwork, and desktop components remain under their respective licenses.

<p align="right">(<a href="#readme-top">back to top ↑</a>)</p>

