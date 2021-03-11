source ~/.vim/bar.vim
:set number
:set autoindent
:set cursorline
:set cursorcolumn
:syntax enable
:set hlsearch
:set tabstop=2 shiftwidth=2 expandtab
:set smarttab
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
imap <C-up> <esc>:tabp<CR>i
imap <C-down> <esc>:tabn<CR>i
map <C-up> :tabp<CR>
map <C-down> :tabn<CR>
