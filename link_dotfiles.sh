#!/usr/bin/env bash
./update_submodules.sh

# get ssh-copy-id utility
[[ "$(uname -s)" == "Darwin" && ! -f /usr/local/bin/ssh-copy-id ]] && curl -L https://raw.githubusercontent.com/beautifulcode/ssh-copy-id-for-OSX/master/install.sh | sh

# ack settings
ln -fFs ~/dotfiles/ack/ackrc              ~/.ackrc

# bash settings
ln -fFs ~/dotfiles/bash/profile           ~/.profile
ln -fFs ~/dotfiles/bash/bash_profile      ~/.bash_profile
ln -fFs ~/dotfiles/bash/bashrc            ~/.bashrc

# git settings
ln -fFs ~/dotfiles/git/gitconfig          ~/.gitconfig
ln -fFs ~/dotfiles/git/githelpers         ~/.githelpers
# rather than a global gitignore file, using .cvsignore which is picked up by other
# utilities automatically - see https://github.com/tpope/vim-pathogen#faq
ln -fFs ~/dotfiles/git/cvsignore          ~/.cvsignore

# hg/mercurial settings
ln -fFs ~/dotfiles/hg/hgrc                ~/.hgrc
[[ ! -d $HOME/hg-prompt ]] && hg clone http://bitbucket.org/sjl/hg-prompt/

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

