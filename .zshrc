# 共通ファイルの読み込み
if [ -f ~/.shrc ] ; then
    . ~/.shrc
fi

# 重複したパスを登録しない
typeset -U path

# 補完機能
autoload -U compinit
compinit

# 補完style
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# pushd popd
setopt autopushd

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# 履歴の共有
setopt share_history

# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space

# 前履歴の一覧表示
function history-all { history -E 1 }

# history search
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward


# プロンプトの設定
#PS1="[${USER}@${HOST%%.*} %1~]%(!.#.$) "
PS1="[${USER}@%m %1~]%(!.#.$) "


#文字コードの設定
export LANG=ja_JP.UTF-8

### 管理用ディレクトリを無視する
GREP_OPTIONS="--exclude-dir=.svn $GREP_OPTIONS"
GREP_OPTIONS="--exclude-dir=.git $GREP_OPTIONS"

### 可能なら色をつける
if grep --help 2>&1 | grep -q -- --color; then
GREP_OPTIONS="--color=auto $GREP_OPTIONS"
fi

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

# zsh completion
fpath=(/usr/local/share/zsh-completions $fpath)

# powerline for zsh
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

