" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/syntastic'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'terryma/vim-multiple-cursors'
Plug 'rhysd/vim-clang-format'
Plug 'townk/vim-autoclose'
Plug 'fatih/vim-go'
Plug 'ap/vim-css-color'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Initialize plugin system
call plug#end()

" General setting
set number
set ruler
set hlsearch
set tabstop=4

" For vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" For vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256


" For youcompleteme
set encoding=utf-8


" For syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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
	\ 	"ColumnLimit": 120,
	\ 	"AccessModifierOffset": -4,
	\ 	"AllowShortIfStatementsOnASingleLine": "true",
	\ 	"AlwaysBreakTemplateDeclarations": "true",
	\	"AlignConsecutiveAssignments": "true",
	\ 	"Standard": "C++11",
	\ 	"BreakBeforeBraces": "Stroustrup"
	\ },
	\ "javascript" : {
	\	"BasedOnStyle": "Google",
	\	"AlignConsecutiveAssignments": "true"
	\ }
	\}


" For vim-autoclose
let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}


" For vim-closetag
let g:closetag_filenames = '*.html,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'


" For vim-prettier
let g:prettier#config#print_width = 120
let g:prettier#autoformat = 1
