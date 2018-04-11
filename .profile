#!/bin/sh

if test -d ~/profile.d/; then
  for prof in ~/profile.d/*.sh; do
    test -r "$prof" && . "$prof"
  done
  unset prof
fi

