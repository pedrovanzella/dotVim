"Pathogen installation
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Filetypes
filetype on
filetype plugin on
filetype indent on

"Command-T bindings
noremap <leader>t <Esc>:CommandT<CR>
noremap <leader>T <Esc>:CommandTFlush<CR>
noremap <leader>B <Esc>:CommandTBuffer<CR>

"Colors
colorscheme Mustang

"Remove backups from working directory
set backupdir=~/.vim-tmp
