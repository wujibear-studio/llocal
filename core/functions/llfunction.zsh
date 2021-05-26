# <name> - creates a <name> function from a template
function llfunction() {
  filename=$(lldowncase $1)
  dir=$LLOCAL_USER/functions
  file=$dir/$filename.zsh
  mkdir -p $dir

  if [ ! -f "$file" ]; then
    echo "# YOUR $filename DESCRIPTION HERE

function $filename() {
  # noop
}
" > $file
  fi

  $EDITOR $file

  llcolor $GREEN "Made a neato new $1 function for ya, and..."
  llsource
}