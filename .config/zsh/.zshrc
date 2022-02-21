autoload -U colors && colors
autoload -U compinit promptinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
promptinit
ulimit -c 0
stty flush undef

PROMPT="%~$ "

HISTSIZE=10000
SAVEHIST=10000
export HISTFILE="$HOME/.cache/shell/histfile"

_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

function zle-keymap-select {
        if [[ ${KEYMAP} == vicmd ]] ||
           [[ $1 = 'block' ]]; then
           echo -ne '\e[1 q'
        elif [[ ${KEYMAP} == main ]] ||
             [[ ${KEYMAP} == viins ]] ||
             [[ ${KEYMAP} = '' ]] ||
             [[ $1 = 'beam' ]]; then
           echo -ne '\e[5 q'
        fi
}
zle -N zle-keymap-select
zle-line-init() {
        zle -K viins
        echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'
preexec() {echo -ne '\e[5 q' ;}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# ~/* clean up!
alias less="less -R"
alias man="man -O width="$(tput cols)""
alias vim="nvim"
alias cp="cp -iv"
alias pdfpc="pdfpc -w both"
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias sfeed_update="sfeed_update $HOME/.config/sfeed/sfeedrc"
alias sfeed_curses="sfeed_curses $HOME/.config/sfeed/feeds/*"
alias mbsync="mbsync -c $HOME/.config/mbsync/config"
alias lb="cd $HOME/.local/bin && ls"
alias cfg="cd $HOME/.config && ls"
alias src="cd $HOME/.local/src && ls"
alias abook="abook --datafile='$HOME/.config/abook/addressbook' --config='$HOME/.config/abook/abookrc'"
alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"
alias xu="sudo xbps-install -Su"
alias xs="xbps-query -Rs"
alias www="cd $HOME/.local/share/www/maxtroeger.net"
alias canoe="cd $HOME/.local/share/www/canoemail.net"
alias cave="cd $HOME/.local/share/www/beyondthecave.net"
alias nptb="cd $HOME/.local/share/www/noplacetobe.net"
alias moor="cd $HOME/.local/share/www/themoorings.club"
alias mamre="cd $HOME/.local/share/www/mamre.xyz"
alias bk="cd $HOME/.local/share/books && ls"
alias school="cd $HOME/.local/share/school && ls"
alias pde="cd $HOME/.local/share/school/math4500 && ls"
alias phil="cd $HOME/.local/share/school/phil2140 && ls"
alias econ="cd $HOME/.local/share/school/ihss1200 && ls"
alias phys="cd $HOME/.local/share/school/phys2210 && ls"
alias ls="ls --color"
