call plug#begin('~/.config/nvim/autoload/plugged')

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
Plug 'preservim/nerdtree'
Plug 'thaerkh/vim-indentguides'
"Plug 'ycm-core/YouCompleteMe'
Plug 'Yilin-Yang/vim-markbar'

call plug#end()


" for Markdown-compatible tables with table-mode plugin
let g:table_mode_corner='|'


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
nmap <C-n> :NERDTreeToggle<CR>

" To prevent conceal in LaTeX files
let g:tex_conceal = ''

" width of a vertical split markbar
let g:markbar_width = 50

" only display alphabetic marks a-i and A-I
let g:markbar_marks_to_display = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

