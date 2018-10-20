set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Bundles
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'junegunn/fzf'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'vimwiki/vimwiki'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'bogdanp/browser-connect.vim'
"Plugin 'honza/vim-snippets'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
"Plugin 'moll/vim-node'
"Plugin 'mxw/vim-jsx'
"Plugin 'leshill/vim-json'
"Plugin 'valloric/youcompleteme'
"Plugin 'easymotion/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'


" COLORSCHEMES _____________
"Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"Plugin 'flazz/vim-colorschemes'
" __________________________


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
set number
set relativenumber
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Instead of Sound when doing smt wrong flash light
set visualbell
" when visalbell activated this command makes that nottin happens
set t_vb =

let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"let g:instant_markdown_autostart = 1
"map <leader>md : InstantMarkdownPreview<CR>

let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
map <C-n> :NERDTreeToggle <CR>

let g:instant_markdown_autostart = 1
"let python_highlight_all = 1

" YCM WHITE AND BLACKLISTING
"let g:ycm_filetype_whitelist = { '*' : 1 }
"let g:ycm_filetype_blacklist = {'html' : 1} 
"let g:ycm_filetype_specific_completion_to_disable = { 'html': 1 }

"set nocomptible



" OmniCompletions better
":set completeopt=longest,menuone
":inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"    \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"    \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


"inoremap {<cr> {<cr>}<c-o><s-o>
"inoremap [<cr> [<cr>]<c-o><s-o>
"inoremap (<cr> (<cr>)<c-o><s-o>

" Use F11 to toggle between paste and nopaste
set showcmd
set cursorline 
set showmatch
set lazyredraw
set wildmenu
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader>, :nohlsearch<CR>
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set pastetoggle=<F11>
set smarttab
set splitbelow
set splitright
set scrolloff=5
set encoding=utf-8

nnoremap B ^
nnoremap E $

"To deactive ^ and $
"nnoremap ^ <nop>
"nnoremap $ <nop>

let mapleader=" "
let maplocalleader = ","
nnoremap j gj
nnoremap k gk

" jj and jk to throw you back into normal mode from insert
inoremap jj <esc>
inoremap jk <esc>
" New line below, staying in current line with Enter when in normal mode
"nmap <CR> o<ESC>k

"set background=dark
colorscheme molokai

" Quick Editing often used files via leader key ?!
nnoremap <leader>ev <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>
nnoremap <leader>es <C-w>s<C-w>j<C-w>L:e ~/.config/i3/config<cr>



let g:vimwiki_list = [{'path':'~/Dropbox/semester3/'}]


" HARDCORE DISABLE ARROW KEYS
map  <up>      <nop>
imap <up>      <nop>
map  <down>    <nop>
imap <down>    <nop>
map  <left>    <nop>
imap <left>    <nop>
map  <right>   <nop>
imap <right>   <nop>

set colorcolumn=90
if has("autocmd")
    filetype on
    autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
endif
"autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>')"<space>\|<space>R<space>--vanilla<enter>

