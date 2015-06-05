" Chris Piraino's .vimrc

" Necessary to be cool
set nocompatible
filetype off

"Vundle stuff

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'wting/rust.vim'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rking/ag.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'taglist.vim'

" All plugins must be defined before this line
call vundle#end()
filetype plugin indent on

" Syntax highlighting
syntax enable

" Color Scheme
set t_Co=16
set background=light
colorscheme solarized

" Airline Config
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇  '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_section_c = '%t'
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#branch#enabled = 1

" NerdTree mappings
noremap \ :NERDTreeToggle<CR>
noremap \| :NERDTreeFind<CR>

" Duh
set autoindent

" Persistent undo
if has('persistent_undo')
set undofile
set undodir=~/.vim/.undo
endif

" Spaces are your friend
set expandtab
set smarttab

" Space turns off highlighting
noremap <Space> :noh<CR>

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
inoremap jk <Esc>

" Search as you are typing!
set incsearch

" Highlight those searches!
set hlsearch

" Set off the other paren.
highlight MatchParen ctermbg=4

set pastetoggle=<F6>
map <F6> :set invpaste<CR>:set paste?<CR>

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

" Use syntax for folding
set foldlevelstart=99
set foldmethod=syntax

"Searching
if executable('ack')
set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
set grepformat=%f:%l:%c:%m
endif
if executable('ag')
set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
set grepformat=%f:%l:%c:%m
endif

" Show wtf you are doing
set showcmd
set laststatus=2

set tags+=/home/chris/workspace/rust/TAGS.vi

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
