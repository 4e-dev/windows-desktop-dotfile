let mapleader = " "
set nocompatible
set modelines=0 " security: dont run random vim commands
set nowrap
set encoding=utf-8 " encoding
set autoread
set linespace=4
set t_vb=

" GVim
set guioptions=

" Neovide
if exists("g:neovide")
    let g:neovide_scroll_animation_length = 0.2
    let g:neovide_refresh_rate = 165
    let g:neovide_cursor_animation_length = 0.03
    let g:neovide_cursor_vfx_mode = ""
endif

" consistent line ending
set fileformat=unix
set fileformats=unix,dos
"set statusline+=\ [%{&ff}] " show file format in statusline

" show line numbers
set number
set relativenumber
set ruler

" indentation
set expandtab      " convert tabs (\t) to spaces
set tabstop=4      " \t will appear as 4 spaces wide
set shiftwidth=4   " number of spaces when using shifting (<, >)
set softtabstop=4  " tab in insert mode is the same as 4 spaces
set shiftround     " round indents to multiple of 'shiftwidth'

" auto-indentation and formatting
set autoindent                      " copy indent from current line to new line
set cindent                         " similar to smartindent (c-like indentation)
set cinoptions=l1,g0,t0,(0,W4,:4    " defines how cindent behaves
set formatoptions-="cro"

" cursor
set scrolloff=4
set cursorline

set hidden " allow hidden buffers
set ttyfast " rendering
set laststatus=2 " status bar

" last line
set showmode
set showcmd

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set noshowmatch

set wildmenu " command-line completion

" colorscheme + text
set guifont=JetBrains\ Mono:h14
set background=dark
syntax on
colo quiet

" mouse
set mouse=a

" clipboard
set clipboard=unnamed,unnamedplus " copy to system clipboard

" netrw hotkey
nnoremap <leader>ef :Ex<CR>

" removes trailing white spaces
nnoremap <leader>ws :%s/\s\+$//e<CR>:noh<CR>

" netrw settings
let g:netrw_banner = 0
let g:netrw_list_hide = '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$'
let g:netrw_bufsettings = 'noma nomod nobl nowrap ro'
