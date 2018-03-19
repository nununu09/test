" Common -------------------------------
set nocompatible                " vim
set visualbell t_vb=            " �r�[�v���Ȃ�
set shortmess+=I                " �N�����̃��b�Z�[�W��\�����Ȃ�
set autochdir                   " �����I�Ɉړ�����

" Encording ----------------------------
set encoding=cp932
set fileencodings=iso-2022-jp,euc-jp,cp932,sjis,utf-8
set fileformats=dos,unix,mac

" File ---------------------------------
set autoread                    " �X�V�������ēǍ���
set hidden                      " �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set nobackup                      " �o�b�N�A�b�v�����Ȃ�
set noswapfile                    " �X���b�v�t�@�C�������Ȃ�
"autocmd BufWritePre * :%s/\s\+$//ge     " �ۑ����ɍs���̋󔒂���������
set noundofile                    " undofile�����Ȃ�
syntax on                       " �V���^�b�N�X�J���[�����O�I��

" Indent -------------------------------
set expandtab                   " �^�u�̑���ɋ󔒕�����}��
set tabstop=4                   " Tab��������ʏ�ŉ��������ɓW�J���邩
set shiftwidth=4                " cindent��autoindent���ɑ}�������C���f���g�̕�
set softtabstop=0               " Tab�L�[�����������̑}�������󔒂̗ʁC0�̏ꍇ��tabstop�Ɠ����CBS�ɂ��e������
set autoindent                  " �����C���f���g
set smartindent                 " �X�}�[�g�C���f���g

" Assist imputting ---------------------
set backspace=indent,eol,start  " �o�b�N�X�y�[�X�œ���L�����폜�\��
set formatoptions=lmoq          " ���`�I�v�V�����C�}���`�o�C�g�n��ǉ�
set clipboard=unnamed,autoselect        " �o�b�t�@�ɃN���b�v�{�[�h�𗘗p����

" Complement Command -------------------
set wildmenu                    " �R�}���h�⊮������
set wildmode=list:full          " ���X�g�\���C�Œ��}�b�`

" Search -------------------------------
set history=100                 " �����p�^�[����100�܂ŗ����Ɏc��
set ignorecase                  " �����̎��ɑ啶������������ʂ��Ȃ�
set nowrapscan                  " �������t�@�C���̐擪�փ��[�v���Ȃ�
set noincsearch                 " �C���N�������^���T�[�`���g��Ȃ�
set hlsearch                    " �����������n�C���C�g

" View ---------------------------------
set showmatch                   " ���ʂ̑Ή����n�C���C�g
set matchtime=2                 " �Ή����銇�ʂ̕\�����Ԃ�2�b�ɂ���
set showcmd                     " ���͒��̃R�}���h��\��
set showmode                    " ���݂̃��[�h��\��
set number                      " �s�ԍ��\��
set list                        " �s�������\��
set listchars=tab:>\            " �s�������̕\�����@
set title                       " �^�C�g����\������
set ruler                       " ���[���[��\������
set scrolloff=5                 " �s����
set display=uhex                " �󎚕s�\������16�i���ŕ\��
set textwidth=0                 " ���͂���Ă���e�L�X�g�̍ő啝�𒴂���Ɖ��s�����̂𖳌��ɂ���
autocmd FileType text setlocal textwidth=0  " vimrc_example�̒l���㏑��
set wrap                        " ��ʕ��Ő܂�Ԃ�

" Font --------------------------------
set ambiwidth=double
set rop=type:directx,renmode:5

" �S�p�X�y�[�X�\��
"augroup highlightIdegraphicSpace
"  autocmd!
"  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=brown guibg=brown
"  autocmd VimEnter,WinEnter * match IdeographicSpace /�@/
"augroup END

" etc
set foldmethod=marker

" Keymap -------------------------------
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
nnoremap gi :Unite buffer<CR>
nnoremap gm :Unite file_mru<CR>
nnoremap gM :Unite -default-action=tabopen directory_mru<CR>
nnoremap gy :Unite -buffer-name=register register<CR>
nnoremap gb :ls<CR>:buf 
nnoremap gB :ls<CR>:bd 
nnoremap gv :edit $MYVIMRC<CR>
nnoremap gV :edit $MYGVIMRC<CR>
nnoremap gr :source $MYVIMRC<CR>
nnoremap gR :source $MYGVIMRC<CR>
nnoremap tn :tabnew<CR>
nnoremap <Leader>ct :so $VIMRUNTIME/syntax/colortest.vim<CR>

" neobundle.vim
filetype plugin indent off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
"NeoBundle 'git://github.com/Shougo/vimfiler.git'
"NeoBundle 'git://github.com/Shougo/vimshell.git'
"NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/neomru.vim.git'
NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'Align'
NeoBundle 'open-browser.vim'
"NeoBundle 'vim-scripts/buftabs'
NeoBundle 'glidenote/memolist.vim'
"NeoBundle 'HybridText'
"NeoBundle 'cocopon/vaffle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'simeji/winresizer'

filetype plugin indent on

" align
let g:Align_xstrlen = 3

" open-brower
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)

" memolist
let g:memolist_memo_suffix = "md"
nnoremap mn  :MemoNew<CR>
nnoremap ml  :MemoList<CR>
nnoremap mg  :MemoGrep<CR>

" hybridtext
autocmd BufEnter * if &filetype == "" | setlocal ft=hybrid | endif

" NERDtree
nnoremap ff :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1

" ctrlp
let g:ctrlp_clear_cache_on_exit = 0     " �L���b�V�����I�����ɍ폜���Ȃ�
let g:ctrlp_lazy_update = 1             " �x���ĕ`��
let g:ctrlp_max_height = 20             " CtrlP�̃E�B���h�E�ő卂��

" winresizer
let g:winresizer_vert_resize=2
let g:winresizer_horiz_resize=1
