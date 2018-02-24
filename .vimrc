" Plugins.
call plug#begin()

" Syntax checking.
Plug 'vim-syntastic/syntastic'
" Easily toggle commented lines.
Plug 'scrooloose/nerdcommenter'
" Autocompletion.
Plug 'ervandew/supertab'
" Surround shortcuts.
Plug 'tpope/vim-surround'
" Autoclose pairs.
Plug 'jiangmiao/auto-pairs'
" Onedark theme.
Plug 'joshdick/onedark.vim'
" Markdown preview.
Plug 'suan/vim-instant-markdown'
" Snippets.
Plug 'tomtom/tlib_vim'| " Dependency
Plug 'marcweber/vim-addon-mw-utils'| " Dependency
Plug 'garbas/vim-snipmate'
" Chords.
Plug 'kana/vim-arpeggio'
" React
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Swift
Plug 'keith/swift.vim'
" OpenHAB.
Plug 'cyberkov/openhab-vim'

call plug#end()

" Load arpeggio.
call arpeggio#load()

" Pick colorscheme.
colorscheme onedark

filetype plugin indent on
" Enable all Python syntax highlighting features.
let python_highlight_all = 1
" JSX syntax highlighting in .js files.
let g:jsx_ext_required = 0
" Enable syntax highlighting.
syntax enable
" Show line lumbers.
set number
" Tabs have 4 spaces.
set tabstop=4
set softtabstop=4
" Filetype specific indents.
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
" Shift with << and >>.
set shiftwidth=4
" Expand tabs into spaces.
set expandtab
" Indent when starting a new line.
set autoindent
" Use the system clipboard.
set clipboard=unnamed
" Use unix file format.
set fileformat=unix
" Make backspace function normally.
set backspace=indent,eol,start
" Exit insert mode.
inoremap hh <Esc>
"Arpeggio inoremap ht <Esc>
" Go to end of line in insert mode.
Arpeggio inoremap hs <Esc>f)a
" Make j and k work as expected for long lines.
map j gj
map k gk
" Beginning and end of line.
map 1 ^
map 0 $
" Avoid Ex mode.
noremap Q <nop>
" Insert empty line in normal mode.
map <CR> o<Esc>
" Increment/decrement numbers with +/-.
map + <c-a>
map - <c-x>

" The following is for the onedark color scheme.

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif
