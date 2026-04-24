" ============================================================
" Leader
" ============================================================

let mapleader = " "


" ============================================================
" Core Behavior
" ============================================================

set nocompatible
set modelines=0        " security: don't run random Vim commands
set encoding=utf-8
set autoread
set hidden             " allow hidden buffers
set fileformat=unix
set fileformats=unix,dos


" ============================================================
" UI / Display
" ============================================================

set nowrap
set number
set relativenumber
set ruler
set cursorline
set scrolloff=4
set linespace=4
set t_vb=
set ttyfast
set laststatus=2
set showmode
set showcmd


" ============================================================
" Neovide
" ============================================================

set guioptions=
set guifont=JetBrains\ Mono:h12

if exists("g:neovide")
    let g:neovide_scroll_animation_length = 0.2
    let g:neovide_refresh_rate = 165
    let g:neovide_cursor_animation_length = 0.03
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
set tabstop=4          " tab appears as 4 spaces wide
set shiftwidth=4       " spaces used by << and >>
set softtabstop=4      " tab in insert mode behaves as 4 spaces
set shiftround         " round indents to multiples of shiftwidth


" ============================================================
" Auto-Indentation / Formatting
" ============================================================

set autoindent
set cindent
set cinoptions=l1,g0,t0,(0,W4,:4
set formatoptions-=cro

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


" ============================================================
" Native Autocomplete Popup
" ============================================================

set complete=.,w,b,u,t,i
set completeopt=menuone,noinsert,noselect
set shortmess+=c

function! AutoComplete()
    if pumvisible()
        return
    endif

    let line = getline('.')
    let col = col('.') - 1
    let prefix = matchstr(strpart(line, 0, col), '\k\+$')

    if len(prefix) >= 3
        call feedkeys("\<C-n>", 'n')
    endif
endfunction

autocmd TextChangedI * call AutoComplete()
