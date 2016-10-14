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

 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

 " Plugins
 "
 Plugin 'nanotech/jellybeans.vim'
 Plugin 'mikewest/vimroom'
 Plugin 'jsbeautify' 
 Plugin 'reedes/vim-pencil'
 Plugin 'reedes/vim-colors-pencil'
 Plugin 'reedes/vim-wordy'
 Plugin 'reedes/vim-lexical'
 Plugin 'fatih/vim-go'
 Plugin 'plasticboy/vim-markdown'
 Plugin 'bling/vim-airline'
 Plugin 'edkolev/tmuxline.vim'
 Plugin 'junegunn/goyo.vim'
 Plugin 'junegunn/limelight.vim'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

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
