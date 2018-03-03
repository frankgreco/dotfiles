#!/bin/bash

# make sure that our shell is set to ZSH
chsh -s /bin/zsh

# needed for our zsh prompt
npm install --global pure-prompt

# install custom fonts used by atom
cp fonts/*.ttf $HOME/Library/Fonts/

# setup symlinks
custom_configurations=(
  "atom"
  "oh-my-zsh"
  "gitconfig"
  "zshrc"
)

for cfg in ${custom_configurations[@]}
do
  echo "${cfg} -> ${HOME}/.${cfg}"
  ln -sfn $cfg $HOME/.$cfg
done
