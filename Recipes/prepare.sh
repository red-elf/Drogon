#!/bin/bash

# shellcheck disable=SC2002
if ! cat "/etc/os-release" | grep "altlinux"; then

  echo "Only the 'Alt Linux' is supported currently by the 'prepare.sh' recipe!"
  echo "Note: For other Linux distributions please override the 'prepare.sh' recipe:"
  echo "https://github.com/red-elf/Installable"
  exit 1
fi

echo "Preparing the 'drogon' framework for the installation" && \
  echo "Installing the 'drogon' dependencies for the 'Alt Linux'" && \
  sudo apt-get update && \
  sudo apt-get install jsoncpp-devel && \
  sudo apt-get install libuuid && \
  sudo apt-get install libuuid-devel && \
  sudo apt-get install openssl && \
  sudo apt-get install libssl-devel && \
  sudo apt-get install zlib && \
  sudo apt-get install zlib-devel && \
  git submodule init && git submodule update && \
  echo "The 'drogon' dependencies for the 'Alt Linux' have been installed with success" && \
  echo "The 'drogon' framework is prepared for the installation"
