#!/bin/bash
# Make sure that brew is installed: https://brew.sh

set -euvo pipefail

# Applications
brew install --cask \
    alacritty \
    bitwarden \
    chromium \
    discord \
    firefox \
    font-hack-nerd-font \
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

# Terminal
if brew list fish > /dev/null;
then
    echo "fish already installed"
else
    brew install fish
    echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
    chsh -s /opt/homebrew/bin/fish
    fish_add_path /opt/homebrew/bin/
fi

if brew list starship > /dev/null;
then
    echo "starship already installed"
else
    brew install starship
    echo "starship init fish | source" > ~/.config/fish/config.fish
fi

if brew list lsd > /dev/null;
then
    echo "lsd already installed"
else
    brew install lsd
    fish --command="alias --save ls='lsd'"
fi

brew install \
    fzf \
    jq \
    yq