" Common -------------------------------
set nocompatible                " vim
set visualbell t_vb=            " �r�[�v���Ȃ�
set shortmess+=I                " �N�����̃��b�Z�[�W��\�����Ȃ�

" File ---------------------------------
set autoread                    " �X�V�������ēǍ���
set hidden                      " �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set nobackup                      " �o�b�N�A�b�v�����Ȃ�
"set backupdir=$HOME/vim_backup  " �o�b�N�A�b�v�t�@�C���̃f�B���N�g��
set noswapfile                    " �X���b�v�t�@�C�������Ȃ�
"set directory=$HOME/vim_swap    " �X���b�v�t�@�C���̃f�B���N�g��
"autocmd BufWritePre * :%s/\s\+$//ge     " �ۑ����ɍs���̋󔒂���������
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
"set laststatus=2                " �X�e�[�^�X���C������ɕ\��

" �S�p�X�y�[�X�\��
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=brown guibg=brown
  autocmd VimEnter,WinEnter * match IdeographicSpace /�@/
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
