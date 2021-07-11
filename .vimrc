set nocompatible
filetype off
set rtp+=~/.vim_runtime/bundle/vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
colorscheme gruvbox 


Plugin 'ambv/black'
" let g:black_virtualenv='~/.vim_black'
let g:black_linelength = 78
autocmd BufWritePre *.py execute ":Black"
set number
if exists('$TMUX')
    let &t_SI = "\ePtmux;\e\e[5 q\e\\"
    let &t_EI = "\ePtmux;\e\e[2 q\e\\"
else
    " solid underscore
    let &t_SI = "\e[5 q"
    " solid block
    let &t_EI = "\e[2 q"
endif
" 1 or 0 -> blinking block
" 3 -> blinking underscore
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar
