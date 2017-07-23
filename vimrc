"map! ^? ^H
map! ^H ^?
" ---------------------------------------------------------------------------
" first the disabled features due to security concerns

set modelines=0                  " no modelines [http://www.guninski.com/vim1.html]
let g:secure_modelines_verbose=0 " securemodelines vimscript
let g:secure_modelines_modelines = 15 " 15 available modelines

let g:netrw_dirhistmax = 0

let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'

colorscheme gruvbox
"colorscheme gotham256
"colorscheme mirodark
"colorscheme jellybeans
"let g:jellybeans_use_lowcolor_black = 1
"let g:mirodark_enable_higher_contrast_mode=1
"colorscheme neverness
"colorscheme perdark
"colorscheme zenburn
"colorscheme oceandeep
"colorscheme ir_black

set background=dark
" --------------------------------------------------------------------------
" Settings "
"
"set rtp+=~/src/go/misc/vim
"
call plug#begin('~/.vim/plugged')
"Plug 'gmarik/Vundle.vim'
Plug 'jimenezrick/vimerl'
Plug 'tpope/vim-surround'
"Plugin 'guns/vim-clojure-static'
"Plugin 'tpope/vim-classpath'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/lightline.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'emezeske/paredit.vim'
Plug 'djjcast/mirodark'
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/whatyouhide/vim-gotham.git'
Plug 'edkolev/erlang-motions.vim'
"Plugin 'elixir-lang/vim-elixir.git'
"Plugin 'wlangstroth/vim-racket.git'
Plug 'https://github.com/kovisoft/slimv.git', { 'for': 'lisp' }
Plug 'https://github.com/fatih/vim-go.git', { 'for': 'go' }
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': './install.py' }
Plug 'https://github.com/xolox/vim-misc.git'
"Plug 'https://github.com/xolox/vim-notes.git'
"Plug 'ryanss/vim-hackernews'
"Plugin 'ardagnir/vimbed'
Plug 'morhetz/gruvbox'
"Plug 'gryftir/gryffin'
"Plug 'dhruvasagar/vim-table-mode'
Plug 'ludovicchabant/vim-lawrencium'
"Plug 'w0rp/ale'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'avdgaag/vim-phoenix'
Plug 'mmorearty/elixir-ctags'
Plug 'mattreduce/vim-mix'
Plug 'BjRo/vim-extest'
Plug 'frost/vim-eh-docs'
Plug 'tpope/vim-endwise'
Plug 'jadercorrea/elixir_generator.vim'
"Plug 'benmills/vimux'
"Plug 'spiegela/vimix'
"Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kovetskiy/sxhkd-vim'

"Plug 'https://github.com/sophacles/vim-processing.git'
"Plug 'https://github.com/robertbasic/vim-hugo-helper.git'

call plug#end()

filetype off
""call pathogen#runtime_append_all_bundles()
"call pathogen#infect()
filetype plugin indent on


set nocompatible        " use Vim settings, rather then vi settings
"set mouse=a         " enable the mouse
"set ttymouse=xterm      " name of the terminal type for which mouse codes are to be recognized
set termencoding=utf-8      " set encoding
set encoding=utf-8      " set encoding used for the terminal
set cmdheight=1         " number of screen lines to use for the command line
set cursorline          " use a cursor line
set laststatus=2        " status line format
"set statusline=%-3.3n\ %f\ %h%m%r%w[%{strlen(&filetype)?&filetype:'?'},%{&encoding},%{&fileformat}]%=\ 0x%-8B\ \ %-14.(%l,%c%V%)\ %<%P
set history=50          " keep 50 lines of command line history
"set number          " turn on line numbers
"set nobackup            " don't make a backup before overwriting a file

set nohlsearch          " when there is a previous search pattern, highlight all its matches
set ignorecase          " ignore case in search patterns
set incsearch           " while typing a search command, show where the pattern, as it was typed so far, matches
"set gdefault            " ":substitute" flag 'g' is on. all matches in a line are substituted instead of one
set showmatch           " when a bracket is inserted, briefly jump to the matching one
set matchpairs+=<:>


set smarttab 
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

setlocal spell spelllang=en_us

"let g:paredit_mode = 1

