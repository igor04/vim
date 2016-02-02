" {{{ NeoBundle
if has("vim_starting")
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand("~/.vim/bundle/"))

NeoBundleFetch "Shougo/neobundle.vim"

NeoBundle "Yggdroot/indentLine"             " indent tab like `|`
NeoBundle "dockyard/vim-easydir"            " create directory and file from command line (:e path/file, :sp, :vsp - split)
NeoBundle "Shougo/neocomplcache"            " autocomplete
NeoBundle "terryma/vim-multiple-cursors"    " multiple editing
NeoBundle "vim-scripts/delimitMate.vim"     " auto close quotes etc.

NeoBundle "wellle/targets.vim"              " cin(, dinb
NeoBundle "tpope/vim-endwise"               " auto adding `end` to method
NeoBundle "tpope/vim-surround"              " working with quotes (cs, ds)
NeoBundle "vim-scripts/tComment"            " commented code (gcc)
NeoBundle "vim-scripts/matchit.zip"         " match like %, [{, [m, [( etc.
NeoBundle "Valloric/MatchTagAlways"         " match close/open tags HTML
NeoBundle "msanders/snipmate.vim"           " snippets
NeoBundle "scrooloose/syntastic"            " check program syntax (:SyntasticInfo)
NeoBundle "terryma/vim-smooth-scroll"       " pretty scroll
NeoBundle "myusuf3/numbers.vim"             " exclued numbers in special window
NeoBundle "mhinz/vim-startify"              " start screen, SLoad, SSave, SDelete session
NeoBundle "lilydjwg/colorizer"              " highlight rgb color codes :ColorToggle
NeoBundle "michaeljsmith/vim-indent-object" " cai, cii
NeoBundle "tpope/vim-abolish"               " substitute tricks (:%S/{man, dog}/{dog, man}/g) - replace man to dog, dog to man
                                            " crc      - fooBar   crm - FooBar   crl - pluralize
                                            " cr_, crs - foo_bar  cru - FOO_BAR  cr- - foo-bar

" RUBY
NeoBundle "thoughtbot/vim-rspec"
NeoBundle "keith/rspec.vim"

NeoBundle "vim-ruby/vim-ruby"               " ruby highlights, compilation etc.
NeoBundle "nelstrom/vim-textobj-rubyblock"  " select ruby block (`vir`, like `vim` - for method)
NeoBundle "hwartig/vim-seeing-is-believing" " inline eval (F4, F5) - gem install seeing_is_believing
NeoBundle "lucapette/vim-ruby-doc"          " RR, RB, RS - open browser tab with documentation

if !has('nvim')
  NeoBundle "rorymckinley/vim-rubyhash"     " conver hash: <lead> rt - to str, rs - to symbol, rr - to new style
endif

NeoBundle "tpope/vim-rails"                 " gf        - open file, class, relation under cursor in new buffer (C+wgf - in new tab)
                                            " :R        - open related file (:Rmodel, :Rview, ..)
                                            " :[range]Rextract {name} - extract range
                                            " :Rabbrev  - list abbreviation


" OTHER LANG
NeoBundle "derekwyatt/vim-scala"
NeoBundle "rust-lang/rust.vim"
NeoBundle "elixir-lang/vim-elixir"

" TOOLS
NeoBundle "epmatsw/ag.vim"                  " search through files (:Ag!) need install - the_silver_searcher
NeoBundle "kien/ctrlp.vim"                  " search and open file by pattern (,f - file ,b - buff)
NeoBundle "corntrace/bufexplorer"           " show buff (:BuffExplorer)
NeoBundle "sjl/gundo.vim"                   " show undo history tree (<F5>)
NeoBundle "vim-scripts/YankRing.vim"        " show YankRing stack (<F10>)
NeoBundle "vim-scripts/ragtag.vim"          " C+x: =, + (<%= %>), <space> (div -> <div></div>), / (</div>)
NeoBundle "igor04/vim-airline"              " airline tabs and status line # else use custome
NeoBundle "majutsushi/tagbar"

" NERD
NeoBundle "scrooloose/nerdtree"             " tree
NeoBundle "jistr/vim-nerdtree-tabs"         " nerdtree in tabs
NeoBundle "tpope/vim-vinegar"               " open nerdtree in current directoy (press -)

