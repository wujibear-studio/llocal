# creates a dock-space for OSX users

function llspace() {
  defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
  killall Dock
  echo "Made a dock space for ya"
}
