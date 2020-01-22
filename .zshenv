# .zshenv is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path, plus other important environment variables.
# .zshenv should not contain commands that produce output or assume the shell is attached to a tty.

# Set default editor to nano
export EDITOR=nano
export VISUAL="$EDITOR"

# Setup path to twine folder
export TWINE_FOLDER="/Users/filletzz/Develop/twine-localization"

# Setup POE access token
export POEDITOR_TOKEN="9c0c61a052a28c91afd4fc1b6b602dfc"
