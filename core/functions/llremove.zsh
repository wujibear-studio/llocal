# <folder_type> <filename> <type?> - Removes <filename> from <folder_type>

function llremove() {
  type=${3:=thing}
  filename=$(lldowncase $2)
  file=$LLOCAL_USER/$1/$filename.zsh
  rm $file
  echo "Removed that $filename $type for ya"
}