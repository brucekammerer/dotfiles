" =====================
" Basic options
" =====================
set hidden               " Разрешить переключение буферов без сохранения
set number               " Показ номеров строк
set relativenumber       " Относительные номера строк
set cursorline           " Подсветка текущей строки
set scrolloff=8          " Минимальный отступ при скролле
set sidescrolloff=8      " Минимальный горизонтальный отступ
set nowrap               " Отключить перенос строк
set spelllang=en,ru      " Проверка орфографии для английского и русского
set nocp                 " Современный Vim, а не vi
filetype plugin on       " Включить автоподгрузку плагинов по типу файла
set clipboard=unnamedplus

" =====================
" Russian language input
" =====================
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1

" =====================
" Indentation
" =====================
set nolist               " Не показывать спецсимволы табуляции и конца строки
set tabstop=4            " Ширина таба в пробелах
set shiftwidth=4         " Количество пробелов при автоотступе
set expandtab            " Преобразовывать табы в пробелы
set autoindent           " Автоматический отступ по предыдущей строке

" =====================
" Search
" =====================
set ignorecase           " Игнорировать регистр при поиске
set smartcase            " Но учитывать регистр, если есть заглавные
set hlsearch             " Подсвечивать найденное
set incsearch            " Поиск по мере ввода

" =====================
" Visuals
" =====================
if has("termguicolors")
  set termguicolors      " Поддержка true colors
endif
set colorcolumn=80       " Вертикальная линия на 80 символах
set noshowmode           " Не показывать режим (Normal/Insert) внизу

" =====================
" File handling
" =====================
set nobackup             " Отключить создание backup-файлов
set autoread             " Автоматически читать файл при внешних изменениях

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

" =====================
" Plugins (vim-plug)
" =====================
call plug#begin()
Plug 'nordtheme/vim'               " Темная цветовая схема Nord
Plug 'jiangmiao/auto-pairs'        " Автозакрытие скобок
Plug 'tpope/vim-commentary'        " Комментирование кода
Plug 'mattn/emmet-vim'             " Быстрое создание HTML/CSS
Plug 'tpope/vim-unimpaired'        " Полезные команды для парного перемещения
Plug 'junegunn/fzf.vim'            " FZF интеграция с Vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Установка FZF
call plug#end()

" =====================
" Command-line completion
" =====================
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum,fuzzy
set pumheight=8
set wildignorecase

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

" The code inside this file makes Vim remember last cursor position inside
" a file. Need to explore the reason.
source $VIMRUNTIME/vimrc_example.vim

" =====================
" Colorscheme settings
" =====================
colorscheme nord

" Сделать фон прозрачным
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight Folded ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
