#!/usr/bin/env bash
which git > /dev/null 2>&1
if [ $? -ne 0 ]
then
  echo Installing Git...
  sudo apt install --upgrade -y git
  which git > /dev/null 2>&1
  if [ $? -ne 0 ]
  then
    echo Failed to install Git, exiting.
    exit 1
  fi
else
  echo Git already installed.
fi

git config --global core.editor vim

