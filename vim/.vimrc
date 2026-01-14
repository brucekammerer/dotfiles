" =====================
" Visuals
" =====================
if has("termguicolors")
  set termguicolors       " Enable true color support
endif
set colorcolumn=80        " Vertical guide at 80 characters
set noshowmode            " Do not show mode in the command line

" =====================
" File handling
" =====================
set nobackup              " Disable backup files
set autoread              " Reload files changed outside of Vim

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

filetype plugin on

" =====================
" Plugins (vim-plug)
" =====================
call plug#begin()
Plug 'nordtheme/vim'                        " Nord colorscheme
Plug 'jiangmiao/auto-pairs'                 " Auto-close brackets and quotes
Plug 'tpope/vim-commentary'                 " Comment code easily
Plug 'mattn/emmet-vim'                      " Fast HTML/CSS creation
Plug 'tpope/vim-unimpaired'                 " Handy paired motions
Plug 'junegunn/fzf.vim'                     " FZF integration for Vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Install FZF
Plug 'vimwiki/vimwiki'                       " Personal wiki
Plug 'tpope/vim-surround'                    " Surround text objects easily
Plug 'sheerun/vim-polyglot'
call plug#end()

" =====================
" Command-line completion
" =====================
" set wildmenu
" set wildmode=longest:full,full
" set wildoptions=pum,fuzzy
" set pumheight=8
" set wildignorecase

" =====================
" Leader key
" =====================
nnoremap <Space> <Nop>
let mapleader = " "

" =====================
" FZF mappings
" =====================
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" =====================
" Ripgrep for :grep
" =====================
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" =====================
" Restore last cursor position
" =====================
" Make Vim remember last cursor position when reopening files
source $VIMRUNTIME/vimrc_example.vim

" =====================
" Colorscheme settings
" =====================
colorscheme nord

" Make background transparent
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight Folded ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

set textwidth=78
set wrap
set linebreak

" =====================
" Key mappings
" =====================
" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Toggle spell checking
map <F5> :setlocal spell!<CR>

" =====================
" VimWiki settings
" =====================
let g:vimwiki_list = [{'path': '~/Notes/', 'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_global_ext = 0

" =====================
" Basic options
" =====================
set hidden                " Allow switching buffers without saving
set number                " Show line numbers
set relativenumber        " Show relative line numbers
set cursorline            " Highlight current line
set scrolloff=8           " Minimal number of lines above/below cursor
set sidescrolloff=8       " Minimal horizontal offset
set nowrap                " Disable line wrapping
set spelllang=en,ru       " Spell check for English and Russian
set nocp                  " Use modern Vim behavior
filetype plugin on        " Enable filetype-based plugins

" =====================
" Russian language input
" =====================
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1

" =====================
" Indentation
" =====================
set nolist                " Do not display tab or EOL characters
set tabstop=4             " Number of spaces per tab
set shiftwidth=4          " Spaces for auto-indent
set expandtab             " Convert tabs to spaces
set autoindent            " Use indent from previous line
set softtabstop=4

" =====================
" Search settings
" =====================
set ignorecase            " Ignore case in search
set smartcase             " But respect uppercase letters
set incsearch             " Incremental search
set nohlsearch            " Do not highlight search results
set history=10000         " Command history size

" =====================
" Python-mode settings
" =====================
" let g:pymode_python = 'python3'
" let g:pymode_rope_complete_on_dot = 0
" let g:pymode_lint = 0

" Playing with custom completions
function! NemoFunc()
    let names = [ 'Bruce', 'Nemo', 'Blood', 'Luden' ]
    call complete(col('.'), names)
    return ''
endfunction

imap <C-x>m <C-r>=NemoFunc()<CR>
