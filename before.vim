" this file is loaded BEFORE plugins
if filereadable(expand("~/.local-before.vim"))
  echo "~/.local-before.vim is deprecated, please move it to ~/.vimrc.before"
  source ~/.local-before.vim
endif

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

if has('gui_running')
  if filereadable(expand("~/.gvimrc.before"))
    source ~/.gvimrc.before
  endif
endif

" cross
set cursorline
set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkgray guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkgray guifg=white

hi OverLength ctermbg=lightyellow ctermfg=black
match OverLength /\%91v.\+/
set cc=91
hi colorcolumn ctermbg=lightyellow ctermfg=black