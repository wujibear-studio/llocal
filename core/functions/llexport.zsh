#!/bin/zsh

function llexport() {
  file=$LLOCAL_USER/exports/$1.zsh
  export=$(llupcase $1)

  if [ -f $file ]; then
    echo "You already have a $filename export"
    return 
  fi
  echo "export $export=$2" > $file

  echo "Made a neato new $export export for ya, and..."
  llsource
}