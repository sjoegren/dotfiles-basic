#!/bin/bash

set -eu

cd ~
target_path=dotfiles
install_tools=(git curl vim)
run_install=false
for tool in "${install_tools[@]}"; do
	if ! command -pv "$tool" >/dev/null; then
		run_install=true
		break
	fi
done

if $run_install; then
	if command -pv apt >/dev/null; then
		apt update
		apt -y install "${install_tools[@]}"
	elif command -pv dnf >/dev/null; then
		dnf -y install "${install_tools[@]}"
	elif command -pv yum >/dev/null; then
		yum -y install "${install_tools[@]}"
	fi
fi

if [ -e $target_path ]; then
	echo "error: $target_path already exists - remove and run again"
	exit 1
fi

git clone https://github.com/sjoegren/dotfiles-basic $target_path
$target_path/install

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
vim -e -i NONE -c "PlugInstall" -c "qa"
