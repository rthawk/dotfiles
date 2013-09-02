#!/bin/sh
cd $(dirname $0)
for dotfile in .?*; do
    case $dotfile in
        *.elc)
            continue;;
        ..)
            continue;;
        .git)
            continue;;
        .gitignore)
            continue;;
        *)
            ln -Fis "$PWD/$dotfile" $HOME
            ;;
    esac
done

