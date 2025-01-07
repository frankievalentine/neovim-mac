#!/bin/sh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install fnm node version manager
brew install fnm
eval "$(fnm env --use-on-cd)"
fnm install --lts --corepack-enabled

# Corepack install pnpm, yarn
corepack install --global pnpm@latest
corepack install --global yarn@latest

# yarn
yarn exec env
yarn set version stable

# Install tpm
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Source .zshrc
source ~/.zshrc

# Brewup one last time
update

echo ""
echo ""
echo "Done. Note that some of these changes require a logout/restart of your OS to take effect.  At a minimum, be sure to restart your Terminal."
echo "------------------------------"
echo ""
