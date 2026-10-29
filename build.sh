#!/bin/bash
set -euo pipefail

# Compile GNOME Settings About dark/light logo shim on host if gcc is available
if command -v gcc >/dev/null 2>&1 && [ -f config/includes.chroot/usr/src/amelia/libamelia-about-logo.c ]; then
    mkdir -p config/includes.chroot/usr/lib/amelia
    gcc -shared -fPIC -O2 -Wall -Wextra \
        config/includes.chroot/usr/src/amelia/libamelia-about-logo.c \
        -o config/includes.chroot/usr/lib/amelia/libamelia-about-logo.so -ldl
fi

sudo lb clean

sudo lb config \
    --distribution stable \
    --architectures amd64 \
    --archive-areas "main contrib non-free non-free-firmware" \
    --image-name "amelia-linux-nicole" \
    --iso-volume "Amelia Linux" \
    --iso-application "Amelia Linux: Nicole" \
    --binary-images iso-hybrid \
    --bootloaders "grub-efi,syslinux" \
    --bootappend-live "boot=live components quiet splash hostname=amelia username=user user-fullname=Amelia locales=en_US.UTF-8 timezone=Asia/Ho_Chi_Minh"

sudo lb build 2>&1 | tee build.log