" GIT
NeoBundle "tpope/vim-fugitive"              " git commands (:Gdiff, :Gblame) good for merging conflicts
NeoBundle "airblade/vim-gitgutter"          " show status for each changed line (<F2>)
NeoBundleLazy "vim-scripts/vcscommand.vim", {"autoload":{"commands":"VCSDiff"}} " show diff (cd)
NeoBundleLazy "mattn/gist-vim",             {"autoload":{"commands":"Gist"}}    " posting data to gist (:Gist -p<private> -s<description>)
NeoBundleLazy "gregsexton/gitv",            {"autoload":{"commands":"Gitv"}}    " :Gitv - git log, :Gitv! - log for file


" SUPPORTING
NeoBundle "mattn/webapi-vim"                " use gist
NeoBundle "kana/vim-textobj-user"           " use textobject-rubyblock
NeoBundle "tpope/vim-repeat"                " support repeat function for surround, abolish etc.

" LAZY
NeoBundleLazy "tpope/vim-dispatch",         {"autoload":{"commands":"Dispatch"}}
NeoBundleLazy "guns/xterm-color-table.vim", {"autoload":{"commands":"XtermColorTable"}}
NeoBundleLazy "godlygeek/tabular",          {"autoload":{"commands":"Tabularize"}}
NeoBundleLazy "osyo-manga/vim-over",        {"autoload":{"commands":"OverCommandLine"}}       " :%s with highlight
NeoBundleLazy "KabbAmine/vCoolor.vim",      {"autoload":{"commands":["VCoolor","VCoolIns"]}}  " slect color `r, ra, h`

" UNITE
NeoBundleLazy "Shougo/unite.vim",           {"autoload":{"commands":"Unite"}}
NeoBundleLazy "Shougo/unite-outline",       {"autoload":{"commands":"Unite"}}

" SYNTACS HIGHLIGHTS
NeoBundleLazy "kchmck/vim-coffee-script",   {"autoload":{"filetypes":["coffee","eco"]}}
NeoBundleLazy "slim-template/vim-slim",     {"autoload":{"filetypes":["slim"]}}
NeoBundleLazy "AndrewRadev/vim-eco",        {"autoload":{"filetypes":["eco"]}}
NeoBundleLazy "hallison/vim-markdown",      {"autoload":{"filetypes":["markdown"]}}
NeoBundleLazy "suan/vim-instant-markdown",  {"autoload":{"filetypes":["markdown"]}}
                                            " markdown view on localhost:8090
                                            "   require -> nodejs xdg-utils
                                            "   $ npm -g install instant-markdown-d
                                            "   $ gem install redcarpet pygments.rb

call neobundle#end()
NeoBundleCheck
" }}} NeoBundle

"**********************************************************"
"                    CONFIGURATION                         "
"**********************************************************"


syntax on
filetype plugin indent on

" autocmd BufWritePost * call system("ctags -R")           " update ctags after each save
autocmd BufWritePost .vimrc so ~/.vim/vimrc                " automatically reload vimrc when it`s saved
autocmd FileType ruby setlocal colorcolumn=80              " set (redline) limit for charset in line
autocmd BufRead,BufNewFile *.md set filetype=markdown      " detect markdown as type of file
autocmd BufRead,BufNewFile *.thor set filetype=ruby

set shell=/bin/sh                                          " just as fix for some plugins (git gutter)
set clipboard=unnamedplus
set encoding=utf-8
set t_Co=256

" source ~/.vim/scripts/molokai.vim
source ~/.vim/scripts/custom-theme.vim

set nobackup
set nowritebackup
set noswapfile
set history=100

set undofile                                               " save undo's after file closes
set undodir=~/.vim/undo                                    " where to save undo histories
set undolevels=1000                                        " how many undos
set undoreload=10000                                       " number of lines to save for undo

set showcmd                                                " show pressed command in command line
set showmode                                               " show current mode in command line
set fdm=marker
set number
set hidden

set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=T
set mousemodel=popup
set fillchars=vert:\ 

augroup CursorLine                                         " cursorline and cursorcolumn only in current window
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
  " au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  " au WinLeave * setlocal nocursorcolumn
augroup END


