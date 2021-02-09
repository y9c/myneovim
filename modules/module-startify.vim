
" For startify
let g:startify_padding_left = 30
let s:header = [
      \ 'YYYYYYY       YYYYYYY       CCCCCCCCCCCCC',
      \ 'Y:::::Y       Y:::::Y    CCC::::::::::::C',
      \ 'Y:::::Y       Y:::::Y  CC:::::::::::::::C',
      \ 'Y::::::Y     Y::::::Y C:::::CCCCCCCC::::C',
      \ 'YYY:::::Y   Y:::::YYYC:::::C       CCCCCC',
      \ '   Y:::::Y Y:::::Y  C:::::C              ',
      \ '    Y:::::Y:::::Y   C:::::C              ',
      \ '     Y:::::::::Y    C:::::C              ',
      \ '      Y:::::::Y     C:::::C              ',
      \ '       Y:::::Y      C:::::C              ',
      \ '       Y:::::Y      C:::::C              ',
      \ '       Y:::::Y       C:::::C       CCCCCC',
      \ '       Y:::::Y        C:::::CCCCCCCC::::C',
      \ '    YYYY:::::YYYY      CC:::::::::::::::C',
      \ '    Y:::::::::::Y        CCC::::::::::::C',
      \ '    YYYYYYYYYYYYY           CCCCCCCCCCCCC',
      \ ]

let s:footer = [
      \ '+-------------------------------------------+',
      \ '|    Talk is cheap, show me the code        |',
      \ '|                                           |',
      \ '|            GitHub:yech1990                |',
      \ '+-------------------------------------------+',
      \ ]

function! Thinkvim_startify_center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = Thinkvim_startify_center(s:header)
let g:startify_custom_footer = Thinkvim_startify_center(s:footer)

autocmd! FileType startify
autocmd  FileType startify set laststatus=0 showtabline=0
  \| autocmd BufLeave <buffer> set laststatus=2 showtabline=2

