# --- Prompt ---
export PS1="\[\e[32m\]\w\[\e[35m\]\$(parse_git_branch)\[\e[0m\]\n\[\e[34m\]\u\[\e[33m\] ➜ \[\e[0m\]"
# --- Dynamic Git Prompt ---
set_bash_prompt() {
  local git_branch=""
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    git_branch=" ($(git branch --show-current 2>/dev/null))"
  fi

  PS1="\[\e[32m\]\w\[\e[35m\]$git_branch\[\e[0m\]\n\[\e[34m\]\u\[\e[33m\] ➜ \[\e[0m\] "
}

PROMPT_COMMAND=set_bash_prompt


# --- Colors and Display ---
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM=xterm-256color

# --- Path Configuration ---
export PATH="$HOME/bin:$HOME/go/bin:$HOME/maven/apache-maven-3.5.0/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"

# --- Programming Environments ---
#export JAVA_HOME=$(/usr/libexec/java_home)
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CFLAGS="-I/usr/local/opt/openssl/include"

# --- Docker (only run if docker-machine exists) ---
if command -v docker-machine &>/dev/null; then
  eval "$(docker-machine env default)"
fi

# --- RVM ---
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# --- Aliases ---
alias ls='ls -GFh'
alias del="$HOME/scripts/trash.sh"
alias rm='rm -i'
alias cls='clear && ls'
alias tmux='TERM=xterm-256color tmux'

# --- fzf (fuzzy finder) ---
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# --- Clipboard support (only meaningful in Vim, remove from .bashrc) ---
# set clipboard=unnamed   <-- Remove or move to .vimrc if this was meant for Vim
