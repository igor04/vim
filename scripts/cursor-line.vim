augroup CursorLine " cursorline and cursorcolumn only in current window
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
  " au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  " au WinLeave * setlocal nocursorcolumn
augroup END
