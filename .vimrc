call plug#begin('~/.vim/plugged')

"for i3 syntax highlighting
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ervandew/supertab'
Plug 'vim-latex/vim-latex'
" for syntax highlighting in several languages
Plug 'sheerun/vim-polyglot'
" intellisense engine  
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

"enable autocompletion
	set wildmode=longest,list,full

set number
"key mapping switch between number and relative number
nnoremap <F3> :set relativenumber!<CR>

syntax on
set ruler
set linebreak

" für R Markdown
autocmd Filetype rmd map <F5> :w<bar>!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" compiling tex file. First save and then compile.
autocmd Filetype tex map <F4> :w<bar>!pdflatex %<enter>

" set syntax of tex files 
augroup latexsyntax 
  " Remove all vimrc autocommands within scope
  autocmd! 
  autocmd BufNewFile,BufRead *.tex   set syntax=tex
  autocmd BufNewFile,BufRead *.cls   set syntax=tex
augroup END

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" This enables automatic indentation as you type.
filetype indent on

" set background color of the popup menu

highlight Pmenu ctermbg=gray guibg=gray


" SNIPPETS
"nnoremap ,rhead :-1read ~/.vim/snippets/header.yaml

command Srhead :-1read ~/.vim/snippets/header.yaml



