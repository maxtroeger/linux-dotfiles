#!/bin/zsh

# Universal variables
export BIB="/home/max/dox/latex/uni.bib"
export REFER="$HOME/dox/roff/bibliography"
export OPENER="xdg-open"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/bar_modules:$HOME/.local/bin/cron"
export EDITOR="nvim"
export TERMINAL="st"
export MAILCAP="/home/max/.config/mailcap"
export PAGER="less -R"
export READER="zathura"
export NOTMUCH_CONFIG="$HOME/.config/notmuch/config"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export GNUPGHOME="$HOME/.config/gnupg"
export PASSWORD_STORE_DIR="$HOME/.config/password-store"
export BROWSER="firefox"
export NQDIR="/tmp/jobs"
export SFEED_PIPER="$HOME/.config/sfeed/piper"
export SFEED_PLUMBER="$HOME/.config/sfeed/plumber"
export SFEED_URL_FILE="$HOME/.config/sfeed/.read"
export LESSHISTFILE="-"

# ~/* Clean up
export ZDOTDIR="$HOME/.config/zsh"

# Manpage colors
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

width=$(tput cols)
export MANWIDTH="$width"

# This is the list for lf icons:
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓ :\
or=❌:\
ex=🎯:\
*.txt=✍ :\
*.mom=✍ :\
*.me=✍ :\
*.ms=✍ :\
*.png=🖼 :\
*.webp=🖼 :\
*.ico=🖼 :\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼 :\
*.svg=🗺 :\
*.tif=🖼 :\
*.tiff=🖼 :\
*.xcf=🖌 :\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.wav=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.mov=🎥:\
*.mpg=🎥:\
*.wmv=🎥:\
*.m4b=🎥:\
*.flv=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ :\
*.nfo=ℹ :\
*.info=ℹ :\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"

sudo -n loadkeys ${XDG_DATA_HOME:-$HOME/.local/}ttymaps.kmap 2>/dev/null
