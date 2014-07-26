" Chris Piraino's .vimrc

" Necessary to be cool
set nocompatible

" Show wtf you are doing
set showcmd

" Syntax highlighting
filetype on
filetype plugin on
syntax enable

" Duh
set autoindent

" Spaces are your friend
set expandtab
set smarttab

" No 8 character tabs
set shiftwidth=2
set softtabstop=2


" Tab complete commands
set wildmenu
set wildmode=list:longest,full

" Backspace
set backspace=2

" How could you go without?
set number

" Ignore case in search
set ignorecase

" Be smart
set smartcase

" Fuck the ESC key!
inoremap jj <Esc>

" Search as you are typing!
set incsearch

" Highlight those searches!
set hlsearch

" Set off the other paren.
highlight MatchParen ctermbg=4

"Use TAB to complete when typing words, else inserts TABs as usual.
""Uses dictionary and source files to find matching words to complete.

"See help completion for source,
""Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
""Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"


filetype plugin indent on
syntax on
