" Leaderf
let g:Lf_WindowPosition = "popup"
command! LFunction : LeaderfFunction
command! LCommandHistory : LeaderfHistoryCmd
command! LSearchHistory : LeaderfHistorySearch
command! LMru : LeaderfMru

let g:Lf_PreviewInPopup = 1
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_CursorBlink = 0
let g:Lf_RgConfig = ["--max-columns=150", "--no-ignore"]
" let g:Lf_ShortcutF = '<C-P>'
let g:Lf_UseVersionControlTool = 0
let g:Lf_ShowHidden=1
let g:Lf_DefaultExternalTool = ""
let g:Lf_WildIgnore = {
        \ 'dir': [".git", ".svn"],
        \ 'file': ["*.pyc", "*.so", "*.a", "*.o"]
        \}

command! Rg : Leaderf rg --hidden --smart-case --glob !.ccls-cache --glob !.git
nnoremap <silent><leader>rg :Leaderf rg --hidden --smart-case --glob !.ccls-cache --glob !.git<CR>
