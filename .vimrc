call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/ap/vim-css-color'

call plug#end()

syntax on
filetype on
filetype indent on
set wildmenu
set mouse=a
set ttymouse=sgr
set termguicolors
set number
set shiftwidth=4
set tabstop=4
set nobackup
set noswapfile
set hlsearch
set incsearch
set clipboard^=unnamed,unnamedplus
set backspace=indent,eol,start
set encoding=utf-8
set background=dark
set nocompatible
set nowrap
set updatetime=300
colorscheme habamax

let mapleader = ' '
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

noremap <leader>e :NERDTreeToggle<CR>

" Use fzf to open files
nnoremap <leader>f :Files<CR>

" Use fzf to search for text in files
nnoremap <leader>g :Rg<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

" Move current line down in normal mode
nnoremap <A-j> :m .+1<CR>==

" Move current line up in normal mode
nnoremap <A-k> :m .-2<CR>==

" Move current line down with arrow key in normal mode
nnoremap <A-Down> :m .+1<CR>==

" Move current line up with arrow key in normal mode
nnoremap <A-Up> :m .-2<CR>==

" Move selected lines down in visual mode
vnoremap <A-j> :m '>+1<CR>gv=gv

" Move selected lines up in visual mode
vnoremap <A-k> :m '<-2<CR>gv=gv

" Move selected lines down with arrow key in visual mode
vnoremap <A-Down> :m '>+1<CR>gv=gv

" Move selected lines up with arrow key in visual mode
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif


if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
	  \ coc#refresh()
      "\ "\<Tab>"
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <expr> <Down> coc#pum#visible() ? coc#pum#next(1) : "\<Down>"
inoremap <expr> <Up> coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" highlight VertSplit guibg = #1c1c1c

