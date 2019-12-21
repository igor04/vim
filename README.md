![VIM](http://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/120px-Vimlogo.svg.png)

$ git clone --recursive git@github.com:igor04/vim.git ~/.vim

$ ln -s ~/.vim ~/.config/nvim

$ vim +BundleInstall +qall

$ vim -u <NONE | rcfile> - open vim with defined config

## NORMAL MODE

> `ga` - show hex and decimal char

> `>G` - added tab for all text from current line to end file (`>%`, `>3j`)

> `gP, gp` - paste and set cursor to the end, `]p` - paste with aligning

##### movement

> `zt, zz, zb` - set position text to top, center, bottom

> `C+e, C+y` - move one position up/down

> `C+d, C+u` - move half page position down/up

> `C+f, C+b` - move page down/up

> `H, L, M` - move cursor to top, down, middle of the screen

> `[{`, `}]` - inside `{ }` jumpst to `{` or `}`, the same is true for brackets

> `{`, `}` - move beetween paragraphs

> `C+o`, `C+i` - jumpt by lines on which you previously have been

##### go to

> `t/f<char>` - search char forward (`T/F` backword)

> `;` - repeat search char forward

> `,` - repeat search back

##### manipulation - a/i

> `c/d/v/y/..` + `a/i` + `w/t/[/b/B/..`

> 1. `c` - change, `d` - delete, `y` - copy, `v` - select

> 2. `a/i` - data with/without extreme chars

> 3. `w` - word, `p` - paragraph, `s` - sentence, `t` - tag, `[`, '<', `(` or `b`, `{` or `B`, `'` ...

> - vim-indent-object: `i` - indentation

> - vim-textobj-rubyblock: `r` - ruby block

##### .(dot) formula - movement + execution

> `$r;<Esc>` - replace last character to `;` - (`j.`)

> `A<Backspace>,<Esc>` - replace last char to `,`

> `f-s|<Esc>` - replace `-` to `|`  - (`;.`)

> `:'<,'> normal .` - repeat for multiple selected line

##### later case

> `g~` - toggle case

> `gu` - downcase

> `gU` - uppercase

> `guu` - downcase current line

##### counter

> `C+a, C+x` - increas or decreas number in line or number under cursor

## INSERT MODE

`C+[` - like Esc

`C+o` - Insert Normal mode (one normal mode shot)

`C+r<register>` - paste from register (`"` or `0` ..), also work in command line

`C+r=` - calculate some expression and return result

  > also work in console:

  > `C+h` - backspace

  > `C+w` - delete word

  > `C+u` - delete to start line

  > `C+k` - delete to end line

  > `C+i` - tab

  > `C+j` - ENTER

##### insert special chars (:h digraphs)

> `C+v<num>` - insert char by code (C+v061)

> `C+vu<hex>` - like 00bf

##### insert with digraphs

> `C+k?I` - like ¿

> `C+k12` - like ½

> `C+kl/` - like ł

## VISUAL MODE

`o` - jump between ending points selection

`u, U` - down/uper-case

`C+v<A,I>` - insert mode before selection after selection

`gv` - select previous selection

## COMMAND LINE

`C+d` - show complete list

`C+r + C+w` - set word(under cursor) to command line

`q:` - command line with history

`q\` - command line with search history (could be correct)

`C+f` - from command line to command history window

`:shell` - switch to shell ( `exit`- move back)

`:tab split | b1` - open new tab with buffer #1

## WINDOW

`C+wo` - keep only active window, closing all others

`C+w=` - equalize size window areas

`C+w_` - maximize height

`C+w|` - maximize width

## MARKS

`''` - last position

`'.` - last change

`'^` - last insertion

`'>` - end last visual selection

`'<` - start last visual selection

---

`C-o` - next position

`C-i` - prev postition

`g;` - prev changes in history

`g,` - next changes in history

`gi` - insert in last insert mode

---

`m<LATER>` - set global file mark (after can open this file in other session)

## REGISTERS

> `""` - unnamed register (default vim register)

> `"+` - system clipboard

> `"*` - primary clipboard (may absent)

> `"0` - yank register

> `"_` - like /dev/null register

>   > read only registers:

>   > `"%` - contain current name file

>   > `".` - last insert text

>   > `"/` - last serach patern

>   > `":` - last exec command

`"<register>dd` - will delete line and save to specified register

`"_dd` - will delete line forever;)

