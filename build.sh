#!/bin/bash
set -e

sudo lb clean

sudo lb config \
    --distribution testing \
    --architectures amd64 \
    --archive-areas "main contrib non-free non-free-firmware" \
    --binary-images iso-hybrid \
    --bootloaders "grub-efi,syslinux" \
    --bootappend-live "boot=live components quiet splash username=user user-fullname=Amelia locales=en_US.UTF-8 timezone=Asia/Ho_Chi_Minh"

sudo lb build 2>&1 | tee build.log