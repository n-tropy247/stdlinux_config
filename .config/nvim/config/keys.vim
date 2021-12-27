" Provided by Riley Castelli and intended for use on stdlinux at OSU
" ==========================================================
" Init
" ==========================================================

" Leader
let mapleader=" "

" ==========================================================
" Lines
" ==========================================================

" Toggle breaking words on linebreaks
nnoremap <leader>wb :set linebreak!<CR>
nnoremap <leader>wr :set wrap!<CR>
nnoremap <leader>wl :LengthmattersToggle<CR>
nnoremap <leader>wt8 :set textwidth=80<CR>
nnoremap <leader>wt0 :set textwidth=0<CR>

" ==========================================================
" Movement
" ==========================================================

" Move vertically by screen line
nnoremap j gj
nnoremap k gk
" vnoremap j gj
" vnoremap k gk
xnoremap <expr> j mode() ==# 'V' ? 'j' : 'gj'
xnoremap <expr> k mode() ==# 'V' ? 'k' : 'gk'

" Move to beginning/end of line
nnoremap E $
nnoremap B ^
onoremap E $
onoremap B ^
vnoremap E $
vnoremap B ^

" WORD motions
nnoremap $ E
nnoremap ^ B
onoremap $ E
onoremap ^ B
xnoremap $ E
xnoremap ^ B

" Enable mouse
set mouse=a

" ==========================================================
" Editing
" ==========================================================

nnoremap <leader>d "_d
xnoremap <leader>d "_d

" ==========================================================
" Insert mode shortcuts
" ==========================================================

" jk is faster than <ESC>
inoremap jk <ESC>

inoremap <C-U> <C-G>u<C-U>

" ==========================================================
" Buffers
" ==========================================================

nnoremap <silent> <BS> <C-^>

" Delete a buffer without closing the window
nnoremap <silent> <leader>q :bprevious<bar>split<bar>bnext<bar>bdelete<CR>

nnoremap <silent> - :bnext<CR>
nnoremap <silent> _ :bprevious<CR>

" ==========================================================
" Indentation
" ==========================================================

nnoremap <leader>ie :set tabstop? shiftwidth? expandtab?<CR>
nnoremap <leader>it4 :set tabstop=4 shiftwidth=4 noexpandtab<CR>
nnoremap <leader>it2 :set tabstop=2 shiftwidth=2 noexpandtab<CR>:IndentLinesReset<CR>
nnoremap <leader>is4 :set tabstop=4 shiftwidth=4 expandtab<CR>:IndentLinesReset<CR>
nnoremap <leader>is2 :set tabstop=2 shiftwidth=2 expandtab<CR>:IndentLinesReset<CR>

nnoremap <leader>ir :IndentLinesReset<CR>
nnoremap <leader>id :IndentLinesDisable<CR>
nnoremap <leader>in :IndentLinesEnable<CR>

" ==========================================================
" HTML indentation
" ==========================================================

function! Expander()
    let line   = getline(".")
    let col    = col(".")
    let first  = line[col-2]
    let second = line[col-1]
    let third  = line[col]
    if first ==# ">"
        if second ==# "<" && third ==# "/"
            return "\<CR>\<C-o>==\<C-o>O"
        else
            return "\<CR>"
        endif
    else
        return "\<CR>"
    endif
endfunction

" Insert new indented line after tag
inoremap <expr> <CR> Expander()

" ==========================================================
" FZF
" ==========================================================

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <leader>/ :Rg<space>

nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>

nnoremap <silent> <leader>zm :Maps<CR>
nnoremap <silent> <leader>zf :Filetypes<CR>

" ==========================================================
" Gundo
" ==========================================================

nnoremap <leader>u :GundoToggle<CR>

" ==========================================================
" easy-align
" ==========================================================

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ==========================================================
" gitgutter
" ==========================================================

nnoremap <leader>ht :GitGutterToggle<CR>

" ==========================================================
" NERDTree
" ==========================================================

nnoremap <leader>no :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nn :NERDTree<CR>
nnoremap <leader>nc :NERDTreeCWD<CR>

" ==========================================================
" searchhi, asterisk
" ==========================================================

nmap n <Plug>(searchhi-n)
nmap N <Plug>(searchhi-N)
nmap gd <Plug>(searchhi-gd)
nmap gD <Plug>(searchhi-gD)

