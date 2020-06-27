function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
let vista_default_executive = 'ctags' "['ctags', 'ale', 'coc', 'lcn', 'vim_lsp']
let vista_fzf_preview = ['right:50%']
let vista#renderer#enable_icon = 1
let g:vista_echo_cursor_strategy = "floating_win"

let g:vista_executive_for = {
    \ 'python': 'coc',
    \ 'go': 'coc',
    \ 'c': 'coc', 'cc': 'coc', 'cpp': 'coc', 'h': 'coc', 'hh': 'coc', 'hpp': 'coc',
    \ }
let g:vista_close_on_jump=1
nnoremap <silent> <leader>v :Vista!!<CR>
