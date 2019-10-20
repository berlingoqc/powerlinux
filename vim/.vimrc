
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set number
set cursorline
set noswapfile

filetype indent on
filetype plugin on

set autowrite

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

call plug#end()

:nnoremap <C-g> :NERDTreeToggle<CR>

nnoremap <c-z> <nop>

au filetype go inoremap <buffer> . .<C-x><C-o>




map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

set laststatus=2

let g:airline_powerline_fonts = 1
let g:airine_theme = 'simple'

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_gocode_unimported_packages = 1
let g:go_template_autocreate = 0
let g:go_auto_type_info = 1
let g:go_addtags_transform = "snakecase"
let g:go_def_reuse_buffer = 1
