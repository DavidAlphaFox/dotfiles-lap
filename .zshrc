  export ZSH="$HOME/.oh-my-zsh"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)


##### oh my zsh ###########
ZSH_THEME="spaceship"
SPACESHIP_CHAR_SYMBOL=" "
SPACESHIP_GIT_PREFIX="en "
SPACESHIP_GIT_SYMBOL=
SPACESHIP_GIT_BRANCH_PREFIX=" "
SPACESHIP_EXEC_TIME_PREFIX="Tiempo: "
SPACESHIP_VI_MODE_SHOW="true"
SPACESHIP_VI_MODE_INSERT=""
SPACESHIP_VI_MODE_NORMAL="<N>"

# Bullet-train custom
BULLETTRAIN_PROMPT_ORDER=(
    time
    context
    dir
    git
)

plugins=(
  git
  zsh-vim-mode
)

BULLETTRAIN_CONTEXT_DEFAULT_USER=juan

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
 HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

source $ZSH/oh-my-zsh.sh
PATH="$HOME/scripts:$PATH"
export PATH
export LANG=es_MX.UTF-8

###### DEFINIENDO ALIAS ######

alias emc="emacsclient -c"
alias emt="emacsclient -t"
alias ranger="~/.sources/ranger/ranger.py"
alias E="SUDO_EDITOR=\"emacsclient -c -a emacs\" sudoedit"
alias dot="cd ~/.repos/.dotfiles"
alias clima="curl es.wttr.in"

##### INICIAR JUNTO CON LA TERMINAL #####
ufetch-kirby

###### NNN #################
export NNN_TRASH=1
export NNN_OPENER_DETACH=1
#export NNN_OPS_PROG=1
export NNN_SCRIPT_DIR=/home/juan/scripts/nnn/
export NNN_BMS='h:~;r:/run/media/juan;d:~/Drive;D:~/Descargas;c:~/.config'
export LC_COLLATE="C"
#export NNN_CONTEXT_COLORS="3214"
#export NNN_IDLE_TIMEOUT=900
export NNN_PLAIN_FILTER=1
export NNN_COPIER="/home/juan/scripts/nnn/copier"
export NNN_TMPFILE="/tmp/nnn"
export NNN_OPENER=mimeopen
# Alias "n" para usar nnn con la opción cd at quit
n()
{
        nnn "$@"

        if [ -f $NNN_TMPFILE ]; then
                . $NNN_TMPFILE
                rm $NNN_TMPFILE
        fi
}

# VIM-MODE activado
bindkey -v
