" {{{ Vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'dockyard/vim-easydir'
Plugin 'wsdjeg/vim-fetch'
Plugin 'Shougo/neocomplcache'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/tComment'
Plugin 'vim-scripts/matchit.zip'
Plugin 'mhinz/vim-startify'
Plugin 'lilydjwg/colorizer'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-repeat'
Plugin 'mileszs/ack.vim'
Plugin 'corntrace/bufexplorer'
Plugin 'sjl/gundo.vim'
Plugin 'guns/xterm-color-table.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'vim-scripts/YankRing.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-vinegar'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'gregsexton/gitv'
Plugin 'dense-analysis/ale'

Plugin 'vim-ruby/vim-ruby'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
Plugin 'lucapette/vim-ruby-doc'
Plugin 'tpope/vim-rails'

Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'hallison/vim-markdown'
Plugin 'leafgarland/typescript-vim'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()
" }}} Vundle


"**********************************************************"
"                    CONFIGURATION                         "
"**********************************************************"
syntax on
filetype plugin indent on

" trigger cursor to normal mode on startup
autocmd VimEnter * silent !echo -ne "\e]12;green\x7"
autocmd VimEnter * silent !echo -ne '\e[2 q'

autocmd BufRead,BufNewFile *.md   set filetype=markdown
autocmd BufRead,BufNewFile *.thor set filetype=ruby

" set column limiter for line length
hi ColorColumn ctermbg=236
autocmd FileType ruby       setlocal colorcolumn=81
autocmd FileType gitcommit  setlocal colorcolumn=72

" highlight text over limited length
" hi OverLength ctermbg=236
" autocmd BufEnter *.rb       match OverLength /\%82v.*/

set shell=/bin/sh
set clipboard=unnamedplus
set encoding=utf-8
set t_Co=256

" source ~/.vim/scripts/molokai.vim
source ~/.vim/scripts/custom-theme.vim

set nobackup
set nowritebackup
set noswapfile
set history=100

set undofile
set undodir=$HOME/.vim/undo/
set undolevels=1000
set undoreload=10000

set showcmd
set showmode
set fdm=marker
set number
set hidden

set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=T
set mousemodel=popup
set fillchars=vert:\ 

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

  " silent !echo -ne "\033]12;green\007"
  " autocmd VimLeave * silent !echo -ne "\033]112\007"
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
nnoremap <F12> :set list!<CR>

" ========================== MAP ===========================

let mapleader = "\\"
let maplocalleader = ","

source ~/.vim/scripts/bclose.vim
source ~/.vim/scripts/unmap_arrow_keys.vim

nmap tn :tabnew<CR>
nmap <silent><LocalLeader>sc :set spell!<CR>
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
nnoremap <silent><localleader>x :bd<CR>

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

" copy to clipboard relative or full file path
nnoremap <LocalLeader>sf :let @+=expand("%")<CR>
nnoremap <leader>sf :let @+=expand("%:p")<CR>

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

" {{{ Neocomplcache
let g:neocomplcache_enable_at_startup = 1
" }}} Neocomplcache

" {{{ VCSCommand
nmap cd :VCSDiff<CR>
" }}} VCSCommand

" {{{ GitGutter
nmap <F2> :GitGutterToggle<CR>
set updatetime=200

hi SignColumn ctermbg=none
hi GitGutterChangeDelete ctermfg=blue

let g:gitgutter_sign_removed ="▁"
let g:gitgutter_sign_modified_removed ="≃"
" }}} GitGutTer

" {{{ CtrlP
let g:ctrlp_funky_syntax_highlight = 1
nmap <silent> <LocalLeader>d :CtrlPFunky<CR>
nmap <silent> <LocalLeader>c :CtrlPModified<CR>
nmap <silent> <LocalLeader>f :CtrlP<CR>
nmap <silent> <LocalLeader>b :CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = { 'dir':  '\.git$\|tmp$\|node_modules$\|vendor$' }
" }}} CtrlP

" {{{ IndentLine
let g:indentLine_char = "┊"
let g:indentLine_color_term = 236
" }}} IndentLine

" {{{ Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

nmap <silent> <LocalLeader>a :Ack! --ignore-dir={node_modules,vendor} "\b<C-R><C-W>\b"<CR>:cw<CR>
" }}} Ag

" {{{ airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#close_symbol = '✗'
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_section_b = ''
let g:airline_section_y = ''
let g:airline_section_z = '%L% %4l% ◇ %#__accent_bold#%3v% ›'

nnoremap <LocalLeader>t :call airline#extensions#tabline#toggle()<CR>
" }}}

" {{{ bufexplorer
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerSortBy = 'number'
" }}} bufexporer

" {{{ ale
let g:ale_lint_on_enter = 0
let g:ale_linters_explicit = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '☻'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop'],
\   'typescript': ['prettier'],
\   'javascript': ['prettier'],
\}
let g:ale_linters = {
\   'ruby': ['rubocop'],
\   'typescript': ['tslint'],
\   'javascript': ['eslint'],
\}

hi ALEErrorSign   ctermfg=160   ctermbg=233  cterm=bold
hi ALEWarningSign ctermfg=208   ctermbg=233  cterm=bold
hi SpellCap                     ctermbg=8    cterm=none
hi SpellBad       ctermfg=0     ctermbg=95

nmap <silent>[w <Plug>(ale_previous_wrap)
nmap <silent>]w <Plug>(ale_next_wrap)
nmap <silent><Leader>w <Plug>(ale_fix)
" }}} ale

" {{{ YankRing
nmap <F10> :YRShow<CR>
let g:yankring_clipboard_monitor=0
" }}} YankRing

" {{{ startify
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
" }}} startify

" {{{ vim-gutentags
let g:gutentags_dont_load = 1
" let g:gutentags_enabled = 0
" }}} vim-gutentags

" ======================== OTHER =========================

" {{{ QuickFixOpenAll
function! QuickFixOpenAll()
    if empty(getqflist())
        return
    endif
    let s:prev_val = ""
    for d in getqflist()
        let s:curr_val = bufname(d.bufnr)
        if (s:curr_val != s:prev_val)
            exec "edit " . s:curr_val
        endif
        let s:prev_val = s:curr_val
    endfor
endfunction

command! QuickFixOpenAll call QuickFixOpenAll()
" }}} QuickFixOpenAll

" toggle search for selected part (not just for whole word)
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
