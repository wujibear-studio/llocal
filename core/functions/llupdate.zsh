# updates LLOCAL by pulling the latest from the repo
function llupdate() {
  current_dir=$PWD
  cd $LLOCAL_DIR
  llcolor $YELLOW "Fetching the latest version of llocal..."
  git pull origin main
  cd $current_dir
  llsource
}