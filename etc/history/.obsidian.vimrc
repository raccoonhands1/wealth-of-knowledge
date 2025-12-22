" Remap hjkl to jkl;
noremap j h
noremap k j
noremap l k
noremap ; l

" Alt+j to beginning of line, Alt+; to end of line
noremap <A-j> ^
noremap <A-;> $

" Disable line wrapping
set nowrap

" Make k/l move by visual lines instead of logical lines (for wrapped text)
nmap k gj
nmap l gk
