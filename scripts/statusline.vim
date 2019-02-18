set statusline=%<%*\ %t\ %*\ %2*%r%h%3*[%L,%p%%]%5*%{fugitive#statusline()}%=%5*%4*[%l\:%c]%8*%m%*\ ↯%n%*
au VimEnter * hi User2 ctermfg=darkyellow
au VimEnter * hi User3 ctermfg=darkgreen
au VimEnter * hi User4 ctermfg=green
au VimEnter * hi User5 ctermbg=16 ctermfg=233
au VimEnter * hi User8 ctermfg=white ctermbg=darkred gui=bold guifg=darkred
set laststatus=2
