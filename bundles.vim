set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" plugin management
Plugin 'VundleVim/Vundle.vim'


" color themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'evgenyzinoviev/vim-vendetta'

" local vimrc
Plugin 'embear/vim-localvimrc'


" file tree
Plugin 'scrooloose/nerdtree'
" file tree and tabs interaction
Plugin 'jistr/vim-nerdtree-tabs'
" fuzzy file open
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'Shougo/unite.vim'
" yank history
Plugin 'YankRing.vim'
" visual undo tree
Plugin 'sjl/gundo.vim'
" snippets dependancy
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"""""""""'
" multiple cursor operation
"Plugin 'terryma/vim-multiple-cursors'


" vertical alignment tool
Plugin 'junegunn/vim-easy-align'
Plugin 'utl.vim'
" text object based on indent level (ai, ii)
Plugin 'austintaylor/vim-indentobject'
" status block
Plugin 'itchyny/lightline.vim'


" git support
Plugin 'tpope/vim-fugitive'
" hide .gitignore-d files from vim
Plugin 'vitaly/vim-gitignore'
" Github's gist support
Plugin 'mattn/gist-vim'
" plugin for resolving three-way merge conflicts
Plugin 'sjl/threesome.vim'
" git diff
Plugin 'airblade/vim-gitgutter'


" syntax support
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Puppet-Syntax-Highlighting'
Plugin 'isRuslan/vim-es6'
Plugin 'JSON.vim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'nono/vim-handlebars'
Plugin 'juvenn/mustache.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vitaly/vim-syntastic-coffee'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'mtscout6/vim-cjsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'othree/es.next.syntax.vim'
" Plugin 'mxw/vim-jsx'
"Plugin 'vim-scripts/jade.vim'
Plugin 'wavded/vim-stylus'
Plugin 'VimClojure'
" Support for user-defined text objects
Plugin 'kana/vim-textobj-user'
Plugin 'ingydotnet/yaml-vim'
" syntax plugin
" commenting
Plugin 'tomtom/tcomment_vim'
" automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate'
" syntax checking on save
Plugin 'scrooloose/syntastic'
" Plugin 'eslint/eslint'
" rainbow parentheses
Plugin 'rainbow_parentheses.vim'
" TextMate-style snippets
Plugin 'mattn/emmet-vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'isRuslan/vim-es6-snippets'
" autocomplete
Plugin 'L9'
Plugin 'othree/vim-autocomplpop'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'myhere/vim-nodejs-complete'
" for json
Plugin 'Quramy/vison'
" for html
Plugin 'pbrisbin/html-template-syntax'
Plugin 'Valloric/MatchTagAlways'
Plugin 'ruby-matchit'

" about search
Plugin 'rking/ag.vim'
" related easymotion
Plugin 't9md/vim-smalls'
" Plugin 'wincent/ferret'
" tagbar
" brew install ctags-exuberant
Plugin 'majutsushi/tagbar'


" manipulation of surraunding parens, quotes, etc.
Plugin 'tpope/vim-surround'
" switch
Plugin 'AndrewRadev/switch.vim'
" end certain structures automatically, e.g. begin/end etc.
Plugin 'tpope/vim-endwise'
" visual-block increment
Plugin 'triglav/vim-visual-increment'

" ruby
" rails support
Plugin 'tpope/vim-rails'
" bundler integration (e.g. :Bopen)
Plugin 'tpope/vim-bundler'
" rake integration
Plugin 'tpope/vim-rake'
" A custom text object for selecting ruby blocks (ar/ir)
Plugin 'nelstrom/vim-textobj-rubyblock'
" ruby refactoring
Plugin 'ecomba/vim-ruby-refactoring'
" apidock.com docs integration
Plugin 'apidock.vim'
" toggle ruby blocks style
Plugin 'vim-scripts/blockle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required