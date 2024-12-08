"	|-----------------|
"	| \    / | |\  /| |
"	|  \  /  | | \/ | |
"	|   \/   | |    | |
"	|-----------------|
"

"Displays tabs and spaces as characters
set listchars=tab:――➤,space:•
set list

"Shows relative line numbers from the current line. Useful for moving up and
"down with J and K
set relativenumber

"Set tabstops every 4 characters
set tabstop=4

"Set the tab width to 4 characters
set shiftwidth=4

"Make tabs expand into spaces, useful for languages like Python or Ruby
"set expandtab

"Enable the mouse
set mouse=a

"List here your plugins for Vim Plug
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'gcmt/taboo.vim'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'rust-lang/rust.vim'

call plug#end()
