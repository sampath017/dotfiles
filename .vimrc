imap jj <Esc>
imap JJ <Esc>

set nu rnu

set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set cursorline
set cindent
set bg=dark
set noshowmode

let mapleader = " "

" ------ FileTypes --------

" Makefiles
" autocmd FileType make setlocal noexpandtab
" -------------------------

" ------ Plugins ---------
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

" colorschemes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'

call plug#end()
" -------------------------

nnoremap <leader>n :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
      \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

colorscheme gruvbox
