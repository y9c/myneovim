
" seems like coc will crash on large files?
let g:trigger_size = 0.5 * 1048576

augroup hugefile
  autocmd!
  autocmd BufReadPre *
        \ let size = getfsize(expand('<afile>')) |
        \ if (size > g:trigger_size) || (size == -2) |
        \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
        \   exec 'CocDisable' |
        \ else |
        \   exec 'CocEnable' |
        \ endif |
        \ unlet size
augroup END

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
" Coc Plugin
let g:coc_global_extensions = [
   \ 'coc-lists', 'coc-marketplace', 'coc-git',
   \ 'coc-diagnostic', 'coc-snippets', 'coc-pairs', 'coc-yank', 'coc-tabnine', 'coc-emoji',
   \ 'coc-prettier', 'coc-stylelint', 'coc-highlight',
   \ 'coc-translator', 'coc-spell-checker',
   \ 'coc-texlab', 'coc-yaml', 'coc-json', 'coc-vimlsp', 'coc-gitignore',
   \ 'coc-html','coc-css', 'coc-eslint', 'coc-tsserver', 'coc-emmet',
   \ 'coc-go', 'coc-java', 'coc-rls', 'coc-pyright', 'coc-r-lsp', 'coc-julia'
   \ ]
" Coc customized: c, julia, bash in coc-setting.json


augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
