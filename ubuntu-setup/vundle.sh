#!/usr/bin/env bash

# Install Vundle
VUNDLE_DIR=~/.vim/bundle/Vundle.vim
if [ ! -d "$VUNDLE_DIR" ]
then
  which git
  if [ $? -ne 0 ]
  then
    echo You need to install Git and put it on your system path.
    exit 1
  fi

  which vim
  if [ $? -ne 0 ]
  then
    echo You need to install Vim and put it on your system path.
    exit 1
  fi

  echo Installing Vundle...
  git clone https://github.com/VundleVim/Vundle.vim.git "$VUNDLE_DIR"
  if [ $? -ne 0 ]
  then
    echo Cloning Vundle FAILED.
    exit 1
  fi
fi

echo Installing all Vim plugins using Vundle...
vim +PluginInstall +qall
if [ $? -ne 0 ]
then
  echo Installing Vim plugins FAILED.
  exit 1
fi

