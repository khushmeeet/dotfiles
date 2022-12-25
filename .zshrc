# Path to your oh-my-zsh installation.
export ZSH="/Users/khushmeeet/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         colored-man-pages
         zsh-autosuggestions
         zsh-syntax-highlighting
         zsh-completions
         auto-notify
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# zsh config
autoload -U compinit && compinit
autoload -U promptinit; promptinit

# GOPATH
export GOPATH=$HOME/dev/go

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$HOME/.cargo/bin:$GOPATH/bin:/opt/homebrew/opt/ruby/bin:$HOME/.ghcup/bin:$HOME/.local/bin:$HOME/.poetry/bin:~/.emacs.d/bin:$PATH

# Functions
function cd() {
    builtin cd $1 && exa
}

function cheat() {
    curl cheat.sh/$1
}

function yt-video() {
    yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --write-sub --write-auto-sub $1
}

function yt-audio() {
    yt-dlp -f 'bestaudio[ext=m4a]/bestaudio' $1
}

function git_prepare() {
    if [ -n "$BUFFER" ];
    then
        BUFFER="git add -A && git commit -m \"$BUFFER\" && git push"
    fi

    if [ -z "$BUFFER" ];
    then
        BUFFER="git add -A && git commit -v && git push"
    fi
    zle accept-line
}
zle -N git_prepare
bindkey "^g" git_prepare

# Aliases
alias c='clear'
alias dev='cd ~/Dev'
alias h='cd ~'
alias cat='bat'
alias listen='sudo lsof -i -P | grep LISTEN'
alias ls='exa'
alias ps='procs'
alias du='dust'
alias grep='rg'
alias df='duf'
alias find='fd'
alias ack='ag'
alias history='mcfly'
alias htop='btm'
alias icloud='cd /Users/khushmeeet/Library/Mobile\ Documents/com\~apple\~CloudDocs'

## pyenv setup
alias python="$(pyenv which python)"
alias pip="$(pyenv which pip)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Load Starship theme
eval "$(starship init zsh)"

[ -f "/Users/khushmeeet/.ghcup/env" ] && source "/Users/khushmeeet/.ghcup/env" # ghcup-env

export PATH="$HOME/.poetry/bin:$PATH"

### McFly - fly through your shell history
eval "$(mcfly init zsh)"

# fzf with tree command
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

### Pyenv shell config
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
