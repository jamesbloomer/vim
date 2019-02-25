" ------------- SETTINGS --------------

set nocompatible
filetype plugin indent on  " load filetype-specific indent files

set tabstop=2 	      	" number of visual spaces per tab
set softtabstop=2 	    " number of spaces in tab when editing
set shiftwidth=2   	    " how many columns text is indented with the reindent operations
set expandtab	        	" tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set nowrap		          " don't wrap lines
set autowrite		        " save on buffer switch
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=syntax   " set the fold based method
set laststatus=2	      " display the status line always

syntax enable		        " enable syntax processing
set t_Co=256            " ? TODO

" Auto completion
set completeopt+=menuone " Mandatory for mucomplete
inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c        " Shut off completion messages
set belloff+=ctrlg      " If Vim beeps during completion

" colours
colorscheme gruvbox 	  " the default colour scheme
set background=dark 	  " use the dark background variant of the colur scheme

" ----------- OPTIONS --------------

" airline
let g:airline_powerline_fonts = 1

" Highlight columns past 80, they're too long!
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

" ale options
let g:ale_linters = {'go': ['gometalinter', 'gofmt', 'go build', 'gosimple']}
let g:ale_go_gometalinter_options = "--fast"

" vim-go options
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 0
let g:go_auto_sameids = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1

" set initial netrw style
let g:netrw_liststyle=3

" enable automatic completion at startup
let g:mucomplete#enable_auto_at_startup = 1

" ------------- MAPPINGS --------------

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" golang vim-go bindings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test-func)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)o
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>i <Plug>(go-info)
au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" Tagbar toggle
nmap <F8> :TagbarToggle<CR>

" Auto reload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
