# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases, functions, options, key bindings, etc.

# Load Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load rbenv
eval "$(rbenv init - zsh)"

# Alias for ll command
alias ll='ls -lah'

# Alias for Sublime Text
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias gitsubl='GIT_EDITOR="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl -w"'

# Alias for VNC
alias vnc-matee-mac='open -a Safari vnc://localhost && ssh -L 5900:localhost:5900 matee-mac'
alias vnc-matee-mac-local='open vnc://192.168.88.200'
alias vnc-matee-ubuntu='open -a Safari vnc://localhost && ssh -L 5900:localhost:5900 matee-ubuntu'
alias vnc-matee-ubuntu-local='open vnc://192.168.88.53'

# Set default editor to nano
export EDITOR=nano
export VISUAL="$EDITOR"

# Enable autocomplete for git
autoload -Uz compinit && compinit

# Show branch name in git folders
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%1~'\$vcs_info_msg_0_'$ '
zstyle ':vcs_info:git:*' formats '(%b)'
