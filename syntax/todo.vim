" Read the Markdown syntax to start with
if version < 600
  so <sfile>:p:h/markdown.vim
else
  runtime! syntax/markdown.vim
endif

"Syntax commands ordering is important due to order of the matching
"syntax match vimTodoListsDone '^\s*- \[[Xx]\].*'
"syntax match vimTodoListsNormal '^\s*- \[ \]\s*.*'
"highlight link vimTodoListsDone Comment
"highlight link vimTodoListsNormal Normal

" syntax region vimTodoLists start=/^\s*-/ end=/!.*$/ contains=vimTodoListsDoneImportantMark
" syntax match vimTodoListsDoneImportantMark '\[ \]' contained
syntax region vimTodoListsImportant start=/^\s*- \[.\]\s*/ end='!' contains=vimTodoListsImportantMark oneline
syntax match vimTodoListsImportantMark '\[ \]' contained oneline
highlight vimTodoListsImportantMark cterm=bold ctermbg=yellow ctermfg=magenta gui=bold guibg=yellow guifg=magenta


" function! MarkdownLevel()
"     if getline(v:lnum) =~ '^# .*$'
"         return ">1"
"     endif
"     return "=" 
" endfunction
" 
" setlocal foldexpr=MarkdownLevel()

" self define task list
" task list toggle
function! Toggle_Task_List()
    if getline('.') =~ '^- \[ \]\ '
        s/^- \[ \]/- [x]/
    elseif getline('.') =~ '^- \[x\]\ '
        s/^- \[x\]/- [ ]/
    else
        echo "Not a item of task list!"
    endif
endfunction

map <localleader>tt :call Toggle_Task_List()<cr>

" task list new
function! New_Task_List()
    if getline('.') =~ '^- \[ \]\ '
        call append(line('.'), "- [ ] ")
        call cursor(line('.')+1, 0)
        startinsert!
    elseif getline('.') =~ '^- \[x\]\ '
        call append(line('.'), "- [x] ")
        call cursor(line('.')+1, 0)
        startinsert!
    else
        echo "Not a item of task list!"
    endif
endfunction
map <localleader>tn :call New_Task_List()<cr>

set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^-\ [x\\]\ '
set fml=0
set foldlevel=0
" task list fold
function! Fold_Task_List()
    if &foldlevel
        echo "file is unfold"
        set foldmethod=expr
        set foldexpr=getline(v:lnum)=~'^-\ [x\\]\ '
        set fml=0
        set foldlevel=0
    else
        echo "file is fold"
        set foldmethod=manual
        set foldexpr=0
        set fml=1
        set foldlevel=1
    endif
endfunction
map <localleader>tf :call Fold_Task_List()<cr>

