nmap <C-l> : Clap files -H --no-heading --vimgrep --smart-case --hidden -g "!.git/"<CR>
autocmd User ClapOnEnter call g:clap.display.setbufvar('&syntax', '')
let clap_current_selection_sign={'text': " ", 'textthl': 'WarningMsg', 'linehl': 'ClapInput'}
