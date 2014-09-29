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
# vim settings
ln -fFs ~/dotfiles/vim-config/vimrc       ~/.vimrc
ln -fFs ~/dotfiles/my-vim-config/vimrc.mine       ~/dotfiles/vim-config/vimrc.mine
ln -fFs ~/dotfiles/my-vim-config/gvimrc.mine       ~/dotfiles/vim-config/gvimrc.mine
if [ ! -d ~/.vim ]; then ln -fFs ~/dotfiles/vim-config ~/.vim; fi
# screen settings
ln -fFs ~/dotfiles/screen/screenrc        ~/.screenrc
# tmux settings
ln -fFs ~/dotfiles/tmux/tmux.conf         ~/.tmux.conf
# zsh settings
ln -fFs ~/dotfiles/zsh/zshrc              ~/.zshrc
# oh-my-zsh settings
ln -fFs ~/dotfiles/zsh/herbcso.zsh-theme  ~/.oh-my-zsh/themes/herbcso.zsh-theme
# inputrc
ln -fFs ~/dotfiles/inputrc                ~/.inputrc
# gemrc
ln -fFs ~/dotfiles/gemrc                  ~/.gemrc
# GRC
ln -fFs ~/dotfiles/grcat                  ~/.grcat
# SVN settings
if [ ! -d ~/.subversion ]; then ln -fFs ~/dotfiles/subversion ~/.subversion; fi
# Aliases
ln -fFs ~/dotfiles/bash/alias             ~/.alias
# Slate config
ln -fFs ~/dotfiles/slate                  ~/.slate

