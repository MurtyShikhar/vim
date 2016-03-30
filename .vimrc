set nocompatible
filetype off
" set runtime path to include Vundle and initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

syntax on
"source /usr/local/lib/python2.7/site-packages/powerline
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=1
set noshowmode
" Quick ESC
imap jk <ESC>
map <C-n> :NERDTreeToggle<CR>
imap <C-Space> <C-N>
set guifont=Menlo\ for\ Powerline:h14
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set smarttab

nmap <silent> ,/ :nohlsearch<CR>
set autoindent
set smartindent
nnoremap ; :

set hidden 
function! Tab_Or_Complete()
	  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		      return "\<C-N>"
	  else
			  return "\<Tab>"
	  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
set tabstop=4
set shiftwidth=4
set showmode
set number
set hlsearch
set numberwidth=5

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l





