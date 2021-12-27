" Provided by Riley Castelli and intended for use on stdlinux at OSU
" ==========================================================
" Other
" ==========================================================

" Saving of files as sudo
cmap w!! w !sudo tee > /dev/null %
