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
Bundle 'scrooloose/syntastic'
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
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/haskell.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Bundle 'skammer/vim-css-color'
" vim-scripts repos
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!

syntax on

set number 						"just making sure
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

nnoremap <Leader>n :se <c-r>=&rnu?"":"r"<CR>nu<CR>

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
set undodir=~/.vim/backups
set undofile

" ================ Search Settings  =================
set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

".m is objective-c, not matlab (at least for me)
let filetype_m='objc'

" Treat scss and sass as css
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.sass set filetype=css

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

"Font
"https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts
set guifont=Inconsolata-dz\ for\ Powerline:h11

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

" neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'"
