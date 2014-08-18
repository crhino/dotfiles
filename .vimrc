" Chris Piraino's .vimrc

" Necessary to be cool
set nocompatible
filetype off

"Vundle stuff

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" All plugins must be defined before this line
call vundle#end()
filetype plugin indent on


" Show wtf you are doing
set showcmd

" Duh
set autoindent

" Spaces are your friend
set expandtab
set smarttab

" No 8 character tabs
set shiftwidth=2
set softtabstop=2

" Make it use a block cursor
set cursorline
if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[4 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

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

" Syntax highlighting
syntax enable
