# mkosi-ubuntu-mecha

Mecha comet mkosi image configuration for Ubuntu-based systems.

## Overview
This repository contains mkosi configuration and assets to build a reproducible Ubuntu-based image for the "mecha" project.

## Prerequisites
- Ubuntu/Debian (or other Linux host)
- mkosi
- qemu (for cross-arch or image testing)
- debootstrap (if building Debian/Ubuntu images)

Install common dependencies:
```sh
sudo apt update
sudo apt install -y mkosi qemu-system-x86 debootstrap
```

## Build
Build the image using mkosi with the provided configuration:
```sh
sudo mkosi -f build
```


