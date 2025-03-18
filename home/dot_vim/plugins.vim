" plugins
call plug#begin('~/.vim/plugs')
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
call plug#end()

" ----- Theme -----

set background=dark
colorscheme codedark
"hi Normal guibg=NONE ctermbg=NONE


" ----- Airline -----

" let g:airline_powerline_fonts=1

let g:airline_section_z = airline#section#create(['Ln %l/%L Col %v'])


" ----- CoC -----

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Always show the signcolumn for CoC diagnostics
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not already mapped
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <plug>(coc-definition)
nmap <silent> gy <plug>(coc-type-definition)
nmap <silent> gi <plug>(coc-implementation)
nmap <silent> gr <plug>(coc-references)

" Symbol renaming
nmap <leader>rn <plug>(coc-rename)


" ----- FZF -----

" Open file search
nnoremap <silent> <leader>e :Files<CR>
nnoremap <silent> <leader>o :vs<CR><C-w><C-w>:Files<CR>
nnoremap <silent> <leader>t :tabnew<CR>:Files<CR>

" Open history
nnoremap <silent> <leader>h :History<CR>

" Open text search
nnoremap <silent> <leader>f :Rg<CR>

" Open jumps
nnoremap <silent> <leader>j :Jumps<CR>


" ----- Go -----

let g:go_list_type = "quickfix"

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" ----- NERDCommenter -----

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
let g:NERDCreateDefaultMappings = 0

" Commenter bindings
map <silent> <leader>cc <plug>NERDCommenterToggle
map <silent> <leader>ce <plug>NERDCommenterToEOL
map <silent> <leader>cs <plug>NERDCommenterSexy
map <silent> <leader>cu <plug>NERDCommenterUncomment
map <silent> <leader>cy <plug>NERDCommenterYank


" ----- NERDTree -----

" Show hidden files
let NERDTreeShowHidden=1

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | call feedkeys(":Files\<CR>") | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Toggle tree view
nnoremap <silent> <A-t> :NERDTreeToggle<CR>


"PlugInstall
"PlugUpdate
"PlugStatus
"PlugClean
"PlugUpgrade