" get rid of the default style of C comments, and define a style with two stars
" at the start of `middle' rows which (looks nicer and) avoids asterisks used
" for bullet lists being treated like C comments; then define a bullet list
" style for single stars (like already is for hyphens):
set comments-=s1:/*,mb:*,ex:*/
set comments+=s:/*,mb:**,ex:*/
set comments+=fb:*

" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro
autocmd BufRead,BufNewFile *.erl,*.es.*.hrl,*.yaws,*.xrl set expandtab
au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang

" highlight over 80 columns
"highlight OverLength ctermbg=white ctermfg=darkred guibg=#FFD9D9
highlight OverLength cterm=reverse
match OverLength /\%81v.*/

" --------------------------------------------------------------------------
" Abbreviations "
"
"iab sign mail signature "TO DO


" --------------------------------------------------------------------------
" Keymappings "
"
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"map i1 :.w >> in<cr>dd

map ,t <Esc>:tabnew<CR>
map ,n <Esc>:tabNext<CR>
map ,p <Esc>:tabprevious<CR>


" --------------------------------------------------------------------------
" Syntax hilighting "
"
syntax on           " enable syntax highlighting

au BufRead,BufNewFile *.txt setlocal ft=txt

au BufRead,BufNewFile /etc/nginx/* set ft=nginx

au BufRead,BufNewFile *.dtl set filetype=html

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" --------------------------------------------------------------------------
" File encryption
"
augroup CPT
 au!
 au BufReadPre *.cpt set bin
 au BufReadPre *.cpt set viminfo=
 au BufReadPre *.cpt set noswapfile
 au BufReadPost *.cpt let $vimpass = inputsecret("Password: ")
 au BufReadPost *.cpt silent '[,']!ccrypt -cb -E vimpass
 au BufReadPost *.cpt set nobin
 au BufWritePre *.cpt set bin
 au BufWritePre *.cpt '[,']!ccrypt -e -E vimpass
 au BufWritePost *.cpt u
 au BufWritePost *.cpt set nobin
augroup END


" --------------------------------------------------------------------------
" NERD_Tree
"
let NERDTreeWinPos="left"
let NERDTreeWinSize=35

" Neomake settings
"autocmd! BufWritePost * Neomake
"let g:neomake_elixir_enabled_makers = ['mix', 'credo', 'dogma']
"autocmd! BufWritePost * Neomake
"autocmd! BufReadPost * Neomake
""let g:neomake_markdown_enabled_makers = ['alex', 'markdownlint', 'proselint']
""let g:neomake_elixir_enabled_makers = ['mix', 'credo']

command Errors lopen
" --------------------------------------------------------------------------
" Fireplace
"
" :Eval (ctrl-e)
nnoremap <C-e> :Eval<CR>
" :%Eval (shift-e)
nnoremap E :%Eval<CR> 


" --------------------------------------------------------------------------
" Vim-Slime
"
"let g:slime_target = "tmux"

" --------------------------------------------------------------------------
" Swank n Slime
"
let g:slimv_swank_cmd = '! /home/jon/bin/slime-term &'
let g:lisp_rainbow=1

" --------------------------------------------------------------------------
" Airline settings
"
let g:airline_powerline_fonts = 1
" remove seperators
"let g:airline_left_sep=''
"let g:airline_right_sep=''
" " remove unused modes
let g:airline_enable_branch=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_enable_syntastic=0
let g:airline#extensions#syntastic#enabled = 1
" " further customization
" " set second section to filename
"let g:airline_section_b="%f"
" " empty third and fourth sections
"let g:airline_section_c=""
"let g:airline_section_x=""
" " put filetype in fifth section
"let g:airline_section_y="%Y"
" Theme
let g:airline_theme='gruvbox'
"let g:airline_theme='base16_twilight'
"let g:airline_theme='bubblegum'

" --------------------------------------------------------------------------
"  LightLine Settings
let g:lightline = {'colorscheme': 'wombat',}
"let g:lightline = {'colorscheme': 'gotham256',}

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_elixir_checker = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_vimlint_options = get(g:, 'syntastic_vimlint_options', {
      \'EVL102': 1 ,
      \'EVL103': 1 ,
      \'EVL205': 1 ,
      \'EVL105': 1 ,
      \})
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_erlc_include_path = "ebin"
let g:airline#extensions#syntastic#enabled = 1

" Vim-Alchemist Configuration
let g:alchemist#elixir_erlang_src = "/home/jon/src/Elixir/alchemist-server"
let g:alchemist_tag_disable = 1
