let mapleader='<space>'
set background=dark

source $HOME/.config/nvim/vim-plug/plugins.vim

"enable autocompletion
set wildmode=longest,list,full

set number

" save
nnoremap <space>w :w<CR>
" exit
nnoremap <space>q :q<CR>

syntax on
set ruler
set linebreak

" compiling tex file. First save and then compile.
autocmd Filetype tex map <F4> :w<bar>!pdflatex %<enter>

" set syntax of tex files 
augroup latexsyntax 
  " Remove all vimrc autocommands within scope
  autocmd! 
  autocmd BufNewFile,BufRead *.tex   set syntax=tex
  autocmd BufNewFile,BufRead *.cls   set syntax=tex
  autocmd BufNewFile,BufRead *.lco   set syntax=tex
augroup END

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" This enables automatic indentation as you type.
filetype indent on

" set background color of the popup menu

highlight Pmenu ctermbg=gray guibg=gray


" SNIPPETS
"nnoremap ,rhead :-1read ~/.vim/snippets/header.yaml

command Srmdhead :-1read ~/.vim/snippets/header.yaml

command Srmdpdfhead :-1read ~/.vim/snippets/pdfheader.yaml

command Srmdcodeblock :-1read ~/.vim/snippets/codeblock.rmd

command Srmdstyle :-1read~/.vim/snippets/rmdstyle.css

command Stexbeamerframe :-1read~/.vim/snippets/texframe.tex

command Stexitemize :-1read~/.vim/snippets/texitemize.tex

command Srmdknitrimg :-1read ~/.vim/snippets/knitr-img.rmd

command Srmdcomment :-1read ~/.vim/snippets/comment.rmd

" rmarkdown

autocmd Filetype rmd map <F5> :w<bar>!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>



" for automatic formatting of paragraphs
autocmd BufReadPost,BufNewFile *.rmd,*.tex setlocal textwidth=100


" add comment snippet 
autocmd Filetype rmd nnoremap <silent> ,c :Srmdcomment<CR>


" Save file as sudo on files that require root permission
" cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Change the colour of the folded line
highlight Folded ctermbg=black

autocmd Filetype *.md setlocal tabstop=2
autocmd Filetype *.md setlocal shiftwidth=2
