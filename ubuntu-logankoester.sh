# Logan Koester's bash settings for Ubuntu Intrepid

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

dir=`dirname $BASH_SOURCE`

# Load the common terminal configuration
. $dir/common/terminal.sh

# Set the default user mask
umask 0022

# Ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Let's make the prompt more colorful
. $dir/common/color-prompt.sh

# Now what should the prompt look like?
if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;34m\]\w\[\033[00m\]> '
else
    PS1='\w> '
fi

# Load xterm-specific configuration in case we're in an xterm
. $dir/common/xterm.sh
# ...fat chance!

# Set the PATH (includes ~/bin)
. $dir/common/path.sh

if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
		# Set LS_COLORS
    eval "`dircolors -b`"
    
    # ls aliases
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'
    
    # grep aliases
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

. $dir/common/misc-env.sh

# Override LS_OPTIONS
export LS_OPTIONS='--color=auto'

# Set aliases for grep, ls, cd, tar, rake, and gem
. $dir/common/misc-shortcuts.sh

# Unset the 'mgem' alias, which is for Macs with Textmate
alias mgem='mgem'

# Enable git bash completion and shortcuts
. $dir/common/git.sh

# Enable programmable bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Load Ruby on Rails shortcuts
. $dir/common/rails-shortcuts.sh

# Personal settings
. ~/.bash_me
