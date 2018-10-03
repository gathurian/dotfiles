" Colors {{{
    colorscheme wal
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
    highlight LineNr ctermfg=1


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
" Plugins {{{
    " Vim Plug, PluginManager (https://github.com/junegunn/vim-plug)
    " Either use full Github URLs or just the part after the 'github.com/'
    
    " Install plugins in the provided directory (dont use standard directories like 'plugin')
    call plug#begin('~/.vim/plugged')
    
    " Completor - Autocompletion
    Plug 'maralla/completor.vim'
    
    " VimTex - Help for LaTEX files
     Plug 'lervag/vimtex'
    
     " Minimalistic vim colorscheme
      Plug 'dikiaap/minimalist'

      " Automatically create themes from given picture
      Plug 'dylanaraps/wal.vim'

      " Snippets for vim
      Plug 'SirVer/ultisnips'
    " Initialize plugin system
    call plug#end()
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
" }}}
" VimTex {{{
    let g:tex_flavor = 'latex'
    let g:Tex_DefaultTargetFormat = 'pdf'
    let g:Tex_MultipleCompileFormats='pdf, aux'
    let g:vimtex_view_method = 'mupdf'
    let g:vimtex_complete_close_braces = 1
    let g:vimtex_quickfix_latexlog = {'default' : 0}
    set shellslash
"}}}

" vim:foldmethod=marker:foldlevel=0
