### 重複したパスを登録しない
typeset -U path

# 補完機能
autoload -U compinit
compinit

# 補完style
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# history on memory
HISTSIZE=10000

# history on histfile
SAVEHIST=30000

# 履歴の共有
setopt share_history

# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups

# 前履歴の一覧表示
function history-all { history -E 1 }

# history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space

# プロンプトの設定
#PS1="[${USER}@${HOST%%.*} %1~]%(!.#.$) "
PS1="[${USER}@%m %1~]%(!.#.$) "

# C-S で画面が停止するのをやめる. 代わりに履歴検索が使えるようになる
stty stop undef

# homebrew
export PATH=/usr/local/bin:$PATH


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#文字コードの設定
export LANG=ja_JP.UTF-8

### grep

### grepデフォルトオプションの設定
export GREP_OPTIONS
### バイナリファイルにはマッチさせない
GREP_OPTIONS="--binary-files=without-match"
### grep対象としてディレクトリを指定したらディレクトリ内を再帰的にgrep
# GREP_OPTIONS="--directories=recurse $GREP_OPTIONS"

GREP_OPTIONS="--exclude=tags $GREP_OPTIONS"
### 管理用ディレクトリを無視する
if grep --help 2>&1 | grep -q -- --exclude-dir; then
GREP_OPTIONS="--exclude-dir=.svn $GREP_OPTIONS"
GREP_OPTIONS="--exclude-dir=.git $GREP_OPTIONS"
fi

### 可能なら色をつける
if grep --help 2>&1 | grep -q -- --color; then
GREP_OPTIONS="--color=auto $GREP_OPTIONS"
fi

# lsを色付け
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# lessを色付け表示させる 要source-highlight
EXISTS_SOURCE_HIGHLIGHT='/usr/local/Cellar/source-highlight'
if [ -e $EXISTS_SOURCE_HIGHLIGHT ]; then
    # print "$EXISTS_SOURCE_HIGHLIGHT directory found."
    export LESS='-R'
    export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
else
    print "$EXISTS_SOURCE_HIGHLIGHT directory is not found."
    print "please install source-highlight , type 'brew list | grep source-highlight' "
fi

# airport : MacOSXでコマンドラインからネットワーク設定を確認・変更できるコマンド
MAC_AIRPORT_COMMAND='/usr/sbin/airport'
if ! [ -e $MAC_AIRPORT_COMMAND -a `uname -s` = "Darwin" ]; then
    print 'OS is Darwin , and airport not exists, make Symlink. '
    print '=> type "sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport"'
fi

########### alias ###########
alias ctags="`brew --prefix`/bin/ctags"
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias ll='ls -l'

# man を日本語でも選べるようにする
alias man='env LANG=C man'
alias jman='env LANG=ja_JP.UTF-8 man'

# zsh completion
fpath=(/usr/local/share/zsh-completions $fpath)

# powerline
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

