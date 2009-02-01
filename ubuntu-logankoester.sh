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
# http://logankoester.tumblr.com/post/3854533/a-bash-prompt-that-doesnt-suck
# (looks best with a dark theme)
PS1='\[\e[35m\][\[\e[1;35m\]\h\[\e[0;35m\]::\[\e[1;34m\]\W\[\e[0;35m\]@\[\e[1;30m\]\t\[\e[0;35m\]]\[\e[0m\]>'
    
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
