#!/bin/bash
# Make sure that brew is installed: https://brew.sh
set -euo pipefail

brew install --cask \
    bitwarden \
    chromium \
    discord \
    firefox \
    fork \
    inkscape \
    gnucash \
    libreoffice \
    obsidian \
    protonmail-bridge \
    plexamp \
    rancher \
    rectangle \
    signal \
    slack \
    syncthing \
    visual-studio-code \
    vlc \
    xquartz

# alacritty
if brew list --cask alacritty > /dev/null;
then
    echo "alacritty already installed"
else
    ln -s ~/dev/config/alacritty ~/.config/alacritty
    brew install --cask alacritty
fi