vmap n <Plug>(searchhi-v-n)
vmap N <Plug>(searchhi-v-N)
vmap gd <Plug>(searchhi-v-gd)
vmap gD <Plug>(searchhi-v-gD)

map * <Plug>(asterisk-z*)<Plug>(searchhi-update)<Plug>(searchhi-listen)
map # <Plug>(asterisk-z#)<Plug>(searchhi-update)<Plug>(searchhi-listen)
map g* <Plug>(asterisk-gz*)<Plug>(searchhi-update)<Plug>(searchhi-listen)
map g# <Plug>(asterisk-gz#)<Plug>(searchhi-update)<Plug>(searchhi-listen)

nmap <silent> <C-L> <Plug>(searchhi-clear-all)
vmap <silent> <C-L> <Plug>(searchhi-v-clear-all)

" ==========================================================
" incsearch-fuzzy
" ==========================================================

nmap z/ <Plug>(incsearch-fuzzy-/)
nmap z? <Plug>(incsearch-fuzzy-?)
nmap zg/ <Plug>(incsearch-fuzzy-stay)

" ==========================================================
" UltiSnips
" ==========================================================

let g:UltiSnipsExpandTrigger="<C-a>"
let g:UltiSnipsListSnippets="<C-A-a>"

" ==========================================================
" ALE
" ==========================================================

nnoremap <leader>co :ALEToggle<CR>
nnoremap <leader>cf :ALEFix<CR>
nnoremap <leader>cd :ALEDetail<CR>
nnoremap <leader>cj :ALENextWrap<CR>
nnoremap <leader>ck :ALEPreviousWrap<CR>
nnoremap <leader>cc :ALELint<CR>

" ==========================================================
" emmet
" ==========================================================

let g:user_emmet_leader_key = '<F2>'

" ==========================================================
" Maximizer
" ==========================================================

nnoremap <leader>mo :MaximizerToggle<CR>

" ==========================================================
" goyo
" ==========================================================

nnoremap <leader>0 :Goyo<CR>

" ==========================================================
" wordmotion
" ==========================================================

let g:wordmotion_prefix='z'

" ==========================================================
" Clipboard
" ==========================================================

" Copy '{{ full path }}/{{ file }}'to clipboard
nnoremap yf :let @+ = expand("%:p")<CR>
" Copy '{{ full path }}' to clipboard
nnoremap yd :let @+ = expand("%:p:h")<CR>

" ==========================================================
" Folding
" ==========================================================

nnoremap <leader>fe :set foldmethod?<CR>
nnoremap <leader>fm :set foldmethod=manual<CR>
nnoremap <leader>fi :set foldmethod=indent<CR>
nnoremap <leader>fk :set foldmethod=marker<CR>

" ==========================================================
" Other
" ==========================================================

" Highlight last inserted text
nnoremap gV `[v`]

" Spellchecking
nnoremap <silent> <leader>* :set spell!<CR>

" Search and replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" ==========================================================
" colorschemes
" ==========================================================

nnoremap <silent> <leader>_1 :let g:gruvbox_contrast_dark="hard"<CR>
    \:colorscheme gruvbox<CR>
    \:let g:airline_theme='gruvbox'<CR>
    \:AirlineRefresh<CR>
    \:autocmd! User FzfStatusLine call FzfStatuslineGruvbox()<CR>
nnoremap <silent> <leader>_2 :let g:gruvbox_contrast_dark="medium"<CR>
    \:colorscheme gruvbox<CR>
    \:let g:airline_theme='gruvbox'<CR>
    \:AirlineRefresh<CR>
    \:autocmd! User FzfStatusLine call FzfStatuslineGruvbox()<CR>
nnoremap <silent> <leader>_3 :let g:gruvbox_contrast_dark="soft"<CR>
    \:colorscheme gruvbox<CR>
    \:let g:airline_theme='gruvbox'<CR>
    \:AirlineRefresh<CR>
    \:autocmd! User FzfStatusLine call FzfStatuslineGruvbox()<CR>

nnoremap <silent> <leader>_p :colorscheme palenight<CR>
    \:let g:airline_theme='palenight'<CR>
    \:AirlineRefresh<CR>
    \:autocmd! User FzfStatusLine call FzfStatuslinePalenight()<CR>

