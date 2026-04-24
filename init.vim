" ============================================================
" Leader
" ============================================================

let mapleader = " "


" ============================================================
" Core Behavior
" ============================================================

set autoread
set encoding=utf-8
set fileformat=unix
set fileformats=unix,dos
set hidden             " allow hidden buffers
set modelines=0        " security: don't run random Vim commands
set nocompatible


" ============================================================
" UI / Display
" ============================================================

set cursorline
set laststatus=2
set linespace=4
set nowrap
set number
set relativenumber
set ruler
set scrolloff=4
set showcmd
set showmode
set t_vb=
set ttyfast


" ============================================================
" Neovide
" ============================================================

set guioptions=
"set guifont=h12

if exists("g:neovide")
    let g:neovide_scroll_animation_length = 0.5
    let g:neovide_refresh_rate = 165
    let g:neovide_cursor_animation_length = 0.05
    let g:neovide_cursor_vfx_mode = ""
endif


" ============================================================
" Colors / Syntax
" ============================================================

set background=dark
syntax on
colorscheme quiet


" ============================================================
" Indentation
" ============================================================

set expandtab          " convert tabs to spaces
set shiftround         " round indents to multiples of shiftwidth
set shiftwidth=4       " spaces used by << and >>
set softtabstop=4      " tab in insert mode behaves as 4 spaces
set tabstop=4          " tab appears as 4 spaces wide


" ============================================================
" Auto-Indentation / Formatting
" ============================================================

set autoindent
set cindent
set cinoptions=l1,g0,t0,(0,W4,:4

autocmd FileType * setlocal formatoptions-=cro


" ============================================================
" Search
" ============================================================

set hlsearch
set incsearch
set ignorecase
set smartcase
set noshowmatch


" ============================================================
" Command-Line Completion
" ============================================================

set wildmenu


" ============================================================
" Mouse / Clipboard
" ============================================================

set mouse=a
set clipboard=unnamed,unnamedplus


" ============================================================
" Netrw
" ============================================================

let g:netrw_banner = 0
let g:netrw_list_hide = '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$'
let g:netrw_bufsettings = 'noma nomod nobl nowrap ro'

nnoremap <leader>ef :Ex<CR>


" ============================================================
" Keymaps
" ============================================================

nnoremap <leader>ws :%s/\s\+$//e<CR>:noh<CR>
