"""""""""""""""""""""""""""""
" theme
set background=dark
set t_Co=256
colorscheme jellybeans

"""""""""""""""""""""""""""""
" nerdtree
" Ctrl-I to Display the file browser tree
nmap <C-I> :NERDTreeTabsToggle<CR>
" ,i to show current file in the tree
nmap <leader>i :NERDTreeFind<CR>

" tcomment_vim
" ,/ to invert comment on the current line/selection
nmap <leader>/ gcc
vmap <leader>/ gc


"""""""""""""""""""""""""""""
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

nmap <leader>. :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>l :CtrlPLine<cr>
nmap <leader>b :CtrlPBuff<cr>
nmap <leader>m :CtrlPBufTag<cr>
nmap <leader>M :CtrlPBufTagAll<cr>

let g:ctrlp_clear_cache_on_exit = 1
" ctrlp leaves stale caches behind if there is another vim process runnin
" which didn't use ctrlp. so we clear all caches on each new vim invocation
cal ctrlp#clra()

let g:ctrlp_max_height = 40

" show on top
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0

" jump to buffer in the same tab if already open
let g:ctrlp_switch_buffer = 1

" open multiple files with <c-z> to mark and <c-o> to open. v - opening in
" vertical splits; j - jump to first open buffer; r - open first in current buffer
let g:ctrlp_open_multiple_files = 'vjr'

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']

"""""""""""""""""""""""""""""
" set yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
" ,y to show the yankring
nmap <leader>y :YRShow<cr>
" put the yankring_history file in ~/.backup
let g:yankring_history_dir = '~/.backup'

"""""""""""""""""""""""""""""
" Gundo
nmap <leader>u :GundoToggle<CR>
let g:gundo_close_on_revert = 1

"""""""""""""""""""""""""""""
" vim-anzu
" mapping
"nmap n <Plug>(anzu-n-with-echo)
"nmap N <Plug>(anzu-N-with-echo)
"nmap * <Plug>(anzu-star-with-echo)
"nmap # <Plug>(anzu-sharp-with-echo)

" clear status
"nmap <Esc><Esc> <Plug>(anzu-clear-search-status)


" statusline
"set statusline=%{anzu#search_status()}

"""""""""""""""""""""""""""""
"indentLine
"nmap <leader>il :IndentLinesToggle<CR>
"let g:indentLine_faster = 1
"hi Conceal guifg=white guibg=NONE
"hi Conceal ctermfg=white ctermbg=NONE
"let g:indentLine_color_term = 239
"let g:indentLine_color_gui = '#A4E57E'
"let g:indentLine_char = '┊'


"""""""""""""""""""""""""""""
" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)


"""""""""""""""""""""""""""""
" Utl.vim
if has("mac")
  let g:utl_cfg_hdl_scm_http_system = "!open '%u'"
end
nmap <leader>o :Utl

"""""""""""""""""""""""""""""
" vim-gitgutter
let g:gitgutter_enabled = 0
nmap gt :GitGutterToggle<CR>

"""""""""""""""""""""""""""""
" set powerline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': 'MyFugitive'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction


"""""""""""""""""""""""""""""
"pangloss/vim-javascript
let javascript_enable_domhtmlcss = 1

"""""""""""""""""""""""""""""
" vim-jsx
let g:jsx_pragma_required = 1

"""""""""""""""""""""""""""""
" delimitMate
let g:delimitMate_expand_space = 1 " Turns on/off the expansion of <Space>
let g:delimitMate_expand_cr = 1    " Turns on/off the expansion of <CR>

"""""""""""""""""""""""""""""
" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

"""""""""""""""""""""""""""""
" rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
map <leader>rb :RainbowParenthesesToggle<CR>
" always on
"au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""""""""""""""""""""""""""
" emmet-vim
let g:user_emmet_expandabbr_key = '<c-e>'

"""""""""""""""""""""""""""""
" Autocomplpop: {{{
"" acp options
let g:acp_enableAtStartup = 1
" let g:acp_mappingDriven = 1
let g:acp_completeOption = '.,w,b,u,t,i,k'
" let g:acp_behaviorSnipmateLength = 0
 
let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'
" }}}

"""""""""""""""""""""""""""""
" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'html.erb' : 1,
    \ 'html.eruby' : 1,
    \}

"""""""""""""""""""""""""""""
" set ag
nmap <leader>a :Ag<space>

"""""""""""""""""""""""""""""
" set vim-smalls
nmap s <Plug>(smalls)
vmap s <Plug>(smalls)

"""""""""""""""""""""""""""""
" set switch

nmap <s-S> :Switch<CR>
    " making some of the switches defined for ruby work in HAML files
autocmd FileType haml let b:switch_definitions =
      \ [
      \   g:switch_builtins.ruby_hash_style,
      \   g:switch_builtins.ruby_string,
      \   g:switch_builtins.true_false,
      \   g:switch_builtins.true_false,
      \ ]
let g:switch_custom_definitions =
      \ [
      \   [' + ', ' - '],
      \   ['on', 'off'],
      \   ['is', 'isnt'],
      \   ['id=', 'class=', 'style='],
      \   {
      \     '<div\(.\{-}\)>\(.\{-}\)</div>': '<span\1>\2</span>',
      \     '<span\(.\{-}\)>\(.\{-}\)</span>': '<div\1>\2</div>',
      \   },
      \   {
      \     '<ol\(.\{-}\)>\(.\{-}\)</ol>': '<ul\1>\2</ul>',
      \     '<ul\(.\{-}\)>\(.\{-}\)</ul>': '<ol\1>\2</ol>',
      \   },
      \   {
      \     '\<[a-z0-9]\+_\k\+\>': {
      \       '_\(.\)': '\U\1'
      \     },
      \     '\<[a-z0-9]\+[A-Z]\k\+\>': {
      \       '\([A-Z]\)': '-\l\1'
      \     },
      \     '\<[a-z0-9]\+-\k\+\>': {
      \       '-\(.\)': '_\l\1'
      \     },
      \   }
      \ ]

"""""""""""""""""""""""""""""
" vim-visual-increment
set nrformats=alpha,octal,hex

"""""""""""""""""""""""""""""
" blockle
let g:blockle_mapping = '<Leader>B'

"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""