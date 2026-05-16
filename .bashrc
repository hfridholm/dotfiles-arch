#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# PS1='[\u@\h \W]\$ '
PS1='❯ '

# Neovim

export VISUAL=nvim
export EDITOR="$VISUAL"
export GIT_EDITOR=nvim

alias vim="nvim"

# Dotfiles

alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

alias movinfo="ffprobe -v error -select_streams v:0 -show_entries format=duration:format_tags=creation_time:stream=width,height,avg_frame_rate -of default=noprint_wrappers=1"

export MANPAGER="nvim +Man!"
