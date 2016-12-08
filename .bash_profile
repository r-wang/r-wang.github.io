#add this to ~/.bash_profile so that the cmd would show current path and branch

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' | sed -e 's/^[[:space:]]*//'
}

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\$(parse_git_branch)\[\033[01;34m\]\w\[\033[00m\]\$ "
