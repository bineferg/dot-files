# Git branch in prompt.
parse_git_branch() {
	  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

#mobymac
eval $(docker-machine env default)
# Paths
export PS1="[\[\033[32m\]\W]\$(parse_git_branch)\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="$PATH:~/bin:/Users/evafineberg/go/bin:/Users/evafineberg/maven/apache-maven-3.5.0/bin:/usr/local/openssl-1.0.2h/bin/openssl"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export TERM=xterm-256color
export JAVA_HOME=$(/usr/libexec/java_home)
export GOPATH=~/go
export GOROOT=/usr/local/go
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CFLAGS="-I/usr/local/opt/openssl/include"
# Add python3 to path
export PATH="$PATH:/usr/local/bin/python3"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Aliases
alias ls='ls -GFh'
alias del=~/scripts/trash.sh
alias rm='rm -i'
alias cls='clear && ls'
alias tmux='TERM=xterm-256color tmux'

# The rest
set clipboard=unnamed

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
