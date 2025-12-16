set encoding=UTF-8
set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme habamax
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
let g:ycm_enable_semantic_highlighting=1
set completeopt-=preview
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set number 
Plugin 'VundleVim/Vundle.vim'
  Plugin 'preservim/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe' 
Plugin 'ryanoasis/vim-devicons'
call vundle#end()            " required
filetype plugin indent on    " required
" antirez's .vimrc
" Copyright(C) 2001 Salvatore Sanfilippo
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
syntax sync fromstart
if has("syntax")
	syntax sync fromstart
	syntax on
        set background=dark
	let php_sync_method="0"
        highlight SpellBad ctermfg=red ctermbg=black term=Underline
endif
set nocompatible
set wildmenu
set wildmode=longest:full,full

imap <C-d> <ESC>:r! date<CR>kJ$a
imap <C-k> <ESC>:r ~/SVC/HEADER<CR>
imap <C-o> <ESC>:bn<CR>
imap <C-k> <ESC>:bp<CR>
imap <C-x> <ESC>:syntax sync fromstart<CR>
map <C-x> :syntax sync fromstart<CR>
map <C-o> :bn<CR>
map <C-k> :bp<CR>
map 4 $
vmap q <gv
vmap <TAB> >gv

set softtabstop=4
set shiftwidth=4
set expandtab

set incsearch
set ignorecase
set smartcase
set ruler
set showmode
set viminfo=%,'50,\"100,:100,n~/.viminfo
set autoindent
set backspace=2
normal mz

iab pallang X-MAILGW-Newsgroups:
iab CHDR <ESC>1G:r ~/SVC/HEADER<CR>1Gdd
iab tclfile #/bin/sh \<CR># the next line restarts using tclsh \<CR>exec tclsh "$0" "$@"<CR><CR><CR># vim: set filetype=tcl softtabstop=4 shiftwidth=4<CR>

augroup filetypedetect
au BufNewFile,BufRead *.tcl     set filetype=tcl softtabstop=4 shiftwidth=4
au BufNewFile,BufRead *.tk     set filetype=tcl softtabstop=4 shiftwidth=4
au BufNewFile,BufRead *.md     set filetype=markdown softtabstop=4 shiftwidth=4
augroup END

if has("autocmd")
        autocmd BufReadPost * if line("'\"") | exe "'\"" | endif
endif

:nmap ;; :w! /tmp/tcltmp100.tcl<CR>:!tclsh /tmp/tcltmp100.tcl<CR>

let loaded_matchparen = 1
filetype plugin on

set laststatus=2

hi User1 ctermfg=green ctermbg=black
hi User2 ctermfg=yellow ctermbg=black
hi User3 ctermfg=red ctermbg=black
hi User4 ctermfg=blue ctermbg=black
hi User5 ctermfg=white ctermbg=black

set statusline=
set statusline +=%1*\ %n\ %*
set statusline +=%5*%{&ff}%*
set statusline +=%3*%y%*
set statusline +=%4*\ %<%F%*
set statusline +=%2*%m%*
set statusline +=%1*%=%5l%*
set statusline +=%2*/%L%*
set statusline +=%1*%4v\ %*
set statusline +=%2*0x%04B\ %*

" clipboard per OS
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

" faster ESC
set ttimeout
set ttimeoutlen=10

