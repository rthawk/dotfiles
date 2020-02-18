
for prof in "$HOME"/.profile.d/login/*.sh ; do
  test -r "$prof" && . "$prof"
done ; unset prof

PATH=$(printf %s "$PATH" | awk -v RS=: '!a[$0]++' | paste -s -d: -)
ENV=$HOME/.shrc
export PATH ENV

