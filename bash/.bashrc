#
# .bashrc
#

# ---------- 本地私有配置 local config ----------
# 机器本地私有配置, 存在才加载
# machine-local, loaded if present
if [ -f "$HOME/.bashrc.local" ]; then
  . "$HOME/.bashrc.local"
fi

# ---------- 非交互守卫 non-interactive guard ----------
# 非交互 shell 到这里退出
# non-interactive shell exits here
case $- in
  *i*) ;;
  *) return;;
esac

# ---------- 补全 completion ----------
# 系统级补全, 仅交互 shell 需要
# system completion, interactive only
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# ---------- 编辑器与分页器 editor and pager ----------
# git 等程序的默认编辑器
# default editor for git and tools
export EDITOR='vim'

# 全屏编辑器变量
# full-screen editor variable
export VISUAL='vim'

# 单字母速开 vim
# quick open vim
alias e='vim'

# 分页输出用 vim
# pager for long output
export PAGER='vim -'

# man 手册用 vim 只读打开
# view man pages read-only in vim
export MANPAGER='vim -M +MANPAGER -'

# ---------- 别名 alias ----------
# 彩色输出
# color output
alias ls='ls --color=auto'
# 长格式含隐藏文件
# long format with hidden files
alias ll='ls -la --color=auto'
# 全部但不含 . 和 ..
# all except . and ..
alias la='ls -A'
# 紧凑分栏加类型符号
# compact columns with type
alias l='ls -CF'

# 删除前逐个确认
# confirm before delete
alias rm='rm -i'
# 覆盖前逐个确认
# confirm before overwrite
alias cp='cp -i'
# 移动前逐个确认
# confirm before move
alias mv='mv -i'

# 搜索结果高亮
# color in search output
alias grep='grep --color=auto'

# 正则搜索高亮
# color for regex search
alias egrep='egrep --color=auto'

# 固定串搜索高亮
# color for fixed string
alias fgrep='fgrep --color=auto'

# 磁盘容量人类可读
# disk usage in K/M/G
alias df='df -h'
# 目录容量人类可读
# dir size in K/M/G
alias du='du -h'
# 内存用量以 M 为单位
# memory in megabytes
alias free='free -m'

# 查看命令历史
# show command history
alias h='history'
# 列出后台任务
# list background jobs
alias j='jobs -l'

# 上一级目录
# go up one level
alias ..='cd ..'
# 上两级目录
# go up two levels
alias ...='cd ../..'
# 上三级目录
# go up three levels
alias ....='cd ../../..'
# 上四级目录
# go up four levels
alias .....='cd ../../../..'

# 一次建多级目录并回显
# create nested dirs verbosely
alias mkdir='mkdir -pv'

# 命令速查中文
# tldr in Chinese
alias tldr='tldr --language zh'

# 管道内容进剪贴板
# pipe text to clipboard
alias cpb="xclip -selection clip"

# 尾部空格允许接别名
# trailing space enables aliases
alias sudo='sudo '

# ---------- 提示符 prompt ----------
# 绿色 user@host 蓝色路径
# green user@host, blue path
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# ---------- 历史 history ----------
# 内存里最多留多少条历史
# max history entries in memory
HISTSIZE=10000

# 历史文件最多留多少条
# max entries in history file
HISTFILESIZE=20000

# 连续重复不记, 写入时再去重
# skip consecutive dupes, dedupe on write
HISTCONTROL=ignoredups:erasedups

# 历史条目显示时间戳
# show timestamp in history
HISTTIMEFORMAT="%F %T "

# 这些命令不进历史
# never save these commands
HISTIGNORE='ls:ll:cd:exit:history'

# 追加而非覆盖历史文件
# append, do not overwrite
shopt -s histappend

# 出提示符前: 写回本终端, 再拉其他
# write back, then pull other terminals
PROMPT_COMMAND='history -a; history -n'

# ---------- 按键绑定 binding ----------
# C-p 按前缀搜上一条
# C-p: prefix search backward
bind '"\C-p": history-search-backward'
# C-n 按前缀搜下一条
# C-n: prefix search forward
bind '"\C-n": history-search-forward'
# 窗口改变后刷新行数列数
# refresh LINES/COLUMNS on resize
shopt -s checkwinsize

# ---------- 交互增强 shopt ----------
# sudo 后补全命令名
# complete commands after sudo
complete -cf sudo

# 双星递归匹配子目录
# ** matches recursively
shopt -s globstar

# cd 目录名拼错自动纠正
# fix typos in cd target
shopt -s cdspell

# 直接敲目录名等于 cd
# type dir name to cd
shopt -s autocd

# cd 目标不存在时试同名变量
# try variable of same name
shopt -s cdable_vars

# 命令路径失效则重查 PATH
# rehash if path is stale
shopt -s checkhash

# exec 失败不退出 shell
# keep shell on exec failure
shopt -s execfail

# GNU 风格错误信息
# GNU-style error messages
shopt -s gnu_errfmt

# 历史展开后先确认执行
# confirm before history expansion
shopt -s histverify

# 多行命令保留换行
# keep newlines in saved commands
shopt -s lithist

# 无匹配时展开为空
# expand to nothing if no match
shopt -s nullglob

# 退出前有后台任务则提醒
# warn if jobs are running
shopt -s checkjobs

# 目录名拼错自动纠正
# fix typos in dir completion
shopt -s dirspell

# 空行不按 Tab 补全
# no completion on empty line
shopt -s no_empty_cmd_completion
