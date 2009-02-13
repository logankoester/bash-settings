
# You may uncomment the following lines if you want `ls' to be colorized:
#eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lh'
alias l='ls $LS_OPTIONS -lhA'
alias l?="l | g? \$1"
alias lld='ls -lUd */' # Just list directories

alias ..='cd ..'
alias cd..='cd ..'

alias tgz="tar -cvzf "
alias zxvf="tar zxvf "
alias g?="grep \$1"
alias rake?="rake -T | g? \$1"
alias gem?="gem list | g? \$1"

alias mgem="cd \$GEMS; mate \$1"

alias g='gedit'

# Make and change to a directory
md () { mkdir -p "$1" && cd "$1"; }

# Record a bash session
alias record="script $1"

# Execute contents of the clipboard (be careful)
# Requires xclip ("sudo apt-get install xclip" on Ubuntu)
# alias exclip="`xclip -o`"

# Alias alpine to just pine (mail client)
alias pine=alpine
