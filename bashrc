#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set editor to Sublime Text and wait for it to close
export EDITOR='subl -n -w'
export VISUAL='subl -n -w'

# ALIASES
alias ls='ls --color=auto'

# Show file info without having to type allllll that
alias l='ls -lah'

# Sometimes I accidentally miss the space, so instead of having to type it again... :)
alias cd..='cd ..'

# Find any file on the hard drive
alias f='sudo find / | grep'

# Remove all unneeded dependencies (Note: for Arch Linux)
alias pm-r='sudo pacman -Ru $(pacman -Qdtq)'

# Apparently nano doesn't support no wrapping by default on Arch, what's with that? :O
alias nano='nano -w'

# Resume screen instance
alias r='screen -d -r'

# Rerun command with sudo privileges
alias pls='sudo $(fc -ln -1)'

alias pget='sudo pacman -S'
alias psearch='pacman -Ss'
alias premove='sudo pacman -Rnsu'
alias pupdate='sudo pacman -Syyu'

# Set prompt
PS1='\n\[\033[1;37m\]\A \h \[\033[1;36m\]\w \[\033[1;37m\]\$\[\033[00m\] '

# Print a fortune on bash login
# Old, "offensive" version: `cowsay -f sodomized -T "~/" -e "><" $(fortune -o -s)`

# This version picks a random cow to print it with, too!
fortune | cowsay -f $(ls /usr/share/cows/ | shuf -n1)
