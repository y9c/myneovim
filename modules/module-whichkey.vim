let g:which_key_map =  {}
let g:which_key_localmap =  {
  \ 'name' : 'LocalLeader'
  \ }
let g:which_key_map = {
      \ 'name' : 'Leader' ,
      \ '1' : 'select window-1'      ,
      \ '2' : 'select window-2'      ,
      \ '3' : 'select window-3'      ,
      "\ '4' : 'select window-4'      ,
      "\ '5' : 'select window-5'      ,
      "\ '6' : 'select window-6'      ,
      "\ '7' : 'select window-7'      ,
      "\ '8' : 'select window-8'      ,
      "\ '9' : 'select window-9'      ,
      "\ '0' : 'select window-10'      ,
      \ 'a' : {
            \ 'name' : '+Add template/snippets...',
            \ 't' : {
                \'name': '+Template',
                \ 'b' : 'add template in the Bottom',
                \ 'h' : 'add template Here',
                \ 't' : 'add template on the Top',
                \ }
            \ },
      \ 'b' : {
            \ 'name' : '+Buffer modification...',
            \ 'b' : 'buffer list',
            \ 'c' : 'toggle line comment',
            \ 'o' : 'keep input buffer',
            \ 'f' : 'buffer format (CocFormat)',
            \ 'n' : 'creat new buffer',
            \ 'h' : 'new horizontal buffer',
            \ 'v' : 'new vertical buffer',
            \ 'x' : 'close current buffer',
            \ },
      \ 'c' : {
              \ 'name' : '+Coc plugin functions...' ,
              \ 'a'    : 'coc CodeActionSelected',
              \ 'c'    : 'coc Commands',
              \ 'd'    : 'coc Diagnostics',
              \ 'e'    : 'coc Extensions',
              \ 'j'    : 'coc Next',
              \ 'k'    : 'coc Prev',
              \ 'o'    : 'coc OutLine',
              \ 'r'    : 'coc Resume',
              \ 'n'    : 'coc Rename',
              \ 's'    : 'coc Isymbols',
              \ 'g'    : 'coc Gitstatus',
              \ 'f'    : 'coc Format',
              \ 'l'    : 'coc Log',
              \ 'm'    : 'coc search word to multiple cursors',
              \ },
      \ 'e' : 'open file explorer' ,
      \ 'f' : {
            \ 'name' : '+find-everything',
            \ 'a' : 'find word',
            \ 'e' : 'find explorer',
            \ 'f' : 'find file',
            \ 'h' : 'find history',
            \ 'g' : 'find files with git',
            \ 'w' : 'find current word',
            \ 'W' : 'find windows',
            \ 'l' : 'find locationlist',
            \ 'u' : 'find uncommitted files',
            \ 'v' : 'find visual area',
            \ 'z' : 'find word on multiple files',
            \ },
      \ 'g' : {
            \ 'name' : '+version control',
            \ 'a' : 'git add',
            \ 'd' : 'git diff split',
            \ 'c' : 'git commit',
            \ 'b' : 'git blame',
            \ 'f' : 'git fetch',
            \ 'g' : 'Magit Status',
            \ 'i' : 'show chunk diff at point',
            \ 'm' : 'show commit contains at point',
            \ 'p' : 'Magit Push',
            \ 's' : 'git status',
            \ 'S' : 'show git status on fzf',
            \ 'l' : 'show git log',
            \ },
      \ 'i' : 'Show symbols list' ,
      \ 'j' : 'open coc-explorer',
      \ 'm' : 'open mundotree' ,
      \ 'o' : {
            \ 'name' : '+open',
            \ 'c' : 'open personal config',
            \ 't' : 'open a temrinal',
            \ 's' : 'open stratify',
            \ 'm' : 'open markdown preview',
            \ },
      \ 'p' : {
            \ 'name' : '+plugin manage',
            \ 'u' : 'update all plugins',
            \ 'r' : 'reache runtime path',
            \ 'l' : 'plugins update log',
            \ },
      \ 'q' : {
            \ 'name' : '+quiet',
            \ 'q' : 'save and quiet',
            \ 'w' : 'quiet without save',
            \ },
      \ 'r' : {
            \ 'name' : '+repl quickrun',
            \ 'R' : 'Quick Run',
            \ 'r' : 'Open Repl',
            \ 'q' : 'Exit Repl',
            \ 'l' : 'Send line',
            \ 'p' : 'Repl repeat',
            \ 'c' : 'Repl clear',
            \ '<CR>': 'Repl return',
            \ '<Esc>': 'Repl interrupt',
            \ },
      \ 's' : {
            \ 'name' : '+session',
            \ 's' : 'Save session',
            \ 'l' : 'Load session',
            \ },
      \ 't' : {
            \ 'name' : '+toggle',
            \ 'i' : 'Indentline toggle',
            \ 'c' : 'Change colorscheme',
            \ 'n' : 'Toggle line number',
            \ 's' : 'Toggle spell check',
            \ },
      \ 'w'    : {
              \ 'name' : '+window' ,
              \ 's'    : 'horizontally split',
              \ 'v'    : 'vertical split',
              \ 'h'    : 'jump left window',
              \ 'j'    : 'jump bottom window',
              \ 'k'    : 'jump top window',
              \ 'l'    : 'jump right window',
              \ 'H'    : 'move window to left',
              \ 'J'    : 'move window to bottom',
              \ 'K'    : 'move window to top',
              \ 'L'    : 'move window to right',
              \ 'x'    : 'swap window',
              \ 'c'    : 'close window',
              \ 'o'    : 'close other window',
              \ 'R'    : 'spin window',
              \ },
      \ 'x' : 'coc cursors operate',
      \ 'F' : 'open current file on filetree' ,
      \ 'G' : 'distraction free writing' ,
      \ ';' : 'coc extensions',
      \ '-' : 'choose window by prompt' ,
      \ '/' : 'remove end spaces' ,
      \ ',' : 'Run coclist command' ,
      \ '<Tab>' :'switch to last buffer',
      \ }

