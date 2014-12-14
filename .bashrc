. "$HOME/.profile"
alias ll="ls -la"
alias startproxy=" echo 'Starting proxy on server 1080'; ssh -D1080 -N -g 31.222.154.63;"
alias gist='gist -c -p'
alias howlong='curl -o /dev/null -s -w %{time_total}\\n'

function prompt {
    local GRAY="\[\033[1;30m\]"
    local LIGHT_GRAY="\[\033[0;37m\]"
    local RESET="\[\033[0m\]"
    local __cur_location="\w"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    export PS1="$LIGHT_GRAY$__cur_location $GRAY$__git_branch$RESET$ "
}
prompt

function ff {
    grep -R --exclude-dir=./node_modules $1 .
}

export CLICOLOR=1
export TERM=xterm-256color

export PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH

export NVM_DIR="/Users/tyke/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
