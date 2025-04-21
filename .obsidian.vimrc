" Remap navigation keys one key to the right

" Map j to be left (what h normally does)
noremap j h

" Map k to be down (what j normally does)
noremap k j

" Map l to be up (what k normally does)
noremap l k

" Map ; to be right (what l normally does)
noremap ; l

" Also map the capital versions
noremap J H
noremap K J
noremap L K
noremap : L

" Unmap the original keys to disable them
noremap h <nop>
noremap H <nop>

" Map related commands to maintain consistent behavior
map gj gh
map gk gj
map gl gk
map g; gl
