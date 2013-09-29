 set nocompatible               " Be iMproved

 set smartindent
 set tabstop=4
 set shiftwidth=4
 set expandtab
 set colorcolumn=120
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
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'jsbeautify' 

 filetype plugin indent on     " Required!
 "
 " Brief help
 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

 " Installation check.
 NeoBundleCheck

 map <C-n> :NERDTreeToggle<CR>
 nnoremap <silent> <leader>ff :call g:Jsbeautify()<cr>
