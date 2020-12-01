export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kennethreitz"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User Configuration

## SSH Via GPG
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
	export SSH_AUTH_SOCK="`(gpgconf --list-dirs agent-ssh-socket)`"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

## Exports
export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"

## Aliases
