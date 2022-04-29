" configuration for CTRLP
" https://github.com/ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bower_components'

" configuration for vim-fugitive, a git plugin
" https://github.com/tpope/vim-fugitive
" custom prompt
set statusline=%{fugitive#statusline()}%=%t-%c

" configuration for NERDTree
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeWinSize = 56
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1
autocmd VimEnter * if !argc() | NERDTree | endif

" configuration for Tagbar 
" https://github.com/majutsushi/tagbar/wiki

nmap <F8> :TagbarToggle<CR> 
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

colorscheme solarized8

let g:coc_node_path = '/usr/local/bin/node'

" vim-airline
"let g:airline#extensions#tabline#enabled = 1

