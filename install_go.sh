#!/usr/bin/env bash
if [[ ! -d $HOME/go ]]; then
  hg clone -u default https://code.google.com/p/go $HOME/go
  cd $HOME/go/src
  ./all.bash
fi

