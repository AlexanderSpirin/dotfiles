#!/usr/bin/env bash

sudo apt-get install screen git vim zsh

if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  sh -c "$(wget https://raw.githubusercontent.com/AlexanderSpirin/oh-my-zsh/master/tools/install.sh -O -)"
fi

# change shell
chsh -s /bin/zsh

# install command-line fuzzy finder
if [ -d "${HOME}/.fzf" ]; then
  (cd ${HOME}/.fzf && git pull && ./install)
else
  git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME}/.fzf && ${HOME}/.fzf/install
fi

cp .ackrc    ${HOME}/.ackrc
cp .screenrc ${HOME}/.screenrc
cp .zshrc    ${HOME}/.zshrc
