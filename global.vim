" be 'modern'
set nocompatible
syntax on
filetype plugin indent on

" set special file type
"au BufRead,BufNewFile *.coffee retab
"au BufRead,BufNewFile *.html retab
au BufRead,BufNewFile *.html.erb set ft=html.eruby
au BufRead,BufNewFile *.less set ft=less
au BufRead,BufNewFile *.tpl set ft=html
au BufRead,BufNewFile *.xsl set ft=html
au BufWinEnter,BufNewFile *_spec.rb set ft=ruby.rspec
au BufRead,BufNewFile *.fdoc set syntax=yaml
au BufRead,BufNewFile *.json set syntax=json
au BufRead,BufNewFile *.hbs set syntax=handlebars | retab
"au BufRead,BufNewFile *.n3 set ft=n3
"au BufRead,BufNewFile /usr/local/etc/nginx/* set ft=nginx
"au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BufNewFile,BufRead *.gradle setf groovy
au BufRead,BufNewFile *.vroom set ft=vroom
au BufNewFile *.cjsx 0r $HOME/.vim/templates/cjsx
au BufNewFile *.jsx 0r $HOME/.vim/templates/jsx
au BufNewFile *.js 0r $HOME/.vim/templates/js

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" utf-8/unicode support
" requires Vim to be compiled with Multibyte support, you can check that by
" running `vim --version` and checking for +multi_byte.
if has('multi_byte')
  scriptencoding utf-8
  set encoding=utf-8
end

" clipboard
set clipboard=unnamed

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
"set nowrap             " Do not wrap words (view)
set wrap                " wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
"set listchars=tab:▷⋅,trail:·,eol:$
"set listchars=tab:▷⋅,trail:·
"set list
"set list lcs=tab:\|\ "（最後是個space），tab style
set list lcs=tab:\ \ "（最後是個space），tab style

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" behavior
                        " ignore these files when completing names and in
                        " explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
                        " save the position last time
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set shell=/bin/bash     " use bash for shell commands
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " enable multiple modified buffers
set history=1000
set autoread            " automatically read file that has been changed on disk and doesn't have changes in vim
                        " allow backspacing over everything in insert mode
set backspace=indent,eol,start
set guioptions-=T       " disable toolbar"
set completeopt=menuone,preview
let bash_is_sh=1        " syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file
"set fixdel                 " fix terminal code for delete (if delete is broken but backspace works)
"set indent
set smartindent
set autoindent          " automatically indent new line
set cindent

set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
set et                  " expand tabs into spaces

set ttimeoutlen=50      " fast Esc to normal mode

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set noswapfile          " do not write .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.

" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set nofoldenable        "dont fold by default "

" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim

let mapleader = ","
let maplocalleader = "\\"

" CTRL-c is copy (in visual mode only)
" CTRL-x is cut (in visual mode only)
"vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" set for html
let html_no_rendering=1