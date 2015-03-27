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
  call neobundle#end()
endif 

NeoBundleFetch 'Shougo/neobundle.vim'

" 以下は必要に応じて追加
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'airblade/vim-gitgutter' " gitの差分を表示するぜ
NeoBundle 'lilydjwg/colorizer'		"カラーコードをその色に
NeoBundle 'Lokaltog/vim-powerline'            " ステータスライン
NeoBundle 'pekepeke/titanium-vim'             " Titanium
NeoBundle 'scrooloose/nerdtree'


filetype plugin indent on


" --------------ここまでneobundke----------------------------------




" -------------------- color スキーマ------------------------

colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark


"---------------------------------ここまで--------------------------



"----------------------------- NERDtree設ここから定--------------------------
let NERDTreeShowHidden = 1
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
 	autocmd VimEnter * execute 'NERDTree ./'
endif
let g:NERDTreeWinSize=20
"-------------------------------NERDTreeここまで--------------------------