`"0p` - paste from yank register

`:reg "<register>` - show data in register

## MACROS

  > we set macros command in custom register
  > also we can edit macros command like copy and paste to register

`qa` - write macros to register `a`

`@a` - execute macros from register `a`

`@@` - execute last used macros

`10@a` - execute macros 10 times

`@A` - append command to the end of existing macro

`:argdo normal @a` - exec macro for all file in buff

## REGEXP

`\c` and `\C` - ignore case or with case sensitive

`\v` - search with magick regexp pattern (don't need escape all brackets)

`\V` - search without special char (like simple text search)

  > `()` - result matches inside `()` is writen to register and can be use like `\<Num>`

  > `%()` - if we don't need save matches result (lieke in perev. variant)

  > `<>` - search word (word-delimiter)

  > `\zs` and `\ze` - start and end point for highlighting, is part of match pattern

  >  * `\vSome \zsword\ze` - search patern is `Some word` but active and highlight will be only `word`

## SEARCH

`/word/e` - search and set cursor to end of matche text

`/` or `?` - change direction for prev. pattern

`//e` - change cursor postion for prev. search

`:let @/='word'` - set search word directly to register(not set to search history) ;)

## SUBSTITUTION

`:%s//something/` - in this case, search pattern `//` is last initialized search with `/` or `?`

`:%s///gn` - count finded matches

`:s` - only first match pattern

`:%s` - for each line

`/g` - flag for all in current line

`/c` - flag for ask question for each matches (y - substitute, n - skip, q - quit, l - just last, a - all)

`:%s//\=@0/g` - insert data from register

`:%s//~/&` - repeat last substitution (like `g&`)

`:argdo %s/.../ge` - for each file, `e` don't show message if patern not found

---

`submatch(0)` - after search submatch(0) return first submatche

  > `\<number>` in matches pattern or `submatch(<number>)` in script

replace man to dog and dog to man

  > `:let swap = {"dog":"man", "man":"dog"}` - define rule

  > `/\v(man|dog)` - search man and dog

  > `:%s//\=swap[submatch(0)]/g` - replace matches to swap value

`:%S/{man, dog}/{dog, man}/g` - the same with `abolish`

## GLOBAL COMMAND

> `%` - all file

> `'<,'>` - selecte part

> `.` - curent line (default)


`:[range]global[!]/{pattern}/[comand]` - short is `g`, `g!` or `v` as invert

`:print` - short `p` (default)

`:delete` - short `d`

`:yank` - copy (`yank a`- copy to register `a`, `yank A` - append to register `a`)

`:sort` - sort selected block or range

  > `g/##/+1,/##/-1 sort` - global with range  `/##/+1, /##/-1`

`:>` - add tab

## Additional

`ASCII Esc` - insert mode Ctrl+V and Esc

`:set tw=80` and then `gq` will break sentence on line with no more then 80 chars per line

`:ia {keyword} {some text}` - when we type keyword and go out from Insert mode
                              vim replace you keyword to text which you wont see

`:wn` - save and go to next buffer


`[i` - show definition place for variable under cursor

`[I` - show all places with variable under cursor

`gd` - top var definition

`cgn` - edit current search match with ability go to next,
        `.` will repeat changes for next search, so we could update with it all matches

`:bufdo %s/replace/replace/ge | update`

  > `:cdo` - go over quickfix list

  > `:argdo` - go over predefined file list (`:arg *` - setup file list)
