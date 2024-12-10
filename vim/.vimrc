"	+---------------------+
"	|	\    / | |\  /|   |
"	|	 \  /  | | \/ |   |
"	|	  \/   | |    |   |
"	+---------------------+

"Starts a terminal at the bottom of the window
autocmd VimEnter * botright term

"Resizes the terminal properly
autocmd VimEnter * resize -15%

"Automatically opens
autocmd VimEnter * NERDTree

"Retro colorscheme
colorscheme=murphy

"Displays tabs and spaces as characters
set listchars=tab:――➤,space:•

"Enables the display of tabs and spaces by default
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

"Set UTF-8 as default encoding
set encoding=UTF-8

"Required by devicons plugin
set guifont=DroidSansM\ Nerd\ Font\ 11

"Required to display devicons in airline
let g:airline_powerline_fonts = 1

"Maps Ctrl+t to open or close NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

"Maps Ctrl+f to open fzf
nnoremap <C-f> :Files<CR>

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
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'

call plug#end()
