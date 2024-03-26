syntax on
filetype on
filetype indent on
set cindent
set nocompatible
set number
set shiftwidth=4
set tabstop=4
set nobackup
set wildmenu
set mouse=a
set clipboard^=unnamed,unnamedplus
set nobackup
set background=dark
set hlsearch
set incsearch
set encoding=utf8
set smarttab
aunmenu PopUp.How-to\ disable\ mouse
aunmenu PopUp.-1-

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'ekalinin/dockerfile.vim'
Plug 'w0rp/ale'

Plug 'preservim/nerdtree'
Plug 'philrunninger/nerdtree-visual-selection'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'morhetz/gruvbox'

Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'romgrk/barbar.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-tree/nvim-web-devicons'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()

"inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
"inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space> for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" Use <C-@> on vim
inoremap <silent><expr> <c-@> coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <Down> coc#pum#visible() ? coc#pum#next(1) : "\<Down>"
inoremap <expr> <Up> coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"

nnoremap <C-t> <Esc>:NERDTreeToggle<CR>
inoremap <C-t> <Esc>:NERDTreeToggle<CR>

" NERDTree
let g:NERDTreeWinSize = 40
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1

" gruvbox
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" multi cursor
let g:VM_mouse_mappings = 1

