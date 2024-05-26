#!/bin/bash
set -euo pipefail

brew install \
  texlive

# swiftenv
if brew list kylef/formulae/swiftenv > /dev/null;
then
    echo "swiftenv already installed"
else
    brew install kylef/formulae/swiftenv
    echo 'if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi' >> ~/.bash_profile
    echo 'if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi' >> ~/.zshrc
    echo 'if which swiftenv > /dev/null; status --is-interactive; and source (swiftenv init -|psub); end' >> ~/.config/fish/config.fish
fi

# pyenv
if brew list pyenv > /dev/null;
then
    echo "pyenv already installed"
else
    brew install pyenv

    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
    
    fish -c "set -Ux PYENV_ROOT $HOME/.pyenv"
    echo 'if which pyenv > /dev/null; status --is-interactive; and source (pyenv init -|psub); end' >> ~/.config/fish/config.fish
fi

# goenv
if brew list goenv > /dev/null;
then
    echo "goenv already installed"
else
    brew install goenv
    
    echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bash_profile
    echo 'eval "$(goenv init -)"' >> ~/.bash_profile

    echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.zshrc
    echo 'eval "$(goenv init -)"' >> ~/.zshrc

    fish -c "set -Ux GOENV_ROOT $HOME/.goenv"
    echo 'if which goenv > /dev/null; status --is-interactive; and source (goenv init -|psub); end' >> ~/.config/fish/config.fish
fi