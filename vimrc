" for https://github.com/tpope/vim-pathogen
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on
" From http://justinlilly.com/vim/vim_and_python.html
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
\ [%l/%L\ (%p%%)
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly

set ts=4 sw=4 expandtab
