syntax enable

set t_Co=16

if filereadable(expand("~/.dotfiles/vim/vim-plug"))
  source ~/.dotfiles/vim/vim-plug
endif

let mapleader=","


" (vvvv i didnt write this comment vvvv)
" turn syntax highlighting on by default
syntax on

" (vvvv i didnt write this comment vvvv)
" set auto-indenting on for programming
set ai

" (vvvv i didnt write this comment vvvv)
" turn off compatibility with the old vi
set nocompatible

" (vvvv i didnt write this comment vvvv)
" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" (vvvv i didnt write this comment vvvv)
" automatically show matching brackets. works like it does in bbedit.
set showmatch

" (vvvv i didnt write this comment vvvv)
" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.
set binary noeol

" make that backspace key work the way it should
set backspace=indent,eol,start


" dunno
set laststatus=2

" show the line number as the number of lines from current
" (useful because all vi movement has a count portion
set relativenumber
" normally just shows line numbers, but combined with above shows the actual
" line number of the current line, not 0 (zero)
set number

" for pasting from the board without all the wrong indenting
set pastetoggle=<F2>

" tabs as spaces
set expandtab

set shiftwidth=2
set softtabstop=2

" highlight all the found search terms
set hlsearch!

" probably unnecessary?
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" dunno
filetype off

" " Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

inoremap <leader><leader> <ESC>

" dunno
set hidden
" not sure
set history=1000
" how many times you can press 'u'
set undolevels=1000
" not sure, maybe has something to do with ctrl-e file finding
set wildignore=*.sqp,*.bak,*.pyc,*.class
" no idea
set title

set encoding=utf-8
" these two get rid of the file vim creates of the buffer so you can
" restore in case of a crash.  But they're annoying and give that
" 'a backup file was found. do you want to restore' message.
" I `esc, colon, w` like a fiend so doesn't matter..
set nobackup
set noswapfile

" Easy window navigation that matches tmux
" otherwise its ctrl-w, direction this is just ctlr-direction
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" not sure
nmap <silent> ,/ :nohlsearch<CR>

" switch to sudo to write 'read only' files
cmap w!! w !sudo tee % >/dev/null

" syntax and plugins based on filename
filetype plugin on
filetype plugin indent on



" yeah, maybe checkout neocomplete so you have suggestions if not
" 'autocomplete'.  Sometimes it works if you have the right plugins 
" otherwise its just a 'here are other things in this document that start with
" what you typed' thing
let g:neocomplcache_enable_at_startup = 1

" launch ctags, was defined as map <S-Tab> :!/usr/local/bin/ctags --recurse --sort=yes .<CR>
" 'S' is Shift
map <S-Tab> :!ctags --recurse --sort=yes .<CR>


" Custom syntax hightlighting filter
au BufReadPost *.sbt set syntax=scala

" trying to get better copy and paste working
set clipboard=unnamed

