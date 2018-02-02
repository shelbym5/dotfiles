call plug#begin()

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

call plug#end()

let g:livepreview_previewer = 'evince'
let g:deoplete#enable_at_startup = 1
set number
set relativenumber
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

map L :LLPStartPreview <enter>
