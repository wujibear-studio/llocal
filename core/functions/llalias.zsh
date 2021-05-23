#!/bin/zsh

function llalias() {
  filename=$(lldowncase $1)
  file=$LLOCAL_USER/aliases/$filename.zsh
  if [ -f $file ]; then
    echo "You already have a $filename alias"
    return 
  fi

  echo "alias $1=\"$2\"" > $file

  echo "Made a neato new $1 alias for ya, and..."
  llsource
}