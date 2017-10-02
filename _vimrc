" Common -------------------------------
set nocompatible                " vim
set visualbell t_vb=            " ビープ音なし
set shortmess+=I                " 起動時のメッセージを表示しない

" File ---------------------------------
set autoread                    " 更新時自動再読込み
set hidden                      " 編集中でも他のファイルを開けるようにする
set nobackup                      " バックアップを取らない
"set backupdir=$HOME/vim_backup  " バックアップファイルのディレクトリ
set noswapfile                    " スワップファイルを作らない
"set directory=$HOME/vim_swap    " スワップファイルのディレクトリ
"autocmd BufWritePre * :%s/\s\+$//ge     " 保存時に行末の空白を除去する
syntax on                       " シンタックスカラーリングオン

" Indent -------------------------------
set expandtab                   " タブの代わりに空白文字を挿入
set tabstop=4                   " Tab文字を画面上で何文字分に展開するか
set shiftwidth=4                " cindentやautoindent時に挿入されるインデントの幅
set softtabstop=0               " Tabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set autoindent                  " 自動インデント
set smartindent                 " スマートインデント

" Assist imputting ---------------------
set backspace=indent,eol,start  " バックスペースで特殊記号も削除可能に
set formatoptions=lmoq          " 整形オプション，マルチバイト系を追加
set clipboard=unnamed,autoselect        " バッファにクリップボードを利用する

" Complement Command -------------------
set wildmenu                    " コマンド補完を強化
set wildmode=list:full          " リスト表示，最長マッチ

" Search -------------------------------
set history=100                 " 検索パターンを100個まで履歴に残す
set ignorecase                  " 検索の時に大文字小文字を区別しない
set nowrapscan                  " 検索をファイルの先頭へループしない
set noincsearch                 " インクリメンタルサーチを使わない
set hlsearch                    " 検索文字をハイライト

" View ---------------------------------
set showmatch                   " 括弧の対応をハイライト
set matchtime=2                 " 対応する括弧の表示時間を2秒にする
set showcmd                     " 入力中のコマンドを表示
set showmode                    " 現在のモードを表示
set number                      " 行番号表示
set list                        " 不可視文字表示
set listchars=tab:>\            " 不可視文字の表示方法
set title                       " タイトルを表示する
set ruler                       " ルーラーを表示する
set scrolloff=5                 " 行送り
set display=uhex                " 印字不可能文字を16進数で表示
set textwidth=0                 " 入力されているテキストの最大幅を超えると改行されるのを無効にする
autocmd FileType text setlocal textwidth=0  " vimrc_exampleの値を上書き
set wrap                        " 画面幅で折り返す
"set laststatus=2                " ステータスラインを常に表示

" 全角スペース表示
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=brown guibg=brown
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

" etc
set foldmethod=marker

" Keymap -------------------------------
nnoremap ; :
nnoremap : ;

nnoremap <silent><ESC><ESC> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
nnoremap x "_x
nnoremap gh <C-w><C-h>
nnoremap gj <C-w><C-j>
nnoremap gk <C-w><C-k>
nnoremap gl <C-w><C-l>
nnoremap gu <C-^>
nnoremap gp :bp<cr>
nnoremap gn :bn<cr>
nnoremap gb :ls<CR>:buf 
nnoremap gB :ls<CR>:bd 
nnoremap gv :edit $MYVIMRC<CR>
nnoremap gV :edit $MYGVIMRC<CR>
nnoremap gr :source $MYVIMRC<CR>
nnoremap gR :source $MYGVIMRC<CR>
nnoremap <Leader>ct :so $VIMRUNTIME/syntax/colortest.vim<CR>

inoremap <Leader>c1 # --   -- #
inoremap <Leader>c2 ## ---   --- ##
inoremap <Leader>c3 ### ----   ---- ###
inoremap <Leader>hr1 ----
inoremap <Leader>hr2 - - - - - - - - - - - - - - - - - - - - - -
inoremap <Leader>br [[BR]]
