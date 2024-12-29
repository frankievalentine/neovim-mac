#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `full-setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

 # Run the mac script
echo ""
echo "------------------------------"
echo "Setting up defaults and executing Brewfile"
echo "------------------------------"
echo ""
echo "------------------------------"
echo "Making sure script is executable"
echo "------------------------------"
echo ""
chmod +x ~/dotfiles/scripts/mac.sh
echo ""
echo "------------------------------"
echo "Executing"
echo ""
sh ~/dotfiles/scripts/mac.sh && brew bundle

 # Run the cli script
echo ""
echo "------------------------------"
echo "Setting up Corepack, fnm, and ohmyzsh"
echo "------------------------------"
echo ""
echo "------------------------------"
echo "Making sure script is executable"
echo "------------------------------"
echo ""
chmod +x ~/dotfiles/scripts/cli.sh
echo ""
echo "------------------------------"
echo "Executing"
echo ""
sh ~/dotfiles/scripts/cli.sh

 # Create SSH key
echo ""
echo "------------------------------"
echo "Creating SSH key"
echo "------------------------------"
echo ""
echo "------------------------------"
echo "Making sure script is executable"
echo "------------------------------"
echo ""
chmod +x ~/dotfiles/scripts/ssh.sh
echo ""
echo "------------------------------"
echo "Executing"
echo ""
sh ~/dotfiles/scripts/mac.sh

# Restart terminal session
echo "------------------------------"
echo ""
exec -l $SHELL

# Finished
echo "------------------------------"
echo "------------------------------"
echo ""
echo "Completed running .dots!!! Restarting terminal session... and restart system to finish setup."
echo ""
echo "------------------------------"
echo "------------------------------"

# Restart terminal session
echo "------------------------------"
echo ""
exec -l $SHELL
