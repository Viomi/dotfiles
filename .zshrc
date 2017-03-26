# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="v"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# User configuration

export PATH="/home/viomi/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# For a full list of active aliases, run `alias`.
alias zshconfig="v ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"

alias pacinstall="sudo pacman -S"
alias pacupdate="sudo pacman -Syu"
alias pacremove="sudo pacman -R"
alias pacremovedeps="sudo pacman -Rs"
alias pacforceremove="sudo pacman -Rsc"
alias pacpurge="sudo pacman -Sc"
alias vibuild="makepkg -sri"

alias vim="nvim"
alias vi="nvim"
alias v="nvim"

alias ls="ls -A"

alias mountwindows="sudo mount -t ntfs-3g /dev/sda2 /mnt/windows"