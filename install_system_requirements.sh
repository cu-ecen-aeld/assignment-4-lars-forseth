#!/bin/bash

# Fail on any error
set -e

# Package list taken from
# https://github.com/cu-ecen-aeld/aesd-autotest-docker/blob/master/docker/Dockerfile
pkgs_to_install=(
    ruby
    cmake
    git
    build-essential
    bsdmainutils
    valgrind
    wget
    bc
    u-boot-tools
    kmod
    cpio
    flex
    bison
    libssl-dev
    psmisc
    qemu-system-arm
    apt-utils
    tzdata
    dialog
    sed
    make
    binutils
    bash
    patch
    gzip
    bzip2
    perl
    tar
    unzip
    rsync
    file
    python
    libncurses5-dev
    qemu
    openssh-client
    expect
    sshpass
    psmisc
    netcat
    iputils-ping
)

printf "\n\n"
sudo apt-get update
printf "\n\n"
for pkg in "${pkgs_to_install[@]}"; do
    sudo apt-get install "${pkg}"
    printf "\n\n"
done
sudo apt-get install --reinstall ca-certificates && sudo update-ca-certificates

printf "\n\nDone! :)\n"
