nnoremap cib :call Left()<CR>f)cib
nnoremap ciB :call Left()<Cr>f}ciB
nnoremap ci[ :call Left()<Cr>f]ci[
nnoremap ci" :call Left()<Cr>f"ci"
nnoremap ci' :call Left()<Cr>f'ci'

nnoremap dib :call Left()<Cr>f)dib
nnoremap diB :call Left()<Cr>f}diB
nnoremap di[ :call Left()<Cr>f]di[
nnoremap di" :call Left()<Cr>f"di"
nnoremap di' :call Left()<Cr>f'di'

nnoremap cab :call Left()<Cr>f)cab
nnoremap caB :call Left()<Cr>f}caB
nnoremap ca[ :call Left()<Cr>f]ca[
nnoremap ca" :call Left()<Cr>f"ca"
nnoremap ca' :call Left()<Cr>f'ca'

nnoremap dab :call Left()<Cr>f)dab
nnoremap daB :call Left()<Cr>f}daB
nnoremap da[ :call Left()<Cr>f]da[
nnoremap da" :call Left()<Cr>f"da"
nnoremap da' :call Left()<Cr>f'da'

function! Left()
  if getpos('.')[2] != 1
    exec ":normal h"
  endif
endfunction
