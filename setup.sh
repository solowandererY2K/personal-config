#!/usr/bin/env bash
# exit on error
set -e

echo Making sure you have the Apt package manager...
which apt > /dev/null 2>&1
if [ $? -ne 0 ]
then
  echo This system does not have the Apt package manager.
  exit 1
fi

copy_if_needed() {
  if [ ! -f "$HOME/$1" ]
  then
    cp "$1" ~
    echo Copied "$1"
  else
    echo File "$1" already exists in your home directory.
  fi
}

echo Copying config files to home directory...
copy_if_needed global.gitignore
copy_if_needed .gitconfig
copy_if_needed .vimrc

cd ubuntu-setup
./git.sh
./vim.sh
./vundle.sh
