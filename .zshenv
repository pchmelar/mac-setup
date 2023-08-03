# .zshenv is sourced on all invocations of the shell, unless the -f option is set.
# It should contain commands to set the command search path, plus other important environment variables.
# .zshenv should not contain commands that produce output or assume the shell is attached to a tty.

# Load Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load rbenv to setup ruby properly
eval "$(rbenv init -)"

# JDK setup
export JAVA_HOME=$(/usr/libexec/java_home -v 17.0.7)

# Setup locale
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Setup path to twine folder
export TWINE_FOLDER="/Users/filletzz/Develop/twine-localization"

# Setup POEditor API token
export POEDITOR_API_TOKEN="<TOKEN>"
