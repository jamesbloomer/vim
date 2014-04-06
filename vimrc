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
 NeoBundle 'reedes/vim-colors-pencil'
 NeoBundle 'reedes/vim-wordy'
 NeoBundle 'reedes/vim-lexical'

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

 " Key mappings
 nnoremap <silent> <leader>ff :call g:Jsbeautify()<cr>
