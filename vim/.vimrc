" Option visuel

syntax enable
" Configuratio taille des tabs
set tabstop=4
set softtabstop=4
set expandtab "tabs are spaces
" Affiche numéro de ligne
set number
" Highlight la ligne courante
set cursorline
" Permet le loadage dynamique de fichier
" d'indentation spécifique selon type fichier
" pour python par exemple très utile
filetype indent on
" Autocomplete dans le menu de commande
set wildmenu
" Vim redraw pour rien apparamment
" alors meilleur performance en lazy mode
set lazyredraw
" Highlight matching bracket
set showmatch


" Option Search
" Commence la recheche pendant écriture du mots
set incsearch
" Highlight matches
set hlsearch
" Vim laisse highlight recherche donc mets un macro
" sur la commande qui enlève hl last search
" touche : space
nnoremap <leader><space> :nohlsearch<CR>
" Active le folding des blocks de code
set foldenable
" Ici la valeur 10 ouvre la plus part des folds
" par default , 99 est la valeur maximal qui garantit
" l'ouverture de toute
set foldlevelstart=10 
set foldnestmax=10
set foldmethod=indent
" map space pour ouvrir et fermet fold
nnoremap <space> za

" Option Plugins
" Installation de plugins avec notre plugins manager
" configuer avec :PlugInstall
call plug#begin('$HOME/.vim/plugged')

Plug 'tpope/vim-markdown'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'fatih/vim-go'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
" active deux row de statusbar pour afficher airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'
" Option pour Markdown plugins
let g:markdown_fenced_languages = ['python', 'go', 'bash=sh', 'c#']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
