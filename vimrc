" SIMPLE SETTINGS FILE

" STARTUP {{{

let mapleader = " " 
syntax on 	

" }}}
" SET {{{

set autoindent                               
set linebreak 			     " Wrap lines; last word gets shifted
set mouse=a                          " optional: enable mouse everywhere
set number                           " doesn't get set by default
set spell
set spelllang=en_gb                  " closest to Indian
"set wildmenu			     " A menu for tabbing
colorscheme nord


set conceallevel=2		     " conceals math
" This option requires a vim restart

if exists('+termguicolors')
    set termguicolors              "16 million colours' support
endif

set foldmethod=marker
set encoding=utf8		     " required by VimTeX features

" }}}
" HIGHLIGHT {{{

highlight Conceal guibg=bg 


"}}}
" MAP {{{

nmap <Leader>, :vs $MYVIMRC<CR>
nmap <F5> :w<CR>:source $MYVIMRC<CR>
"nmap <Leader>, :UltiSnipsEdit<CR>

"Recommended mappings - quick movement between splits 
"nmap <C-h> <C-w><C-h>
"nmap <C-l> <C-w><C-l>
"nmap <C-k> <C-w><C-k>
"nmap <C-j> <C-w><C-j>

" After installing fzf 
"nmap <Leader>ff :Files<CR>
"nmap <Leader>fr :History<CR>
"nmap <Leader>fh :Helptags<CR>

"}}}
" LET {{{

" UltiSnips {{{2

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsEnableSnipMate = 0

if has('win32')
    let g:UltiSnipsSnippetDirectories = [$HOME.'\vimfiles\UltiSnips'] "FOR WINDOWS
else
    let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/UltiSnips'] "FOR THE REST
endif

"}}}
" LaTeX with Vim {{{2

let g:tex_flavor='latex'
let g:vimtex_fold_enabled=1
let g:vimtex_fold_manual=1

"  }}}}

"}}}
" PLUGINS {{{

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'         
Plug 'lervag/vimtex'         

" Essentials:
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   "fuzzy name filter
" Plug 'junegunn/fzf.vim'			       "very quickly open files
" Plug 'junegunn/goyo.vim' 			" focused writing
" Plug 'junegunn/limelight.vim'			" super focused writing

" Extras:
" Plug 'luochen1990/rainbow'	  " rainbow colours for parentheses

" Managing notes:
" Plug 'lervag/wiki.vim' 	 " by vimtex author, modular   OR
" Plug 'vimwiki/vimwiki'	 " lots of features; may be complicated OR
" Plug 'fiatjaf/neuron.vim' 	 " simpler; needs neuron

" When you get irritated, be sure to look into these
" Plug 'tpope/vim-commentary'     " quickly (un)commenting
" Plug 'tpope/vim-eunuch'         " utility functions
" Plug 'tpope/vim-fugitive'       " for using git
" Plug 'tpope/vim-repeat'         " supercharging dot command
" Plug 'tpope/vim-surround'       " surrounding expressions with [({$ etc.
" Plug 'tpope/vim-unimpaired'     " more utility functions


call plug#end()

"}}}

" YOUR CHANGES 
silent! source ~/.myvimrc         "Add your additions in this file
