# <alias_name> <command> - runs your <command> when you call <alias_name> in the shell
function llalias() {
  filename=$(lldowncase $1)
  dir=$LLOCAL_USER/aliases
  file=$dir/$filename.zsh
  mkdir -p $dir

  if [ -f $file ]; then
    echo "You already have a $filename alias"
    return 
  fi

  echo "alias $1=\"$2\"" > $file

  llcolor $GREEN "Made a neato new $1 alias for ya, and..."
  llsource
}