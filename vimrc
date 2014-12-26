" work folder
set path=**

" view
set guifont=courier\ new:h18
syntax on

" file format
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number

set laststatus=2 
if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

" search & file navagation shortcuts
set hlsearch
set incsearch

nnoremap t :tabf *
nnoremap <S-f> :grep -n -r --include=*.xml --include=*.lua --include=*.cpp --include=*.h "\<<C-R><C-W>\>" *
nnoremap <silent> <F3> :copen <cr>:cnext<CR>
nnoremap <silent> <F4> :copen <cr>:cpre<CR>
nnoremap <silent> <C-n> :tabn<CR>
nnoremap <silent> <C-p> :tabp<CR>

" toolkit
nmap cp :let @* = expand("%:p")<CR>
