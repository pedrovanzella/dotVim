"Pathogen installation
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Filetypes
filetype on
filetype plugin on
filetype indent on

"Auto reload vimrc
if has("autocmd")
	autocmd bufwritepost vimrc source $MYVIMRC
endif

"Colors
set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme Mustang

"Remove backups from working directory
set backupdir=~/.vim-tmp

"Command-T bindings
noremap <leader>t <Esc>:CommandT<CR>
noremap <leader>T <Esc>:CommandTFlush<CR>
noremap <leader>B <Esc>:CommandTBuffer<CR>

