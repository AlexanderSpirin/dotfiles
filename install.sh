#!/usr/bin/env bash

if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install command-line fuzzy finder
if [ -d "${HOME}/.fzf" ]; then
  (cd ${HOME}/.fzf && git pull && ./install)
else
  git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME}/.fzf && ${HOME}/.fzf/install
fi

# install pyenv
if [ -d "${HOME}/.pyenv" ]; then
  (cd ${HOME}/.pyenv && git pull)
else
  (git clone https://github.com/pyenv/pyenv.git ~/.pyenv)
fi

cp .*rc ${HOME}/
