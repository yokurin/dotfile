#ls に色を付ける
alias ls='ls -G'

# ls -lをllにする
alias ll='ls -laG'


# ファイルの拡張子指定
function ff (){
    find . -type f -name "*.$1" | xargs grep -n "$2"
}

# grepに色をつける
export GREP_COLOR='1;37;41'
alias grep='grep -E --color=auto'

#titanium iosで起動
alias ttt='ti build -p ios'


