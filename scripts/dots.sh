#!/bin/sh

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

# Restart terminal session
echo "------------------------------"
echo ""
exec -l $SHELL

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

# Restart terminal session
echo "------------------------------"
echo ""
exec -l $SHELL

 # Create an SSH key
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
sh ~/dotfiles/scripts/ssh.sh

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
