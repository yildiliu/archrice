let mapleader='<space>'

call plug#begin('~/.vim/plugged')

"for i3 syntax highlighting
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ervandew/supertab'
Plug 'vim-latex/vim-latex'
" for syntax highlighting in several languages
Plug 'sheerun/vim-polyglot'
" intellisense engine  
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dhruvasagar/vim-table-mode'
Plug 'jamessan/vim-gnupg'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'ycm-core/YouCompleteMe'

call plug#end()

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

" for Markdown-compatible tables with table-mode plugin
let g:table_mode_corner='|'

" update binds when sxhkdrc is updated
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &


" vim-pandoc-syntax
"
" solves the issue of some words being completly obscured (in my dark-theme
" terminal)
let g:pandoc#modules#disabled = ["spell"]
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#syntax#codeblocks#embeds#langs = ["bash=sh", "c"]
let g:pandoc#syntax#codeblocks#embeds#use = 1

" foldcolumn with a width of 0
let g:pandoc#folding#fdc = 0

" Toggle auto-indenting for code paste
set pastetoggle=<F2>

