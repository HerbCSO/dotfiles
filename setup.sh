#!/usr/bin/env bash
# Install oh-my-zsh if needed
test -d "$HOME/.oh-my-zsh" || sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install rvm if needed
test -x "$(/usr/bin/which rvm)" || (gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \curl -sSL https://get.rvm.io | bash -s stable --ruby)

./update_submodules.sh

# get ssh-copy-id utility
[[ "$(uname -s)" == "Darwin" && ! -f /usr/local/bin/ssh-copy-id ]] && curl -L https://raw.githubusercontent.com/beautifulcode/ssh-copy-id-for-OSX/master/install.sh | sh

# ack settings
ln -fFs ~/dotfiles/ack/ackrc              ~/.ackrc

# bash settings
ln -fFs ~/dotfiles/bash/profile           ~/.profile
ln -fFs ~/dotfiles/bash/bash_profile      ~/.bash_profile
ln -fFs ~/dotfiles/bash/bashrc            ~/.bashrc

# hg/mercurial settings
if ! hg > /dev/null 2>&1; then
  case "$(uname -s)" in
    Linux)
      sudo apt-get install mercurial
      ;;
    Darwin)
      brew install mercurial
      ;;
    *)
      echo "Sorry, I don't know how to install Mercurial/hg on $(uname -a)"
      exit 1
      ;;
  esac
fi
[[ ! -d $HOME/hg-prompt ]] && hg clone http://bitbucket.org/sjl/hg-prompt/ $HOME/hg-prompt
ln -fFs ~/dotfiles/hg/hgrc                ~/.hgrc

# Now that we have hg installed, we can install Go from source
./install_go.sh

# git settings - needs Go installed to compile hub
mkdir -p $HOME/bin
[[ ! -d $HOME/hub ]] && git clone https://github.com/github/hub.git $HOME/hub || (cd $HOME/hub; git stash; git pull $HOME/hub; git stash pop)
cd $HOME/hub
./script/build
cp hub $HOME/bin
cd -
ln -fFs ~/dotfiles/git/gitconfig          ~/.gitconfig
ln -fFs ~/dotfiles/git/githelpers         ~/.githelpers
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
function install_tmux_mem_cpu_load() {
  [[ ! -d $HOME/tmux-mem-cpu-load ]] && git clone https://github.com/thewtex/tmux-mem-cpu-load.git $HOME/tmux-mem-cpu-load || (cd $HOME/tmux-mem-cpu-load; git stash; git pull $HOME/tmux-mem-cpu-load; git stash pop)
  cd $HOME/tmux-mem-cpu-load
  cmake .
  make
  sudo make install
  cd -
}
ln -fFs ~/dotfiles/tmux/tmux.conf         ~/.tmux.conf
ln -fFs ~/dotfiles/tmux/plugins           ~/.tmux/plugins
case "$(uname -s)" in
  Linux)
    cmake > /dev/null || sudo apt-get install cmake
    install_tmux_mem_cpu_load
    ;;
  Darwin)
    cmake > /dev/null || brew install cmake
    install_tmux_mem_cpu_load
    ;;
  *)
    echo "You need cmake to compile tmux-mem-cpu-load"
    ;;
esac

# Install Powerline
pip install --upgrade powerline-status

# zsh settings
ln -fFs ~/dotfiles/zsh/zshrc              ~/.zshrc
ln -fFs ~/dotfiles/zsh/zprofile           ~/.zprofile

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

