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
