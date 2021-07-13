" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: sampath kovvali

" disable vi compability
set nocompatible

" map jj to ESC
imap jj <Esc>
imap JJ <Esc>

" set relative line numbering
set nu rnu

"tab to 2 spaces
set tabstop=2

" indent with 2 spaces
set shiftwidth=2

" expand tab to spaces
set expandtab

" enable mouse
set mouse=a

" nice line
set cursorline

" wrap lines at 80 chars.
set textwidth=120

" show file in titlebar
set title

" list chars
set listchars=space:_,tab:>~

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
