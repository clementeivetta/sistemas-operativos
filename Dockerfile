FROM ubuntu:22.04

# Enable multi-architecture support
RUN apt-get update && apt-get install -y \
    qemu-user-static \
    binfmt-support \
    sudo \
    git \
    make \
    build-essential \
    vim

# Add riscv toolchain and qemu
RUN apt-get install -y \
    qemu-system-riscv64 \
    gcc-riscv64-linux-gnu

WORKDIR /xv6-lab3
