" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'sickill/vim-monokai'
Plug 'scrooloose/syntastic'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'terryma/vim-multiple-cursors'
Plug 'rhysd/vim-clang-format'
Plug 'fatih/vim-go'
Plug 'ap/vim-css-color'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'katusk/vim-qkdb-syntax'
Plug 'evanleck/vim-svelte'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/indentpython.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'nvie/vim-flake8'
Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Initialize plugin system
call plug#end()


" General setting
set number
set ruler
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed


" For PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" For vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" For vim-monokai
syntax enable
colorscheme monokai


" For youcompleteme
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0


" For vim-numbertoggle
set relativenumber


" For vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight     = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight      = 1


" For vim-clang-format
let g:clang_format#filetype_style_options = {
	\ "cpp": {
	\ 	"AccessModifierOffset": -4,
	\	"AllowShortFunctionsOnASingleLine": "All",
	\ 	"AllowShortIfStatementsOnASingleLine": "true",
	\ 	"AlwaysBreakTemplateDeclarations": "true",
	\	"AlignConsecutiveAssignments": "true",
	\	"AlignConsecutiveDeclarations": "true",
	\	"AlignEscapedNewlines": "Left",
	\	"DerivePointerAlignment": "false",
	\	"PointerAlignment": "Right",
	\	"IndentCaseLabels": "false",
	\ 	"Standard": "C++11",
	\	"BasedOnStyle": "LLVM",
	\ 	"BreakBeforeBraces": "Stroustrup"
	\ },
	\ "proto" : {
	\ 	"ColumnLimit": 120,
	\	"BasedOnStyle": "Google",
	\	"AlignConsecutiveAssignments": "true",
	\	"AlignConsecutiveDeclarations": "true"
	\ }
	\}

autocmd BufWritePre *.c,*.h,*.cpp,*.hpp ClangFormat


" For vim-closetag
let g:closetag_filenames = '*.html,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'


" For rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


" For vim-prettier
let g:prettier#autoformat = 1

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" For Flake8
let python_highlight_all=1
