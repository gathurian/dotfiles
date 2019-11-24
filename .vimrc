" Plugins {{{
" Vim Plug, PluginManager (https://github.com/junegunn/vim-plug)
" Either use full Github URLs or just the part after the 'github.com/'

" Install plugins in the provided directory (dont use standard directories like 'plugin')
call plug#begin('~/.vim/plugged')

" VimTex - Help for LaTEX files
Plug 'lervag/vimtex'

" Snippets for vim
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Tree for vim-Documents
Plug 'https://github.com/scrooloose/nerdtree.git'

" Fileexplorer
Plug 'https://github.com/wincent/command-t.git'

"Theme for Vim"
Plug 'chriskempson/base16-vim'

"Another Theme for Vim
Plug 'agude/vim-eldar'

" Autocomplete
Plug 'maralla/completor.vim'

" Initialize plugin system
call plug#end()
"}}}
" Colors {{{
colorscheme eldar
set background=dark
" }}} 
" UI {{{
syntax on
set ruler
" }}}
" Layout {{{
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set foldenable          " enable folding
set foldlevelstart =4   " Start folding at level 4

" Wordwrap
set wrap
set linebreak
set nolist

" Display options
set showmode
set cmdheight=1

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number
""highlight LineNr ctermfg=1


" Automatic indentation
filetype indent on
" }}}
"Status Line {{{
set laststatus=2
hi StatusLine ctermfg=NONE ctermbg=red cterm=NONE
hi StatusLineNC ctermfg=black ctermbg=red cterm=NONE
hi User1 ctermfg=black ctermbg=magenta
hi User2 ctermfg=NONE ctermbg=NONE
hi User3 ctermfg=black ctermbg=blue
hi User4 ctermfg=black ctermbg=cyan
set statusline=\                    " Padding
set statusline+=%f                  " Path to the file
set statusline+=\ %1*\              " Padding & switch colour
set statusline+=%y                  " File type
set statusline+=\ %2*\              " Padding & switch colour
set statusline+=%=                  " Switch to right-side
set statusline+=\ %3*\              " Padding & switch colour
set statusline+=line                " of Text
set statusline+=\                   " Padding
set statusline+=%l                  " Current line
set statusline+=\ %4*\              " Padding & switch colour
set statusline+=of                  " of Text
set statusline+=\                   " Padding
set statusline+=%L                  " Total line
set statusline+=\                   " Padding
"}}}
" Key Mappings {{{
" Automatically close brackets and quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Move between windows with CTRL+HJKL
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Select autocompletion/completor with <Tab>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

" Set Leader to ","
let mapleader=","

nnoremap <F7> :NERDTreeToggle <CR>

nnoremap j gj
nnoremap k gk

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Searching {{{
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase


" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase
" }}}
" Misc {{{
" Don't redraw while executing macros (good performance config)
set lazyredraw

" for tab-completion
set wildmenu

" For regular expressions turn magic on
set magic


" Store info from no more than 100 files at a time, 9999 lines of text
" 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100
" }}}
" Text-Editing {{{
" Encoding
set encoding=utf-8

"Set Spellchecking language
set spelllang=de_ch

" Set text-wrapping
set wrap

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start


let g:indent_guides_enable_on_vim_startup = 0
set nolist
" }}}
" VimTex {{{
let g:tex_flavor = 'latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let g:vimtex_view_method = 'mupdf'
let g:vimtex_complete_close_braces = 1
let g:vimtex_quickfix_latexlog = {'default' : 0}
set conceallevel=1
let g:tex_conceal='abdmg'
set shellslash

autocmd FileType * exec("setlocal dictionary+=".$HOME."/.vim/dictionaries/".expand('<amatch>'))
set completeopt=menuone,longest,preview
set complete+=k
"}}}
" MarkdownPreview {{{

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = '/usr/bin/chromium'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1
            \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

"}}}
"{{{ Snippets
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsEditSplit='context'

"}}}

" vim:foldmethod=marker:foldlevel=0
