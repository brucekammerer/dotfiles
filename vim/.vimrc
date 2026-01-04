" =====================
" Basic options
" =====================
set number
set relativenumber
set cursorline
set scrolloff=8
set nowrap
set sidescrolloff=8
set spelllang=en,ru

" =====================
" Russian language input
" =====================
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1

" =====================
" Indentation
" =====================
set nolist
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" =====================
" Search
" =====================
set ignorecase
set smartcase
set hlsearch
set incsearch

" =====================
" Visuals
" =====================
if has("termguicolors")
  set termguicolors
endif
set colorcolumn=80
set noshowmode

" =====================
" File handling
" =====================
set nobackup
set autoread

" =====================
" Undo (persistent)
" =====================
if has("persistent_undo")
  set undofile
  let &undodir = expand("~/.vim/undodir")

  if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
  endif
endif

call plug#begin()
Plug 'nordtheme/vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
call plug#end()

" Colorscheme settings
colorscheme nord
" Transparent BG
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight Folded ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

" Wildmenu
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum,fuzzy
set pumheight=8
set wildignorecase
