#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Neovim

export VISUAL=nvim
export EDITOR="$VISUAL"
export GIT_EDITOR=nvim

alias vim="nvim"

# Dotfiles

alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

export MANPAGER="nvim +Man!"
