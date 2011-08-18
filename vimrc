"Pathogen installation
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

".m is objective-c, not matlab (at least for me)
let filetype_m='objc'

"Auto reload vimrc
if has("autocmd")
	autocmd! bufwritepost .vimrc source %
	autocmd! bufwritepost vimrc source %
	autocmd! bufwritepost .gvimrc source %
	autocmd! bufwritepost gvimrc source %
endif

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
noremap <C-t> <Esc>:TagbarToggle<CR>

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

"Statusbard
"statusline setup
set statusline=%f       "tail of the filename

"Git
"set statusline+=[%{GitBranch()}]

"RVM
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"Display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag
