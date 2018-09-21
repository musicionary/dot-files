set nocompatible	" required
filetype off		" required

" make split default to split below, or to right of current pane
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding
set foldmethod=indent
set foldlevel=99

"--------------------Start Python PEP 8 Stuff-----------------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

" Spaces for indents
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4

" PEP 8 line length restriction
au BufRead,BufNewFile *.py set textwidth=79
	\ set autoindent
	\ set fileformat=unix

" Indentation config for other file types
au BufNewFile,BufRead *.js, *.hstm, *.css
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2

" Flag unnecessary whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF8 Support
set encoding=utf-8

" Turn on line numbering
set nu

" Access system clipboard
set clipboard=unnamed

" Make code look pretty
let python_highlight_all=1
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begun('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (not older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
""Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" extra ycm config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration <CR>

" All of your Plugins must be added before the following line

call vundle#end()	" required
filetype plugin indent on " required

" define which color scheme to use based upon the VIM mode

" start NERDtree when vim starts
