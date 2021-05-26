#!/bin/zsh

LLOCAL_DIR="${LLOCAL_DIR:-$HOME/.llocal}"
DEFAULT_SHELL="${LLOCAL_SHELL:-$HOME/.zshrc}"
DEST_DIR="$LLOCAL_DIR/user/partials"
DESTINATION="$DEST_DIR/original.zsh"

source $LLOCAL_DIR/core/functions/llcolor.zsh

if [ -f $DEFAULT_SHELL ] && grep -q "llocal/init.zsh" $DEFAULT_SHELL; then
  llcolor $GREEN "Looks like you've already got Llocal installed!"
else
  mkdir -p $DEST_DIR

  if [ -f $DEFAULT_SHELL ]; then
    llcolor $YELLOW "Your current shell RC file will be backed up to $DESTINATION"
    mv $DEFAULT_SHELL $DESTINATION
  fi

  echo "source $LLOCAL_DIR/init.zsh" > $DEFAULT_SHELL
  source $DEFAULT_SHELL
fi

llocal