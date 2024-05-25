#!/bin/bash
set -euo pipefail


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
