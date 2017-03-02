#!/usr/bin/env bash

# install command-line fuzzy finder
if [ -d "${HOME}/.fzf" ]; then 
  cd ${HOME}/.fzf && git pull && ./install
else
  git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME}/.fzf && ${HOME}/.fzf/install
fi
