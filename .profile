
for prof in "$HOME"/.profile.d/login/*.sh ; do
  test -r "$prof" && . "$prof"
done ; unset prof

OS_CONF=$HOME/.profile.d/$(uname)
test -r "$OS_CONF" && . "$OS_CONF"
unset OS_CONF

PATH=$(printf %s "$PATH" | awk -v RS=: '!a[$0]++' | paste -s -d: -)
ENV=$HOME/.shrc
export PATH ENV

