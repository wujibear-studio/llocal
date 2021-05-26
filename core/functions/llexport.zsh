# <name> <value> - creates a <name> export with <value> as the value

function llexport() {
  export_name=$(llupcase $1)
  filename=$(lldowncase $1)
  dir=$LLOCAL_USER/exports
  file=$dir/$filename.zsh
  mkdir -p $dir

  if [ -f $file ]; then
    echo "You already have a $filename export"
    return 
  fi
  echo "export $export_name=$2" > $file

  echo "Made a neato new $export_name export for ya, and..."
  llsource
}