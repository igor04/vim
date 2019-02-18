## Pugins

`ludovicchabant/vim-gutentags` - autogenerate ctags

`flazz/vim-colorschemes` - bunch of colorschemes

`Yggdroot/indentLine` - indent tab like `|`

`dockyard/vim-easydir` - create directory and file from command `:e path/file`, `:sp`, `:vsp`

`wsdjeg/vim-fetch` - `:e file:line:column`

`Shougo/neocomplcache` - autocomplete

`terryma/vim-multiple-cursors` - multiple editing

`vim-scripts/delimitMate.vim` - auto close quotes etc.

`tpope/vim-endwise` - auto adding `end` to method

`wellle/targets.vim` - `cin(`, `dinb`

`tpope/vim-surround` - working with quotes `cs`, `ds`

`vim-scripts/tComment` - commented code `gcc`

`vim-scripts/matchit.zip` - match like `%`, `[{`, `[m`, `[(` etc.

`Valloric/MatchTagAlways` - match close/open tags HTML

`msanders/snipmate.vim` - snippets

`scrooloose/syntastic` - check program syntax `:SyntasticInfo`

`terryma/vim-smooth-scroll` - pretty scroll

> ```vim
    nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
    nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
    nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
    nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
  ```

`myusuf3/numbers.vim` - exclued numbers in special window

`mhinz/vim-startify` - start screen, `SLoad`, `SSave`, `SDelete` session

`lilydjwg/colorizer` - highlight rgb color codes `:ColorToggle`

`michaeljsmith/vim-indent-object` - `cai`, `cii`

`tpope/vim-abolish` - substitute tricks (:%S/{man, dog}/{dog, man}/g) - replace man to dog, dog to man
  > `crc` - fooBar, `crm` - FooBar, `crl` - pluralize
  > `cr_`, `crs` - foo_bar, `cru` - FOO_BAR, `cr-` - foo-bar

`mileszs/ack.vim` - search through files `:Ack!`, or serach files `:AckFile!`

  > need install (the_silver_searcher or ack)

`corntrace/bufexplorer` - show buff `:BuffExplorer`

`sjl/gundo.vim` - show undo history tree `<F5>`

`vim-scripts/YankRing.vim` - show YankRing stack `nmap <F10> :YRShow<CR>`

`vim-airline/vim-airline` - airline tabs and status line

  > `vim-airline/vim-airline-themes`

`tpope/vim-repeat` - support repeat function for surround, abolish etc.

`tpope/vim-dispatch` - `:Dispatch`

`guns/xterm-color-table.vim` - `:XtermColorTable`

`godlygeek/tabular` - `:Tabularize`

`osyo-manga/vim-over` - `:%s` with highlight

`KabbAmine/vCoolor.vim` - `:VCoolor`, `:VCoolIns` - slect color `r, ra, h`

`metakirby5/codi.vim` - interactive evaluation

#### CTRLP

`kien/ctrlp.vim` - search and open file by pattern: `,f` - file `,b` - buff)

`jasoncodes/ctrlp-modified.vim` - open modified files in ctrlp

`tacahiroy/ctrlp-funky` - like tagbar in ctrlp


#### NERDTREE

`scrooloose/nerdtree` - tree

`jistr/vim-nerdtree-tabs` - nerdtree in tabs

`tpope/vim-vinegar` - open nerdtree in current directoy `-`


#### GIT

`tpope/vim-fugitive` - git commands `:Gdiff`, `:Gblame`

`airblade/vim-gitgutter` - show status for each changed line `<F2>`

`vim-scripts/vcscommand.vim` - show diff `cd`

`gregsexton/gitv` - `:Gitv` - git log, `:Gitv!` - log for file

`mattn/gist-vim` - posting data to gist `:Gist -p<private> -s<description>`

  > `mattn/webapi-vim` - use gist

#### RUBY

`vim-ruby/vim-ruby` - ruby highlights, compilation etc.

`nelstrom/vim-textobj-rubyblock` - block `vir`, `vim`

  > `kana/vim-textobj-user`

`lucapette/vim-ruby-doc` - open browser tab with documentation `RR`, `RB`, `RS`

`rorymckinley/vim-rubyhash` - conver hash `<lead> rt` - to str, `rs` - to symbol, `rr` - to new style

`tpope/vim-rails`
  > `gf` - open file, class, relation under cursor in new buffer (`C+wgf` - in new tab)
  > `:R` - open related file (`:Rmodel`, `:Rview`, ..)
  > `:[range]Rextract {name}` - extract range
  > `:Rabbrev` - list abbreviation

`hwartig/vim-seeing-is-believing` - inline eval (F4, F5) - `gem install seeing_is_believing`

  nmap <buffer> <LocalLeader>m <Plug>(seeing-is-believing-run)
  xmap <buffer> <LocalLeader>m <Plug>(seeing-is-believing-run)
  imap <buffer> <LocalLeader>m <Plug>(seeing-is-believing-run)

  nmap <buffer> <LocalLeader>mm <Plug>(seeing-is-believing-mark)
  xmap <buffer> <LocalLeader>mm <Plug>(seeing-is-believing-mark)
  imap <buffer> <LocalLeader>mm <Plug>(seeing-is-believing-mark)

#### LANGS

`erekwyatt/vim-scala`

`ust-lang/rust.vim`

`lixir-lang/vim-elixir`

`kchmck/vim-coffee-script`

`slim-template/vim-slim`

`AndrewRadev/vim-eco`

`mxw/vim-jsx`

`leafgarland/typescript-vim`

`hallison/vim-markdown`

`suan/vim-instant-markdown` -  view on `localhost:8090`
  > let g:instant_markdown_slow = 1

  > requires nodejs xdg-utils

  > $ npm -g install instant-markdown-d

  > $ gem install redcarpet pygments.rb
