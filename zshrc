alias ls="ls --color"
alias chatllama='ollama run llama3.1'
alias cpwd="pwd | pbcopy"
alias turmeric='. turmeric'
alias twinkl='. twinkl'
alias isodate='(date +"%Y-%m-%d")'
alias gcal='open -a Safari https://calendar.google.com/calendar/'
alias st='streamlit'
alias uvr='uv run'
alias claude='nvm use && claude'
alias codex='nvm use && codex'
alias trig='tree -LC 3 --gitignore'
alias chat='open https://chat.google.com/app/chat/'

#-------------------------

export EDITOR='vim'
export PATH="$HOME/.mac-config:$PATH"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
# Created by `pipx` on 2024-09-06 21:23:38
export PATH="$PATH:/Users/lynn/.local/bin"
export JAVA_HOME=$(/usr/libexec/java_home)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# UV Manager
eval "$(uv generate-shell-completion zsh)"
myenv() {
  local DIR="$PWD"
  while [[ "$DIR" != "/" ]]; do
    if [[ -f "$DIR/.venv/bin/activate" ]]; then
      source "$DIR/.venv/bin/activate"
      echo "Activated virtual environment in $DIR/.venv"
      return
    fi
    DIR=$(dirname "$DIR")
  done
  echo "No .venv found in current or parent directories."
}


# bun completions
[ -s "/Users/lynn/.bun/_bun" ] && source "/Users/lynn/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Funciton to jump to root of a github repo
cdroot() {
  local root
  root=$(git rev-parse --show-toplevel 2>/dev/null) || {
    echo "Not inside a git repository"
    return 1
  }

  cd "$root" || return 1
  echo "⤴️  Jumped to project root!"
}

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
