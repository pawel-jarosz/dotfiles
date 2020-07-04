export EDITOR=vim

alias gdb='/usr/bin/gdb --tui'
alias gitlog='git log --oneline --graph --decorate'

# Add existing ssh keys
#eval "$(ssh-agent -s)" > /dev/null
#find ~/.ssh/ -type f -not -name "config" -and -not -name "known_hosts" -and -not -name "*.pub" -exec ssh-add {}  \; >/dev/null

# All ssh keys should be configured in ssh config

source ~/.config/typos.sh

