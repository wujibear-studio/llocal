# <name> - creates a partial named <name> and opens it in your $EDITOR
function llpartial() {
  filename=$(lldowncase $1)
  dir=$LLOCAL_USER/partials
  file=$dir/$filename.zsh
  mkdir -p $dir

  if [ ! -f "$file" ]; then
    echo "# Remember to call llsource after :)" > $file
  fi

  $EDITOR $file

  llcolor $GREEN "Made a neato new $1 partial for ya, and..."
  llsource
}