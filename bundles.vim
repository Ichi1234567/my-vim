set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" plugin management
Bundle 'gmarik/vundle'


" color themes
Bundle 'endel/vim-github-colorscheme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-vividchalk'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'nanotech/jellybeans.vim'

" local vimrc
Bundle 'embear/vim-localvimrc'


" file tree
Bundle 'scrooloose/nerdtree'
" file tree and tabs interaction
Bundle 'jistr/vim-nerdtree-tabs'
" fuzzy file open
Bundle 'kien/ctrlp.vim'
" yank history
Bundle 'YankRing.vim'
" visual undo tree
Bundle 'sjl/gundo.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
" multiple cursor operation
"Bundle 'terryma/vim-multiple-cursors'
" search plugin
"Bundle 'osyo-manga/vim-anzu'


" vertical alignment tool
Bundle 'junegunn/vim-easy-align'
" vertical indent
"Bundle 'Yggdroot/indentLine'
" url based hyperlinks for text files
Bundle 'utl.vim'
" text object based on indent level (ai, ii)
Bundle 'austintaylor/vim-indentobject'
Bundle 'lukaszb/vim-web-indent'
" status block
Bundle 'Lokaltog/vim-powerline'


" git support
Bundle 'tpope/vim-fugitive'
" hide .gitignore-d files from vim
Bundle 'vitaly/vim-gitignore'
" Github's gist support
Bundle 'mattn/gist-vim'
" plugin for resolving three-way merge conflicts
Bundle 'sjl/threesome.vim'
" git diff
Bundle 'airblade/vim-gitgutter'


" syntax support
Bundle 'vim-ruby/vim-ruby'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'JSON.vim'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'nono/vim-handlebars'
Bundle 'juvenn/mustache.vim'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vitaly/vim-syntastic-coffee'
Bundle 'pangloss/vim-javascript'
"Bundle 'vim-scripts/jade.vim'
Bundle 'wavded/vim-stylus'
Bundle 'VimClojure'
" Support for user-defined text objects
Bundle 'kana/vim-textobj-user'
Bundle 'ingydotnet/yaml-vim'
" syntax plugin
" commenting
Bundle 'tomtom/tcomment_vim'
" automatic closing of quotes, parenthesis, brackets, etc.
Bundle 'Raimondi/delimitMate'
" syntax checking on save
Bundle 'scrooloose/syntastic'
" rainbow parentheses
Bundle 'rainbow_parentheses.vim'
" TextMate-style snippets
"Bundle 'msanders/snipmate.vim'
Bundle 'mattn/emmet-vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
" autocomplete
Bundle 'L9'
Bundle 'othree/vim-autocomplpop'
Bundle 'othree/html5.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
" for html
Bundle 'pbrisbin/html-template-syntax'
Bundle 'Valloric/MatchTagAlways'
Bundle 'ruby-matchit'


" manipulation of surraunding parens, quotes, etc.
Bundle 'tpope/vim-surround'
" related easymotion
Bundle 't9md/vim-smalls'
" switch
Bundle 'AndrewRadev/switch.vim'
" end certain structures automatically, e.g. begin/end etc.
Bundle 'tpope/vim-endwise'
" visual-block increment
Bundle 'triglav/vim-visual-increment'

" ruby
" rails support
Bundle 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
Bundle 'tpope/vim-bundler'
" rake integration
Bundle 'tpope/vim-rake'
" A custom text object for selecting ruby blocks (ar/ir)
Bundle 'nelstrom/vim-textobj-rubyblock'
" ruby refactoring
Bundle 'ecomba/vim-ruby-refactoring'
" apidock.com docs integration
Bundle 'apidock.vim'
" toggle ruby blocks style
Bundle 'vim-scripts/blockle.vim'


" slide show
Bundle 'othree/vroom-syntax.vim'