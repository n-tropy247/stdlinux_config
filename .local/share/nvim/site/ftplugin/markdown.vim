setlocal tabstop=2 shiftwidth=2 expandtab

" This allows bullets to be automatically inserted
nnoremap o $a<CR>

" Unfold everything by default
" I think `let g:vim_markdown_folding_level = 6` doesn't work, but this does
set foldlevel=6