if &term =~ "xterm\\|rxvt"

  " red for insert mode
  " green otherwise
  let &t_SI = "\<Esc>]12;red\x7"
  let &t_EI = "\<Esc>]12;green\x7"

  " 2 - block (1 - blinking)
  " 4 - underscore (3 - blinking)
  " 6 - vertical (5 - blinking)
  let &t_SI .= "\<Esc>[6 q"
  let &t_EI .= "\<Esc>[2 q"

  silent !echo -ne "\033]12;green\007"
  autocmd VimLeave * silent !echo -ne "\033]112\007"
endif



" ========================= Search =========================

set ignorecase
set incsearch
set hlsearch
set wrapscan

nnoremap <C-\> :nohl<CR>
nnoremap <C-c> :%s///gn<CR>

nnoremap <silent> n n:call HLNext()<CR>
nnoremap <silent> N N:call HLNext()<CR>
highlight HLNextColor ctermbg=88 ctermfg=white

function! HLNext()
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
  let target_pat = '\c\%#'.@/
  let red = matchadd('HLNextColor', target_pat, 101)
  redraw
endfunction

" ========================= TEXT ===========================

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nowrap
set list
set listchars=tab:▸\ ,eol:¬,trail:·
hi NonText ctermfg=235 ctermbg=None guifg=#444444 guibg=NONE
nnoremap <F12> :set list!<CR>


" ======================== TAB BAR =========================

hi TabLine ctermbg=245 ctermfg=232 cterm=none
hi TabLineSel ctermbg=24 ctermfg=white cterm=none
hi TabLineFill ctermbg=green ctermfg=0

" {{{ MyTabLine function
if exists("+showtabline")
  function! MyTabLine()
    let s = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let modified = ''

      for bufnr in buflist
        if getbufvar(bufnr, "&modified")
          let modified = 1
        endif
      endfor

      let s .= '%' . i . 'T'
      let s .= '%4*' . i . '·%*'

      if modified == 1
        let s .= '%8*' . tabpagewinnr(i,'$') . '%*'
      else
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
        let s .=  tabpagewinnr(i,'$')
        let s .= '%*'
      endif

      if i==t
        let s .= ( modified == 1 ? '%8*' : '%#TabLineSel#' )
      else
        let s .= '%#TabLine#'
      endif

      let bufnr = buflist[winnr - 1]
      let file = bufname(bufnr)
      let buftype = getbufvar(bufnr, 'buftype')
      if buftype == 'nofile'
        if file =~ '\/.'
          let file = substitute(file, '.*\/\ze.', '', '')
        endif
      else
        let file = fnamemodify(file, ':p:t')
      endif
      if file == ''
        let file = '[No Name]'
      endif
      let s .= ' ' . file . ' '
      let i = i + 1
    endwhile
    let s .= '%T%#TabLineFill#%=-'
    let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
    return s
  endfunction
  set tabline=%!MyTabLine()
endif
" }}}

" ====================== STATUS LINE =======================

