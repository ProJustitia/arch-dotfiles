# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=( git zsh-syntax-highlighting zsh-autosuggestions )


if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pacin='sudo pacman -S'        # Install packages
alias pacrem='sudo pacman -Rns'     # Remove packages completely
alias pacupd='sudo pacman -Sy'      # Sync repo (not full upgrade)
alias pacupg='sudo pacman -Syu'     # Full system upgrade
alias pacs='pacman -Ss'             # Search in repos
alias pacq='pacman -Qi'             # Info for installed pkg
alias pacl='pacman -Ql'             # List files installed by pkg
alias pacown='pacman -Qo'           # Find pkg owning a file
alias pacclean='sudo pacman -Rns $(pacman -Qtdq)'  # Remove orphans


alias yain='yay -S'                 # Install packages
alias yarem='yay -Rns'              # Remove packages
alias yaupg='yay -Syu'              # Full upgrade (repo + AUR)
alias yacs='yay -Sc'                # Clean cache
alias yas='yay -Ss'                 # Search in all (repo + AUR)
alias yaown='yay -Qo'               # Find pkg owning file
alias yaclean='yay -Yc'             # Remove orphaned AUR packages


alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --all --decorate'
alias gco='git checkout'
alias gb='git branch'
alias gpl='git pull'
alias gcl='git clone'


# Replacing ls with exa
alias ls='exa --icons'                          # basic list with icons
alias ll='exa -lh --icons'                      # long list, human-readable, icons
alias la='exa -lha --icons'                     # all files including hidden
alias lt='exa -lh --tree --level=2 --icons'     # tree view, 2 levels
alias lsd='exa -D --icons'                      # directories only
alias ltr='exa -lT --sort=modified --icons'     # tree view, sorted by mod time
alias lsg='exa -l --git --icons'                # show git status in list



alias vi='nvim'
alias svi='sudo nvim'
alias vimrc='nvim ~/.config/nvim/init.lua'  # or init.vim
alias vimplug='nvim ~/.local/share/nvim/site/autoload/plug.vim'

alias c='clear'
alias cat='bat --paging=never'



export BAT_THEME="ansi"
export PATH="$HOME/.spicetify:$PATH"

export PATH="$HOME/.npm-global/bin:$PATH"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init zsh)"

# Load keychain and add your key


eval "$(keychain --eval id_ed25519 2>/dev/null | grep -v '^ \*')"


