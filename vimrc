call pathogen#infect()
call pathogen#helptags()

set formatoptions=1
set linebreak

" Automatically writes file before make
set autowrite
set cursorline
set number
set ssop-=options    " do not store global and local values in a session
set ssop-=folds 

" Enable spell checking for txt and tex files
autocmd FileType txt set spell
autocmd FileType tex set spell
filetype indent on

" Use syntax highlighting
syntax on

" Do not auto-align hashes in puppet files
let g:puppet_align_hashes = 0

" Dimm the line nubmers in shells a bit
highlight LineNr ctermfg=grey

" Supertab configuration
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'

let &colorcolumn=join(range(81,999),",")
