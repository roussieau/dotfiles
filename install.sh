#!/bin/zsh
current=~/.dotfiles

ln -svf $current/vim/vimrc ~/.vimrc
ln -svf $current/tmux/tmux.conf ~/.tmux.conf
ln -svf $current/zsh/zshrc ~/.zshrc
ln -svf $current/git/gitconfig ~/.gitconfig
ln -svf $current/vim/vim/* ~/.vim
