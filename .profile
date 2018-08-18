
if test -d ~/.profile.d/; then
  for prof in ~/.profile.d/*.sh; do
    test -r "$prof" && . "$prof"
  done
  unset prof
fi

export PATH=$(printf %s "$PATH" | awk -vRS=: '!a[$0]++' | paste -s -d: )
