# If you want to install to a different directory, 
# add a LLOCAL_USER export before sourcing this file

if [ -z "$LLOCAL_DIR" ]; then
  source $HOME/.llocal/core/exports/llocal_dir.zsh
fi

if [ -z "$LLOCAL_CORE" ]; then
  source $LLOCAL_DIR/core/exports/llocal_core.zsh
fi

if [ -z "$LLOCAL_USER" ]; then
  source $LLOCAL_CORE/exports/llocal_user.zsh
fi

source $LLOCAL_CORE/functions/llsource_dir.zsh

llsource_dir $LLOCAL_CORE
llsource_dir $LLOCAL_USER