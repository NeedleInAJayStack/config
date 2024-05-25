#!/bin/bash
set -euo pipefail

brew install \
    fzf \
    jq \
    yq

brew install --cask \
    font-hack-nerd-font

# fish
if brew list fish > /dev/null;
then
    echo "fish already installed"
else
    brew install fish
    echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
    chsh -s /opt/homebrew/bin/fish
    fish_add_path /opt/homebrew/bin/
fi

# starship
if brew list starship > /dev/null;
then
    echo "starship already installed"
else
    brew install starship
    echo "starship init fish | source" > ~/.config/fish/config.fish
fi

# neovim
if brew list neovim > /dev/null;
then
    echo "neovim already installed"
else
    ln -s ~/dev/config/nvim ~/.config/nvim
    brew install neovim
fi

# lsd
if brew list lsd > /dev/null;
then
    echo "lsd already installed"
else
    brew install lsd
    fish --command="alias --save ls='lsd'"
fi