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

 filetype plugin indent on     " Required!
 "
 " Brief help
 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

 " Installation check.
 NeoBundleCheck

 nnoremap <silent> <leader>ff :call g:Jsbeautify()<cr>
