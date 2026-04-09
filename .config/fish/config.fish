# Aliases 
alias eza='eza --icons --group-directories-first'
alias battery="cat /sys/class/power_supply/BAT0/uevent"
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ls='eza'
alias grep='grep --color=auto'
alias rm='rm -i'
alias du='du -bsh'
alias sl='sl -ale'
alias avim='vim -A'
alias vimb="vim -c 'set ft=man nomod nolist' -"
alias scrcpy='scrcpy --video-codec=h265 --max-size=1920 --max-fps=60'
alias cmatrix='cmatrix -s'
alias qrscanner='qrscanner --clear'
alias less='less -R'
alias start_idf='. $HOME/data/additional/portable-apps/esp-idf/export.sh'

# pacman Aliases
alias i='sudo pacman -S'
alias u='sudo pacman -Syu'
alias q='pacman -Ss'
alias r='sudo pacman -Rns'

# Exports
set EDITOR vim
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export IDF_PATH=~/data/additional/portable-apps/esp-idf
export IDF_TOOLS_PATH="$HOME/.espressif"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --height=40% --layout=default --color='fg:#cfcfcf,bg:#1e1e2e,bg+:#23232b,alt-bg:#1a1a22,hl:#61afef,hl+:#61afef,pointer:#61afef,marker:#61afef,prompt:#61afef,query:#61afef,header:#61afef,spinner:#61afef,info:#90ee90,border:#2e3440,preview-bg:#121214,preview-fg:#dcdfe4,preview-border:#2e3440,input-bg:#121214,input-border:#2e3440'"

# zoxide setup
eval "$(zoxide init fish)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --fish)"

