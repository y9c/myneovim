vnoremap < <gv
vnoremap > >gv

" insert keymap like emacs
inoremap <C-w> <C-[>diwa
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-k>  <ESC>d$a
inoremap <C-u> <C-G>u<C-U>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <Home>
inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"

" command line alias
cnoremap w!! w !sudo tee % >/dev/null
cnoremap <C-p> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

" redo
noremap U <C-R>

"insert a newline
inoremap <C-O> <Esc>o

nnoremap  ]b :bp<CR>
nnoremap  [b :bn<CR>

"smart move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" tab {{{
"tabline operation
noremap <leader>tn :tabnew<cr>
noremap <leader>te :tabedit
noremap <leader>tm :tabmove
" }}}


"buffer
nnoremap <Leader>bo :BufOnly 
"yank to end
nnoremap Y y$


" Remove spaces at the end of lines
nnoremap <silent> ,<Space> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

" a command which  edit PLugin config easy
nnoremap <leader>p :EditPluginSetting <Space>

" {{{
" append language template to the current line
nmap <leader>ath :TemplateHere<CR>
" nmap <leader>att <Plug>(coc-template)
"
" insert language template (top)
nmap <leader>att :Template<CR>
" nmap <leader>att <Plug>(coc-template-top)
" nmap <leader>atb <Plug>(coc-template-bottom)
" }}}

" coc diagnostic {{{
nmap <silent> <leader>l] <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>l[ <Plug>(coc-diagnostic-next)
" }}}

" coc git {{{
" navigate chunks of current buffer
nmap <leader>g[ <Plug>(coc-git-prevchunk)
nmap <leader>g] <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap <leader>gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <leader>gc <Plug>(coc-git-commit)
" create text object for git chunks
omap <leader>gi <Plug>(coc-git-chunk-inner)
xmap <leader>gi <Plug>(coc-git-chunk-inner)
omap <leader>ga <Plug>(coc-git-chunk-outer)
xmap <leader>ga <Plug>(coc-git-chunk-outer)

" " Copy url of current line to clipboard, github url supported.
" noremap <silent> <leader>g? :execute 'CocCommand git.copyUrl'
" " Show chunk info under cursor.
" noremap <silent> <leader>g? :execute 'CocCommand git.chunkInfo'
" " Undo current chunk.
noremap <silent> <leader>gu :execute 'CocCommand git.chunkUndo'<CR>
" " Stage current chunk.
" noremap <silent> <leader>g? :execute 'CocCommand git.chunkStage'
" " Show cached diff in preview window.
" noremap <silent> <leader>g? :execute 'CocCommand git.diffCached'
" " Show commit of current chunk.
" noremap <silent> <leader>g? :execute 'CocCommand git.showCommit'
" " Open current line in browser, github url supported.
" noremap <silent> <leader>g? :execute 'CocCommand git.browserOpen'
" " Fold unchanged lines of current buffer.
" noremap <silent> <leader>g? :execute 'CocCommand git.foldUnchanged'
" " Toggle git gutters in sign column.
" noremap <silent> <leader>g? :execute 'CocCommand git.toggleGutters'
" }}}

" coc-translator {{{
" popup
nmap T <Plug>(coc-translator-p)
vmap T <Plug>(coc-translator-pv)
" echo
" nmap <Leader>e <Plug>(coc-translator-e)
" nmap <Leader>e <Plug>(coc-translator-ev)
" replace
" nmap <Leader>r <Plug>(coc-translator-r)
" nmap <Leader>r <Plug>(coc-translator-rv)
" }}}

" coc-texlab {{{
nnoremap <silent> <space>bl :execute 'CocCommand latex.Build'<CR>
" }}}

" ==========================================

" Buffer settings {{{
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
"create empty buffer
noremap <leader>bn :new<cr>
noremap <leader>bv :botright vnew<cr>
noremap <leader>bh :new<cr>
" close buffer
noremap <leader>bx :bd<cr>
" quick format buffer
nmap <silent><leader>bf <Plug>(coc-format)
" toggle buffer commnet
nmap <silent><leader>bc <Plug>(caw:hatpos:toggle)
xmap <silent><leader>bc <Plug>(caw:hatpos:toggle)
" Write buffer (save)
imap <C-S> <esc>:w<CR>
imap <C-Q> <esc>:wq<CR>
"delete buffer but keep the windows open
" nnoremap <C-x>  :bp<bar>sp<bar>bn<bar>bd<CR>
"delete buffer and close windows
nnoremap <C-x>  :bd<CR>
" }}}

command! -nargs=0 OI :call CocAction('runCommand', 'editor.action.organizeImport')

" ==========================================

" Windows settings {{{
" new windows
nmap <silent><leader>wn :new<CR>
" new windows horizontally
nmap <silent><leader>wh :new<CR>
" new windows vertically
nmap <silent><leader>wv :botright vnew<CR>
" close windows
nmap <silent><leader>wx :bd<CR>
"switch windw
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
" settings for resize splitted window
nmap <C-w>[ :vertical resize -3<CR>
nmap <C-w>] :vertical resize +3<CR>
" }}}

" ==========================================

" Improve scroll, credits: https://github.com/Shougo
nnoremap <expr> zz (winline() == (winheight(0)+1) / 2) ?
    \ 'zt' : (winline() == 1) ? 'zb' : 'zz'
noremap <expr> <C-f> max([winheight(0) - 2, 1])
    \ ."\<C-d>".(line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
    \ ."\<C-u>".(line('w0') <= 1 ? "H" : "M")
noremap <expr> <C-e> (line("w$") >= line('$') ? "j" : "3\<C-e>")
noremap <expr> <C-y> (line("w0") <= 1         ? "k" : "3\<C-y>")

" ==========================================

" Fn keys shortcut mapping {{{

" F1: disabled -- may conflict with system default
noremap <F1> <Esc>"

" F2: tag list -- DEFAULT SETTING
nnoremap <silent><F2> :Vista!!<CR>

" F3: dir tree -- DEFAULT SETTING
nnoremap <silent><F3> :Defx -toggle<CR>

" F4: line number
" nnoremap <F4> :call ToggleLineNumber()<CR>

" F5: run code (had beed mapped to xxx)

" F6: format code (had beed mapped to xxx)

" F10: show syntax and highlight name of current word
map <F10> :echo "
            \ hi<" . synIDattr(synID(line("."),col("."),1),"name") . ">
            \ trans<" . synIDattr(synID(line("."),col("."),0),"name") . ">
            \ lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">
            \ "<CR>

" Fx: version control -- yc setting (TODO)

" Fx: format code -- yc setting (TODO)
" noremap <Fx> :NeoFormat<CR>

" Fx: toggle spell check -- yc setting (TODO)
" nnoremap <Fx> :set spell! spell?<CR>

" Fx: toggle paste mode (in both normal and insert mode) -- yc setting (TODO)
" set pastetoggle=<Fx>
" disbale paste mode when leaving insert mode
" au InsertLeave * set nopaste

" Fx: syntax toggle
" nnoremap <Fx> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" Fx: wrap line
" nnoremap <Fx> :set wrap! wrap?<CR>

" Fx: list all char -- DEFAULT SETTING
" nnoremap <Fx> :set list! list?<CR>

" Fx: quick insert datetime -- both normal and insert mode
" nmap <Fx> i<C-R>=system('date --iso-8601=second')<CR><Esc>
" imap <Fx> <C-R>=system('date --iso-8601=second')<CR>
" }}}

