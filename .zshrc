eval "$(oh-my-posh init zsh --config ~/.robbyrussell.omp.toml)"

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
autoload -Uz compinit && compinit
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found

bindkey -e
export EDITOR="nvim"
alias clear="clear && printf '\033[3J'"
alias cls="clear && printf '\033[3J'"
alias cd..="cd .."
alias ls="ls --color"
alias lsa="ls -a --color"
alias ff="fastfetch"

# TODO: include hidden files
# TODO: if a directory is passed and there is only one file in it, open the file
function vi() {
	if [ -n "$1" ]
	then
		nvim "$1"
	elif [ $(ls -1 | wc -l) -eq 1 ]
	then
		nvim $(ls -1)
	else
		nvim .
	fi
}
