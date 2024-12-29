source $HOME/.aliases

# zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# brew sbin in PATH
export PATH="/usr/local/sbin:$PATH"

# brew libpq in PATH
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Load compinit for compdef in 1Password-cli
autoload -Uz compinit
compinit

# 1Password-cli shell completion
eval "$(op completion zsh)"; compdef _op op

# 1Password SSH Agent
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# fnm - node version manager
eval "$(fnm env --use-on-cd)"

# zoxide smarter cd
eval "$(zoxide init zsh)"
