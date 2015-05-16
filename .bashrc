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
alias ttt='ti build -p ios -C 82A28DBF-1DE5-4F12-91A9-FC9B274D8'

#titanium workspaceに移動
alias cdti='cd Documents/Titanium_Studio_Workspace/'

#Documents/developに移動
alias cddd='cd Documents/develop'


export PATH=/Users/tsubasa/adt-bundle-mac-x86_64-20140321/sdk/tools:$PATH
