if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# eval "$(starship init bash)"
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Set default editor
export EDITOR='vim'
export VISUAL='vim'
alias e='vim'

export PAGER='vim -'
export MANPAGER='vim -M +MANPAGER -'
# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -la --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias df='df -h'
alias du='du -h'
alias free='free -m'
alias h='history'
alias j='jobs -l'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias mkdir='mkdir -pv'
alias tldr='tldr --language zh'
alias sdcv="sdcv -c -u '21世纪英汉汉英双向词典' -u '计算机词汇'"
alias cpb="xclip -selection clip"
# Prompt customization
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# History settings
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


. "$HOME/.cargo/env"

export SYSTEMC_ROOT=/opt/systemc/

  set -o history
  set -o histexpand

#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
#export PATH=$JAVA_HOME/bin:$PATH

HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
HISTTIMEFORMAT="%F %T "


export YSYX_HOME=/home/moy/workspace/ysyx-workbench
export LFS=/mnt/lfs


complete -cf sudo
shopt -s globstar

# moonbit
export PATH="$HOME/.moon/bin:$PATH"


shopt -s cdspell

alias cpb='xclip -selection clipboard'
export NPC_HOME=/home/moy/workspace/ysyx-workbench/npc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

shopt -s autocd
shopt -s cdable_vars
shopt -s checkhash
shopt -s dotglob
shopt -s execfail
shopt -s extdebug
shopt -s histappend
shopt -s gnu_errfmt
shopt -s histverify
shopt -s lithist
shopt -s nullglob


export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup


alias code='vscodium --enable-features=UseOzonePlatform --ozone-platform=wayland'
export PATH=/home/moy/.local/ecos-sdk/bin:$PATH
export PATH=/home/moy/.local/ecos-sdk/toolchain/riscv_unknown/bin:$PATH
export ECOS_SDK_HOME=/home/moy/.local/ecos-sdk
export PATH="$HOME/.local/bin:$PATH"
