":: VUNDLE

filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'jimmyhchan/dustjs.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'lua_indent'
Plugin 'L9'
Plugin 'FuzzyFinder'

":: GENERAL
set nocompatible
set laststatus=2
set backspace=2

set spelllang=en_gb

":: VISUAL

filetype plugin indent on     " required! 
syntax on
set number
set ruler
set t_Co=256
set nowrap

set title
set statusline=%F%m%r%w\ FORMAT=%{&ff}\ TYPE=%Y\ ASCII=\%03.3b\ HEX=\%02.2B\ POS=%04l,%04v\ %p%%\ LEN=%L

":: BUFFERS

set wildmenu
set wildmode=list:longest,list:full
set hidden

"set viminfo=
"set nobackup
set noswapfile

":: SEARCH OPTIONS

set hlsearch
set incsearch
set ignorecase

":: INDENTATION

set autoindent
set smartindent

set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4


":: MAPPINGS 


nnoremap Y v$hy
nnoremap <leader>ve :e ~/.vimrc<CR>
nnoremap <leader>vs :source ~/.vimrc<CR>
nnoremap <leader>en :lnext<CR>
nnoremap <leader>ep :lprev<CR>
nnoremap <leader>bb :b#<CR>
"close current buffer but move previous buffer into buffer bp|sp|bn|bd (:bp<bar>sp<bar>bn<bar>bd<CR>)
nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <leader>bw :bp<bar>sp<bar>bn<bar>bw<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFocus<CR>
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fF :FufFileWithFullCwd<CR>
nnoremap <leader>fb :FufBuffer<CR>
nnoremap <leader>fd :FufDir<CR>
nnoremap <leader>fD :FufDirWithFullCwd<CR>
nnoremap <leader>/ :nohl<CR>

nnoremap <C-n>  :bnext<CR>
nnoremap <C-p>  :bprev<CR>
nnoremap <C-w><C-e> :NERDTreeFocus<CR>
nnoremap <C-w>e :NERDTreeFocus<CR>

nnoremap <ESC><C-h> :tabprev<CR>
nnoremap <ESC><C-l> :tabnext<CR>

nnoremap <ESC>h <C-w><C-h>
nnoremap <ESC>j <C-w><C-j>
nnoremap <ESC>k <C-w><C-k>
nnoremap <ESC>l <C-w><C-l>
nnoremap <ESC>n :NERDTreeToggle<CR>

nnoremap <silent> <leader>s :set spell!<CR>
nnoremap <space> za
nnoremap <Nul> zA


"inoremap <ESC>o <C-x><C-o>
"inoremap <ESC>n <C-x><C-n>
"jump to next \<\+\+\> placeholder
"nnoremap <C-j> /<+.\{-1,}+><CR>c/+>/e<CR>
"inoremap <C-j> <ESC>/<+.\{-1,}+><CR>c/+>/e<CR>

":: COMMANDS

command! Nt NERDTree
command! Sv setl spelllang=sv
command! En setl spelllang=en_gb
command! Html set filetype=html
command! Php set filetype=php
command! Js set filetype=javascript
command! Css set filetype=css
command! Markdown set filetype=markdown

au BufRead,BufNewFile *.md setl filetype=markdown
au BufRead,BufNewFile *.dust setl filetype=dustjs
au BufRead,BufNewFile *.dust.html setl filetype=dustjs

":: FILE TYPES

autocmd FileType help wincmd L
autocmd FileType tex setl sw=2 softtabstop=2 nosmartindent

autocmd FileType scss,css setl synmaxcol=120 omnifunc=csscomplete#CompleteCSS foldmethod=marker foldmarker={,}

autocmd FileType php setl omnifunc=phpcomplete#CompletePHP foldmethod=indent

autocmd FileType html setl omnifunc=htmlcomplete#CompleteTags foldmethod=indent

autocmd FileType dustjs setl omnifunc=htmlcomplete#CompleteTags foldmethod=indent

autocmd FileType javascript setl omnifunc=javascriptcomplete#CompleteJS foldmethod=indent

autocmd FileType text setl nosmartindent

":: LATEX SETTINGS
"autocmd FileType tex setl spell spelllang=sv
" grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grepd
" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

" Change default filetype from 'plaintex' back to 'tex'
"let g:tex_flavor='latex'
"
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_MultipleCompileFormats='dvi,pdf'
