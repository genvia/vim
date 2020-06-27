let floaterm_position='bottomright'

if has('mac')
    let g:floaterm_shell="zsh"
endif

function! s:FloatermNewOrFind()
    let next_bufnr = floaterm#buflist#find_next()
    if next_bufnr == -1
        if has('nvim')
            execute 'FloatermNew --wintype=floating --position=bottomright'
        else
            execute 'FloatermNew --wintype=normal --position=bottom --height=20'
        endif
    else
        call floaterm#next()
    endif
endfunction

nnoremap <silent> <leader>t :call <SID>FloatermNewOrFind()<CR>
tnoremap <silent> <leader>t <C-\><C-n> :call floaterm#hide(1, '')<CR>

if has('nvim')
    tnoremap <C-w><C-w> <C-\><C-n> <c-w><c-w>
endif

function s:floatermSettings()
    " setlocal number
endfunction

autocmd FileType floaterm call s:floatermSettings()
autocmd User Startified setlocal buflisted