set statusline=%<%*\ %t\ %*\ %2*%r%h%3*[%L,%p%%]%5*%{fugitive#statusline()}%=%5*%4*[%l\:%c]%8*%m%*\ ↯%n%*
au VimEnter * hi User2 ctermfg=darkyellow
au VimEnter * hi User3 ctermfg=darkgreen
au VimEnter * hi User4 ctermfg=green
au VimEnter * hi User5 ctermbg=16 ctermfg=233
au VimEnter * hi User8 ctermfg=white ctermbg=darkred gui=bold guifg=darkred
set laststatus=2


" ========================== MAP ===========================

let mapleader = "\\"
let maplocalleader = ","

source ~/.vim/scripts/bclose.vim
source ~/.vim/scripts/unmap_arrow_keys.vim

nmap gn :tabnew<CR>
nmap <silent><LocalLeader>sc :set spell!<CR>
nnoremap <F9> :set cursorcolumn!<CR>
inoremap <C-k> <C-o>:digraphs<CR><C-K>
nnoremap ci: f:lcw
nmap _ :NERDTreeFind<CR>

" paste with replace without changing buffer
xnoremap <LocalLeader>p "_dP

" new line
nnoremap <silent>zj o<Esc>
nnoremap <silent>zk O<Esc>

" buffer keys
nnoremap <silent><localleader>q :Bclose <CR>
nnoremap <silent><localleader>p :bd #<CR>
nnoremap <silent><localleader>l :bn<CR>
nnoremap <silent><localleader>h :bp<CR>

" change focus
" map <C-k> <C-w><Up>
" map <C-j> <C-w><Down>
" map <C-l> <C-w><Right>
" map <C-h> <C-w><Left>

" resizing keys
nnoremap <silent><C-j> :res -1<CR>
nnoremap <silent><C-k> :res +1<CR>
nnoremap <silent><C-h> :vertical res +5<CR>
nnoremap <silent><C-l> :vertical res -5<CR>

" ======================== PLUGINS =========================

" {{{ NERDTree
let NERDTreeDirArrows=1                           " new style
let NERDTreeMouseMode=3                           " single click for open node
let NERDTreeChDirMode=2                           " enable change CWD (cwd is current dir)
let NERDTreeMinimalUI=1                           " remove unncessary part
nmap te :NERDTreeMirrorToggle<CR>
" }}} NERDTree

" {{{ Gundo
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1
nnoremap <F5> :GundoToggle<CR>
" }}} Gundo

" {{{ Session
let g:session_autoload = "no"
let g:session_autosave = "no"
" }}} Session

" {{{ YankRing
nmap <F10> :YRShow<CR>
" }}} YankRing

" {{{ Snipmate
ino <c-l> <c-x><c-r>=TriggerSnippet()<CR>
" }}} Snipmate

" {{{ Neocomplcache
let g:neocomplcache_enable_at_startup = 1
" }}} Neocomplcache

" {{{ VCSCommand
nmap cd :VCSDiff<CR>
" }}} VCSCommand

" {{{ GitGutter
nmap <F2> :GitGutterToggle<CR>
highlight SignColumn ctermbg=none
highlight GitGutterChangeDelete ctermfg=blue
let g:gitgutter_sign_removed ="▁"
let g:gitgutter_sign_modified_removed ="≃"
" }}} GitGutTer

" {{{ CtrlP
nmap <silent> <LocalLeader>f :CtrlP<CR>
" }}} CtrlP

" {{{ IndentLine
let g:indentLine_char = "┊"
let g:indentLine_color_term = 234
" }}} IndentLine

" {{{ Instant-markdown
let g:instant_markdown_slow = 1
" }}} Instant-markdown

" {{{ Ag
nmap <silent> <LocalLeader>a :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>
" }}} Ag

" {{{ seeing-is-believing
nmap <buffer> <LocalLeader>m <Plug>(seeing-is-believing-run)
xmap <buffer> <LocalLeader>m <Plug>(seeing-is-believing-run)
imap <buffer> <LocalLeader>m <Plug>(seeing-is-believing-run)

nmap <buffer> <LocalLeader>mm <Plug>(seeing-is-believing-mark)
xmap <buffer> <LocalLeader>mm <Plug>(seeing-is-believing-mark)
imap <buffer> <LocalLeader>mm <Plug>(seeing-is-believing-mark)
" }}} seeing-is-believing

" {{{ smooth-scroll
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
" }}} smooth-scroll

" {{{ unite
let g:unite_winheight = 15
let g:unite_split_rule = "botright"
hi PmenuSel ctermbg=235 ctermfg=white

nmap <silent> <LocalLeader><LocalLeader>f :Unite file<CR>
nmap <silent> <LocalLeader>o :Unite outline<CR>
" }}} unite

" {{{ airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#close_symbol = '✗'
let g:airline#extensions#tabline#fnamemod = ':t'

nnoremap <LocalLeader>b :call airline#extensions#tabline#toggle()<CR>
" }}}

" {{{ bufexplorer
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerSortBy = 'number'
" }}} bufexporer

" {{{ throughbot vim-rspec
map <silent><localleader>t :call RunCurrentSpecFile()<CR>
" }}} vim-rspec

" ======================= ADDITIONAL =======================

if has("gui_running")
else
  hi clear SpellBad
  hi SpellBad cterm=underline ctermfg=red
endif

let g:startify_custom_header = [
      \ '       ___________________________           ',
      \ '      /                           \          ',
      \ '      |     VIM - Vi IMproved     |          ',
      \ '      \_________   _______________/          ',
      \ '                \ / ^__^                     ',
      \ '                 \\ (oo)\_______             ',
      \ '                    (__)\       )\/\         ',
      \ '                        ||----w |            ',
      \ '                        ||     ||            ',
      \ '                                             ',
      \ ]
