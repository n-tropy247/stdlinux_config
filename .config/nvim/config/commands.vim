" Provided by Riley Castelli and intended for use on stdlinux at OSU
" ==========================================================
" Other
" ==========================================================

" Saving of files as sudo
let g:suda_smart_edit = 1
command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78
