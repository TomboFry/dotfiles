#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIASES
alias ls='ls --color=auto'
# Show file info without having to type allllll that
alias l='ls -lah'
# Sometimes I accidentally miss the space, so instead of having to type it again... :)
alias cd..='cd ..'
# Find any file on the hard drive
alias f='sudo find / | grep'
# Remove all unneeded dependencies
alias pm-r='sudo pacman -Ru $(pacman -Qdtq)'
# Apparently nano doesn't support no wrapping by default on Arch, what's with that? :O
alias nano='nano -w'
# Resume screen instance
alias r='screen -d -r'

# Print the time in a rainbow colour!
toilet -f smmono9 -F border --gay $(date '+%H:%M:%S')

# Set prompt
PS1='\n\[\033[1;37m\]\t \u@\h\[\033[00m\] \[\033[1;36m\]\W\[\033[00m\] \[\033[1;37m\]\$\[\033[00m\] '
