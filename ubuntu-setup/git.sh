#!/usr/bin/env bash
which git
if [ $? -ne 0 ]
then
  echo Installing Git...
  sudo apt install --upgrade -y git
  which git
  if [ $? -ne 0 ]
  then
    echo Failed to install Git, exiting.
    exit 1
  fi
fi

git config --global core.editor vim

