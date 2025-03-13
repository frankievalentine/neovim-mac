# neovim-mac

## Install

After backing up your Mac you may now follow these install instructions to setup a new one.

1. Update macOS to the latest version through system preferences

2. Clone this repo to `~/.dotfiles` with:

   ```bash
   git clone --recursive git@github.com:frankievalentine/neovim-mac.git ~/.dotfiles
   ```

   > 💡 You can use a different location than `~/.dotfiles` if you want. Make sure you also update the reference in the [`.zshrc`](./.zshrc) file.

3. Install Homebrew & Command Line Tools. We want to download the Command Line Tools directly from Apple Developer.

   ```bash
      # Homebrew
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

   > 💡 Make sure to run the commands Homebrew provides after install.

4. Install GNU stow using Homebrew.

   ```bash
      brew install stow
   ```

5. Symlink the .dotfiles repo to your home folder using GNU stow.

   ```bash
      cd ~/.dotfiles
      stow .
   ```

6. Run the installation with:

   ```bash
      sh ./scripts/dots.sh
   ```

7. Add headline oh my zsh theme, remove oh my zsh generated .zshrc

   ```bash
      mv ~/.dotfiles/.oh-my-zsh/themes/headline.zsh-theme ~/.oh-my-zsh/themes
      rm .zshrc
      mv .zshrc-pre-oh-my-zsh .zshrc
      source .zshrc
   ```


Your Mac is now ready to use!
