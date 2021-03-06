" Specify a directory for plugins "
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"Plug 'ryanoasis/vim-devicons'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'mhartington/oceanic-next'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'kshenoy/vim-signature'
" Initialize plugin system
call plug#end()

set encoding=UTF-8
set mouse=a
syntax on
filetype plugin indent on
syntax enable
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" for vim 7
set t_Co=256
set number
set noswapfile

" for vim 8
if (has("termguicolors"))
	set termguicolors
endif
set tabstop=2
set shiftwidth=2

" ================
" NERDTree
" ================

" toggle NERDTree with ctrl + n
map <C-n> :NERDTreeToggle<CR>

"vim-jsx
let g:jsx_ext_required = 0
" display beginning tags with the same color as closing tag
hi link xmlEndTag xmlTag

" ================
" PRETTIER 
" ================

" auto-format with Prettier on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

" https://github.com/prettier/vim-prettier#overwrite-default-prettier-configuration
" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'false'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'false'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'avoid'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