" let g:which_key_map[' '] = {
"      \ 'name' : '+easymotion jumpto word ' ,
"      \ 'b' : ['<plug>(easymotion-b)' , 'beginning of word backward'],
"      \ 'f' : ['<plug>(easymotion-f)' , 'find {char} to the left'],
"      \ 'w' : ['<plug>(easymotion-w)' , 'beginning of word forward'],
"      \ }

function! WhichKeyForGo() abort
  let g:which_key_localmap.g ={
        \ 'name' : '+golang-toolkit',
        \ 'i'    : 'go impl',
        \ 'd'    : 'go describe',
        \ 'c'    : 'go callees',
        \ 'C'    : 'go callers',
        \ 's'    : 'go callstack',
        \ }
endfunction

function! WhichKeyForGoDebug() abort
  let g:which_key_map.d ={
    \ 'name' : 'Debugger',
    \ 'a'    : 'Add or Remove BreakPoint',
    \ 'b'    : 'Add or Remove TracePoint',
    \ 'c'    : 'Clear All Point',
    \ 'd'    : 'Start Debug',
    \ 't'    : 'Start Debug Test',
    \ 'r'    : 'Remove BreakPoint',
    \ 'R'    : 'Remove TracePoint',
    \ }
endfunction

autocmd FileType go
                    \ call WhichKeyForGo() |
                    \ call WhichKeyForGoDebug()

" hide keys
let g:which_key_map.4 = 'which_key_ignore'
let g:which_key_map.5 = 'which_key_ignore'
let g:which_key_map.6 = 'which_key_ignore'
let g:which_key_map.7 = 'which_key_ignore'
let g:which_key_map.8 = 'which_key_ignore'
let g:which_key_map.9 = 'which_key_ignore'
let g:which_key_map.0 = 'which_key_ignore'
