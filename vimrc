 set nocompatible               " Be iMproved
 set number
 set smartindent
 set tabstop=4
 set shiftwidth=4
 set expandtab
 set nowrap

 syntax enable
 set t_Co=256
 colorscheme jellybeans

 if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#rc(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 "
 NeoBundle 'nanotech/jellybeans.vim'
 NeoBundle 'mikewest/vimroom'
 NeoBundle 'jsbeautify' 
 NeoBundle 'reedes/vim-pencil'
 NeoBundle 'reedes/vim-colors-pencil'
 NeoBundle 'reedes/vim-wordy'
 NeoBundle 'reedes/vim-lexical'
 NeoBundle 'fatih/vim-go'
 NeoBundle 'plasticboy/vim-markdown'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'edkolev/tmuxline.vim'
 NeoBundle 'junegunn/goyo.vim'
 NeoBundle 'junegunn/limelight.vim'

 filetype plugin indent on     " Required!
 "
 " Brief help
 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

 " Installation check.
 NeoBundleCheck

 "vim-lexical settings
 let g:lexical#spelllang = ['en_gb',]
 let g:lexical#thesaurus = ['~/.vim/thesaurus/mthesaur.txt',]
 let g:lexical#spell_key = '<leader>s'
 let g:lexical#thesaurus_key = '<leader>t'
 let g:lexical#dictionary_key = '<leader>k'

 augroup lexical
     autocmd!
     autocmd FileType markdown call lexical#init()
     autocmd FileType textile call lexical#init()
     autocmd FileType text call lexical#init()
 augroup END

 " Markdown
 let g:vim_markdown_frontmatter=1
 let g:vim_markdown_folding_disabled=1
 
 " Key mappings
 nnoremap <silent> <leader>ff :call g:Jsbeautify()<cr>

 " airline
 let g:airline_powerline_fonts=1
 set laststatus=2

 " Limelight
 " Color name (:help cterm-colors) or ANSI code
 let g:limelight_conceal_ctermfg = 'gray'
 let g:limelight_conceal_ctermfg = 240
 
 " Color name (:help gui-colors) or RGB color
 let g:limelight_conceal_guifg = 'DarkGray'
 let g:limelight_conceal_guifg = '#777777'

 " Limelight / Goyo
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight! 
