#!/bin/bash

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage: $0 [p] [r]"
    echo
    echo "  p     Upgrade all upgradable packages and"
    echo "        remove unused packages (autoremove)"
    echo "  --help, -h  Show this help message"
    exit 0
fi

echo "Updating package list..."
sudo apt update

# Loop through all arguments
for arg in "$@"; do
    if [[ "$arg" == "p" ]]; then
        echo -e "\nUpgrading packages...\n"
        sudo apt upgrade -y
        echo -e "\nAutoremoveing...\n"
        sudo apt autoremove -y
    fi
done

if [[ "$@" != *"p"* ]]; then
    echo -e "\nSkipping upgrade and autoremove. Add 'p' to also upgrade packages."
fi
