# <folder_type> <filename> <type?> - Removes <filename> from <folder_type>

function llremove() {
  if [[ ! -n "$1" || ! -n "$2" ]]; then 
    llcolor $RED "Not enough args bruh"
    return
  fi

  type=${3:=thing}
  filename=$(lldowncase $2)
  file=$LLOCAL_USER/$1/$filename.zsh
  rm $file
  llcolor $GREEN "Removed that $filename $type for ya!"
}