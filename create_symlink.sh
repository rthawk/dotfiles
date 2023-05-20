#!/bin/sh

BACKUPDIR=$HOME/dotfiles.bk.$(date +"%Y-%m-%d.%H%M%S")
mkdir "$BACKUPDIR"

cd "$(dirname "$0")" || return

echo "backup directory:  $BACKUPDIR"
echo "dotfiles path   :  $PWD"
echo ""
echo "installing dotfiles"

for dotfile in .?*; do
    case $dotfile in
        .. | .git | .gitignore )
            continue;;
        *)

            # remove old symlink
            [ -L "$HOME/$dotfile" ] && unlink "$HOME/$dotfile"

            # backup old file
            [ -e "$HOME/$dotfile" ] && mv -v "$HOME/$dotfile" "$BACKUPDIR"

            echo "symlink $PWD/$dotfile -> $HOME"
            ln -s "$PWD/$dotfile" "$HOME"
            ;;
    esac
done

echo "done."
