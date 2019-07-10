" configuration for NERDTree
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeWinSize = 56
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1
autocmd VimEnter * if !argc() | NERDTree | endif
