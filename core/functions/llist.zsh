# list all commands available from llocal
function llist() {
  llcolor $MAGENTA $LLOCAL_TEXT
  llcolor $LIGHT_MAGENTA $LLOCAL_CORE_TITLE
  llist_set $LLOCAL_CORE
  llcolor $LIGHT_MAGENTA $LLOCAL_USER_TITLE
  llist_set $LLOCAL_USER
}

# <filepath> - helper for llisting a single file
function llist_file() {
  name=$1:t:r
  description=$(head -n 1 $1)
  printf "%33s %-44s\n" $(llcolor $YELLOW $name $BOLD) "$(llcolor $YELLOW $description $ITALIC)"
}

# <folderpath> - a helper function for llisting all the subfolders of a certain type
function llist_set() {
  # Prevents error messages when there's no folder or files within them
  setopt +o nomatch

  # Source all custom files within config folders
  for folder in exports functions partials aliases
  do
    llist_dir $1 $folder
  done
}

# <folder_path> <folder_name> - helper to llist all files in a subfolder 
function llist_dir() {
  dir_path=$1/$folder
  folder_contents=$(ls -A $dir_path)

  if [ ${#folder_contents} -gt 0 ]
  then 
    folder_name=$(llupcase $folder)
    llcolor $LIGHT_MAGENTA "\n\n$folder_name"
    llcolor $MAGENTA "######################"

    printf "%33s %s\n" $(llcolor $MAGENTA "name" $BOLD) $(llcolor $MAGENTA "description/preview" $ITALIC)

    for file in $1/$folder/*.zsh
    do
      if [[ -f $file ]]
      then
        llist_file $file
      fi
    done
  fi
}
