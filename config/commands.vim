" nmap <C-e> : q<CR>
nmap <C-q> : q<CR>
inoremap <C-c> <esc>
vmap <C-c> "+y

command Light : set background=light | color flattened_light
command Dark :  set background=dark | color flattened_dark

command ClipAdd : set clipboard+=unnamed
command ClipRmv : set clipboard-=unnamed

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd put | diffthis

map Q gq
