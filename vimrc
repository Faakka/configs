" POWERLINE
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup
set showtabline=2
set laststatus=2
set t_Co=256
set timeoutlen=200

syntax on
filetype on

set noerrorbells    " disables the end of the line bell
set tabstop=4 softtabstop=4		" Tab displays 4 spaces
set shiftwidth=4
set expandtab		" turns tab into spaces
set autoindent     " auto indentation
set nu              " linenumbers
set nowrap  		" disables linewrapping
set smartcase       " do smart case matching
set nobackup		" wont create backup files
set noswapfile		" wont create swap files
set undodir=~/.vim/undodir
set undofile
set incsearch       " incremental searching (highlighting)
set encoding=utf-8 
set mouse=a         " Enable mouse usage (all modes)
set scrolloff=5     " distance (unit: line) when scrolling
set number          " show current line number
set relativenumber  " show relative line numbers

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
"Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
"Plug 'kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'junegunn/fzf'
call plug#end()

colorscheme gruvbox
" colorscheme dracula
set background=dark

let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let mapleader= " "

:imap ii <Esc>

":nnoremap <F3> :UndotreeShow<CR>
":nnoremap <F4> :UndotreeHide<CR>

:nnoremap <F1> :wincmd v<CR>
":nnoremap <F2> :Ex <bar> :vertical resize 30<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>uu :UndotreeHide<CR>

nnoremap <leader>fm :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
"nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" YCM
nnoremap <silent> <leader>to :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>fix :YcmCompleter FixIt<CR>

" Verilog
"nnoremap <leader>i :VerilogFollowInstance<CR>
"nnoremap <leader>I :VerilogFollowPort<CR>

" Behave Vim
nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo breakpoint
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap [ [<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap ( (<c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
"nnoremap <leader>k :m .-2<CR>==
"nnoremap <leader>j :m .+1<CR>==

" Jumping back to the last file open
nnoremap <leader><Tab> <C-^>

" Launching fuzzy finder
nnoremap <leader>p :FZF<CR>
