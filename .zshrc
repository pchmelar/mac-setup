# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases, functions, options, key bindings, etc.

# Alias for ll command
alias ll='ls -lah'

# Alias for Sublime Text
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias gitsubl='GIT_EDITOR="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl -w"'

# Alias for Heureka VPN
alias vpn='echo "<PASSWORD>" | sudo openconnect vpn.heureka.group/external --authgroup=Default --user=<USERNAME> --passwd-on-stdin'
alias vpnclean='sudo route delete vpn.heureka.group'

# Alias for VNC
alias vnc='/usr/bin/open -a Safari vnc://localhost && ssh -L 5900:localhost:5900 work'

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
