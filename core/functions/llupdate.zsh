# updates LLOCAL by pulling the latest from the repo
function llupdate() {
  cd $LLOCAL_DIR
  llcolor $YELLOW "Fetching the latest version of llocal..."
  git pull origin main
  llsource
}