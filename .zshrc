eval "$(oh-my-posh init zsh --config ~/.robbyrussell.omp.toml)"
# consider zoxide

HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_find_no_dups

ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "$ZINIT_HOME/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit
zinit light zsh-users/zsh-autosuggestions
zinit cdreplay -q
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found

bindkey -e
bindkey '^I' autosuggest-accept
export EDITOR=nvim
alias clear="clear && printf '\033[3J'"
alias vi=nvim
alias ls="ls --color"
