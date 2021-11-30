# .zlogin is sourced in login shells.
# It should contain commands that should be executed only in login shells.
# .zlogin is not the place for alias definitions, options, environment variable settings, etc.

# Load rbenv to setup ruby properly
eval "$(rbenv init -)"

# Load Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
