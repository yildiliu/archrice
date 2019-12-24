call plug#begin('~/.vim/plugged')

"for i3 syntax highlighting
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ervandew/supertab'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

"enable autocompletion
	set wildmode=longest,list,full

set number
"key mapping switch between number and relative number
nnoremap <F3> :set relativenumber!<CR>

"To Copy and Paste easily
vnoremap <C-c> "+y
map <C-v> "+p

syntax on
set ruler
set linebreak

" Im using make files for compiling tex files 
autocmd Filetype tex map <F5> :!w <bar> make
" for R Markdown
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
