let g:spacevim_custom_plugins = [
        \ ['jimenezrick/vimerl'],
        \ ['w0rp/ale'],
        \ ['gasparch/alchemist.vim.git'],
        \ ['gasparch/vim-elixir.git'],
        \ ['benmills/vimux.git'],
        \ ['spiegela/vimix.git'],
        \ ['edkolev/tmuxline.vim'],
        \ ]

let g:spacevim_disabled_plugins=[
    \ ['Yggdroot/indentLine'],
    \ ]

"let g:spacevim_colorscheme = 'gruvbox'
"let g:spacevim_colorscheme_default = 'gruvbox'
let g:spacevim_colorscheme = 'apprentice'
let g:spacevim_colorscheme_default = 'apprentice'

let g:ale_emit_conflict_warnings = 0

let g:indentLine_enabled = 0

set norelativenumber
set nonumber

set mouse=

autocmd VimEnter * nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode           

map ,t <Esc>:tabnew<CR>
map ,n <Esc>:tabNext<CR>
map ,p <Esc>:tabprevious<CR>
