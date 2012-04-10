" Vundle installation
set nocompatible               " be iMproved
filetype on			" OSX workaround
filetype off                   " required!
set laststatus=2
set encoding=utf-8

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My vundles go here
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Rip-Rip/clang_complete'
Bundle 'godlygeek/csapprox'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Raimondi/delimitMate'
Bundle 'kevinw/pyflakes-vim'
Bundle 'vim-scripts/SuperTab-continued.'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-pastie'
Bundle 'godlygeek/tabular'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tangledhelix/vim-octopress'
"Bundle 'millermedeiros/vim-statline'
Bundle 'Lokaltog/vim-powerline'
" vim-scripts repos
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!

syntax on

"Omnicomplete
set ofu=syntaxcomplete#Complete

"SuperTab
let g:SuperTabDefaultCompletionType = "context"

".m is objective-c, not matlab (at least for me)
let filetype_m='objc'

"Auto reload vimrc
if has("autocmd")
	autocmd! bufwritepost .vimrc source %
	autocmd! bufwritepost vimrc source %
	autocmd! bufwritepost .gvimrc source %
	autocmd! bufwritepost gvimrc source %
endif

"indentation
set tabstop=4
set shiftwidth=4


"Colors
set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme mustang

"Remove backups from working directory
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"make Y consistent with C and D
nnoremap Y y$

"Command-T bindings
noremap <leader>t <Esc>:CommandT<CR>
noremap <leader>T <Esc>:CommandTFlush<CR>
noremap <leader>B <Esc>:CommandTBuffer<CR>

"Command-T Config
let g:CommandTMaxHeight=10
let g:CommandTMatchWindowAtTop=1

"NERDTree bindings
noremap <leader>p <Esc>:NERDTreeToggle<CR>

"Tagbar setings
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

"Tagbar bindings
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

"clang_complete options
let g:clang_complete_copen=1

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"set my shell
set shell=/bin/zsh

"turn off needless toolbar on gvim/mvim
set guioptions-=T

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set number      "add line numbers
set showbreak=...
set wrap linebreak nolist

"PowerLine
let g:Powerline_symbos = 'fancy'


