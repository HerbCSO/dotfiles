#!/usr/bin/env bash
# ack settings
ln -fFs ~/dotfiles/ack/ackrc              ~/.ackrc
# bash settings
ln -fFs ~/dotfiles/bash/profile           ~/.profile
ln -fFs ~/dotfiles/bash/bash_profile      ~/.bash_profile
ln -fFs ~/dotfiles/bash/bashrc            ~/.bashrc
# git settings
ln -fFs ~/dotfiles/git/gitconfig          ~/.gitconfig
ln -fFs ~/dotfiles/git/gitignore_global   ~/.gitignore_global
# rather than a global gitignore file, using .cvsignore which is picked up by other
# utilities automatically - see https://github.com/tpope/vim-pathogen#faq
ln -fFs ~/dotfiles/git/cvsignore          ~/.cvsignore
# screen settings
ln -fFs ~/dotfiles/screen/screenrc        ~/.screenrc
# vim settings
ln -fFhs ~/dotfiles/vim                    ~/.vim
ln -fFs ~/dotfiles/vim/vimrc              ~/.vimrc
# zsh settings
ln -fFs ~/dotfiles/zsh/zshrc              ~/.zshrc
# inputrc
ln -fFs ~/dotfiles/inputrc                ~/.inputrc
# gemrc
ln -fFs ~/dotfiles/gemrc                  ~/.gemrc
# GRC
ln -fFs ~/dotfiles/grcat                  ~/.grcat
