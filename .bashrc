#
# ~/.bashrc
#
#export http_proxy=http://127.0.0.1:8787
#export https_proxy=http://127.0.0.1:8787
TERM=xterm-256color
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source /usr/share/git/completion/git-completion.bash
alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"
