#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu"* ]] || [[ "$OSTYPE" == "darwin"* ]]; then
  curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  fetch -o "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "Unsupported OS: $OSTYPE"
  exit 1
fi
