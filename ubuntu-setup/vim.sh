#!/usr/bin/env bash
which vim
if [ $? -eq 0 ]
then
  echo Vim already installed.
  exit 1
fi

sudo apt install -y --upgrade vim
if [ $? -ne 0 ]
then
  echo Vim install FAILED
  exit 1
fi

which vim
if [ $? -eq 0 ]
then
  echo Could not find Vim after install.
  exit 1
fi

