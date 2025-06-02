if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
    set fileencodings=utf-8,latin1
endif

if has('gui_running')
    set background=light
else
    set background=dark
endif

if &term=="xterm"
set t_Co=8
set t_Sb=[4%dm
set t_Sf=[3%dm
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'brookhong/cscope.vim'
Plug 'yegappan/grep'
call plug#end()

filetype plugin indent on
syntax on

set ai
set ruler 
set number
set laststatus=2
set hlsearch
set smartcase
set smartindent
set showmatch
set cindent
set tabstop=8
set shiftwidth=4
set backspace=indent,eol,start
set guifont=Courier\ New\ 14
set nocompatible
set wildmenu
set incsearch
set matchtime=5
set cpoptions=aABceFsmq
colorscheme desert

set cscopequickfix=i-,g-,s-,t-,e-,f-,d-,c-
set statusline=%F\ %m%h%r%<%=\ [%{&ff},%{$fenc}]\ [%Y]\ [%l,%v]\ [%L]\ [%p%%]

set statusline+=%{FugitiveStatusline()}

let mapleader="."

"Quit And Save
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>t :!ctags -R<CR>

"Git operation in vim
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gvd :Gvdiffspli<CR>
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gl :Gclog .<CR>
nnoremap <leader>gw :Gwrite<CR>

"Search
let Grep_Run_Async = 0
nnoremap <leader>rg :Rgrep<CR>
let Grep_Default_Filelist='*.[cshS] *.go *.py *.cpp *.hpp *.cc *.js *.in *.ac Makefile configure *.hh *.def'
let Grep_Skip_Files = '*.bak *~ *.so *.i *.a *.o *tags'
let Grep_Default_Options='-i --color=auto'
let Grep_Skip_Dirs='.svn .git'

" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
" u: Update cscope DB
nnoremap  <leader>fu :call CscopeUpdateDB()<CR>
