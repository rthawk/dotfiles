
if test -d "$HOME/.profile.d/" ; then
  for prof in "$HOME"/.profile.d/*.sh ; do
    test -r "$prof" && . "$prof"
  done
  unset prof
fi

OS=$(uname)
test -r "$HOME/.profile.d/$OS" && . "$HOME/.profile.d/$OS"

PATH=$(printf %s "$PATH" | awk -vRS=: '!a[$0]++' | paste -s -d: -)
export PATH

