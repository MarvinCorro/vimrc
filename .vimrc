" ~/.vimrc files as made by Marvin Corro:
" Please use if you desire!!!!




" colors IMPORTANT, THEMES WILL NOT WORK WITHOUT THIS LINE
set t_Co=256


"""""""PLUGINS"""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"add plugins, this is to manages rtp 
Plugin 'VundleVim/Vundle.vim'

" status bar at the bottom with themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ultisnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Formats code for languages, this is the formmater you have to install how
" to format seperate
Plugin 'Chiel92/vim-autoformat'

" c & c++ freaking hightlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" auto complete
Plugin 'Valloric/YouCompleteMe'

" nerd tree + git plugin
Plugin 'scrooloose/nerdTree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Deliminate
Plugin 'raimondi/delimitmate'

Plugin 'yggdroot/indentline'

call vundle#end()            " required
filetype plugin indent on    " required


" airplane
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
"let g:airline_detect_modified=1
let g:airline_theme='base16_3024'
"let g:airline_detect_paste=1
"let g:airline_detect_crypt=1
"let g:airline_detect_spell=1
"let g:airline_detect_iminsert=0
"let g:airline_inactive_collapse=1
"let g:airline_powerline_fonts=0
"let g:airline_mode_map = {}
"let g:airline_exclude_filenames = []
"let g:airline_exclude_filetypes = []
"let g:airline_exclude_preview = 0
"let w:airline_disabled = 1
"let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1


let g:airline_theme='ubaryd'
"let g:airline_theme='base16_3024'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:bufferline_echo = 0
"let g:airline#extensions#bufferline#enabled = 1
"let airline#extensions#default#section_use_groupitems = 0

"if !exists('g:airline_symbols')
"          let g:airline_symbols = {}
"  endif
"let g:airline_symbols.space = "\ua0"


" Change the status bar
"fun0ction! AirlineInit()
"let g:airline_section_a = airline#section#create_right(['mode']) 
"let g:airline_section_c = airline#section#create_right(['%f'])

"let g:airline#extensions#bufferline#enabled = 1

"let g:airline#extensions#bufferline#overwrite_variables = 0
"let g:airline#extensions#branch#format = 0


"function! AirlineInit()
"   let g:airline_section_a = airline#section#create(['mode'])
"   let g:airline_section_b = airline#section#create_left(['hunks'])
"   let g:airline_section_c = airline#section#create(['%f'])
"   let g:airline_section_x = airline#section#create(['%{toupper(strpart(&filetype,0,1)) . strpart(&filetype,1)}'])
"   let g:airline_section_y = airline#section#create_right(['branch', 'ffenc'])
"   let g:airline_section_z = airline#section#create_right(['(%l/%c) [%p%%]'])
"endfunction
"autocmd VimEnter * call AirlineInit()

" Smart tabss

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
"let g:airline#extensions#tabline#exclude_preview = 1

let g:airline_left_alt_sep = '|'


" Ultisnips
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Syntax-astic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_check_on_open=1
"let g:syntastic_enable_signs=1

" vim-autoformat

" vim-cpp-enhanced-highlight
"let g:cpp_class_scope_highlight = 1
"let g:cpp_experimental_template_highlight = 1

" Nerd Tree + Git 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
"hi link treeDir  Keyword

" You Complete Me
let g:ycm_python_binary_path = '/usr/bin/python3'

" indentLine ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"let g:indentLine_color_term = 239
let g:indentLine_char = '|'
" GVim
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
"let g:indentLine_color_tty_light = 4 " (default: 4)
"let g:indentLine_color_dark = 0 " (default: 2))
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

"""""""GENERAL"""""""""""
" set histroy
set history=700

" show path on status bar
"set statusline=
"set statusline+=%F
"set statusline+=%w%h%m%r
"set statusline=%<%f\\
"set statusline+=%{fugitive\#statusline()}
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2
"set statusline+=\\ [%{getcwd()}]

"set statusline+=\\ [%{&ff}/%Y]
"set statusline+=\\ [%{&ff}/%Y]
"""""""Interface"""""""""

let g:solarized_termcolors=256

" themes depending on language
autocmd BufEnter * colorscheme behelit
autocmd BufEnter *.html colorscheme monokai
autocmd BufEnter *.js colorscheme distinguished
autocmd BufEnter *.css colorscheme candy
"autocmd BufEnter *.cpp colorscheme cpp
autocmd BufEnter *.py colorscheme Zenburn
"autocmd BufEnter *.c colorscheme

" syntax 
syntax enable

set background=dark

" testing file tpye
filetype on

" Turn on Wild Menu
set wildmenu

" Current position
set noruler

" Ignore case when searching
set ignorecase

" When searching be smart
set smartcase

" highlight search
set hlsearch

" show matching braces {}
set showmatch

" set numbers on side
set number

" show command line at the bottom
"set showcmd

" show where your cursor is
set cursorline

""""""""""SPACING""""""""""""

" spaces per tab
set tabstop=4

" spaces from when in edit
set softtabstop=4

" tab are spaces!!!
set expandtab

set textwidth=80

set shiftwidth=4








