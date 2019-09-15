
for prof in "$HOME"/.profile.d/*.sh ; do
  test -r "$prof" && . "$prof"
done ; unset prof

OS=$(uname)
test -r "$HOME/.profile.d/$OS" && . "$HOME/.profile.d/$OS"

export PATH=$(printf %s "$PATH" | awk -v RS=: '!a[$0]++' | paste -s -d: -)
export ENV=$HOME/.shrc

