#!/bin/zsh

# allow default to be PWD?
function llsource_dir() {
  # Prevents error messages when there's no folder or files within them
  setopt +o nomatch

  # Source all custom files within config folders
  for folder in exports functions partials aliases
  do
    for file in $1/$folder/*.zsh
    do
      if [[ -f $file ]]
      then
        source $file
      fi
    done
  done
}
