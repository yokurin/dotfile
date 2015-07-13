" 行を強調表示
set cursorline
" 列を強調表示
set cursorcolumn

" タブを表示するときの幅
set tabstop=4
set autoindent
" set expandtab
set shiftwidth=4


" 80文字で赤線
set textwidth=0
if exists('&colorcolumn')
	set colorcolumn=+1
	autocmd FileType sh,perl,vim,ruby,python,javascript setlocal textwidth=80
endif

"** システム設定 **
set nocompatible
set noswapfile                      "swpの作成無効化
set nobackup                        "~の作成無効化
set writebackup                     "上書き成功時に~を削除
set clipboard+=unnamed,autoselect   "クリップボードを共有
" 
" "** 文字コード設定 **
set encoding=utf-8                  "vim
set fileencoding=utf-8              "保存するファイル
set fencs=iso-2022-jp,enc-jp,cp932  "開くファイル
"  
"** 表示設定 **
syntax on                           "ハイライト表示
set title                           "タイトル
set number                          "行番号
 
"** カラースキーマ設定 **
set t_Co=256
colorscheme molokai
let g:molokai_original=1
set background=dark
 
set tabstop=4                       "タブ文字幅
set shiftwidth=4                    "インデント幅
set noexpandtab                     "挿入モードでタブ文字有効
set autoindent
set smartindent
set smarttab
set smartcase " 小文字のみで検索したときに大文字小文字を無視する


   
     "** ファイル別設定 **




" tput colors が 256 になる TERM が設定されているとき
" カラースキーム wombat256 を有効にできます。
if &t_Co >= 256 || has("gui_running")
  "colorscheme wombat256
endif


" ターミナルでマウスを使用できるようにする
set mouse=a
set guioptions+=a
set ttymouse=xterm2

"backspaceが効かない時
set backspace=indent,eol,start


" 検索時のハイライト
set hlsearch


" 行数の表示
set number

" Macのクリップボードにヤンク
set clipboard=unnamed,autoselect


" ------------------ここからneobundle初期設定---------------------------
" 以下を追記
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  " 以下は必要に応じて追加
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'airblade/vim-gitgutter' " gitの差分を表示するぜ
  NeoBundle 'lilydjwg/colorizer'		"カラーコードをその色に
  NeoBundle 'Lokaltog/vim-powerline'            " ステータスライン
  NeoBundle 'pekepeke/titanium-vim'             " Titanium
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'thinca/vim-quickrun'
  NeoBundle 'nathanaelkane/vim-indent-guides' " インデントに色を付けて見やすくする
  call neobundle#end()
endif 


" 以下は必要に応じて追加
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'airblade/vim-gitgutter' " gitの差分を表示するぜ
"NeoBundle 'lilydjwg/colorizer'		"カラーコードをその色に
"NeoBundle 'Lokaltog/vim-powerline'            " ステータスライン
"NeoBundle 'pekepeke/titanium-vim'             " Titanium
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'nathanaelkane/vim-indent-guides' " インデントに色を付けて見やすくする

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_size = 1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

filetype plugin indent on


" --------------ここまでneobundke----------------------------------


"----------------------------- NERDtree設ここから定--------------------------
let NERDTreeShowHidden = 1
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
 	autocmd VimEnter * execute 'NERDTree ./'
endif
let g:NERDTreeWinSize=30
"-------------------------------NERDTreeここまで--------------------------
