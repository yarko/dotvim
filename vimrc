" for https://github.com/tpope/vim-pathogen
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on
" From http://justinlilly.com/vim/vim_and_python.html
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
\ [%l/%L\ (%p%%)
au FileType python set autoindent
au FileType python set smartindent
au FileType python set textwidth=79 " PEP-8 Friendly
au BufEnter *.py nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<CR>

" for online teaching:
" set guifont=Menlo\ Regular:h20
set guifont=Menlo\ Regular:h14

set ts=4 sw=4 expandtab

" color scheme:
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
color solarized             " Load a colorscheme


" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>

" Open NERDTREE when vim starts:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F7> :TlistToggle<CR>

" Viewport Controls
" ie moving between split panes
map <silent>,h <C-w>h
map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

" PyDiction:
let g:pydiction_location='/Users/yak007/.vim/bundle/pydiction/complete-dict'
"let g:pydiction_menu_height=8  "default = 8

let mapleader = ","

" Explore - builtin alternative to NERDTree
let g:netrw_liststyle=3
map <leader>k :Ex<cr>

