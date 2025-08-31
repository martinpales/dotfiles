" plugins
call plug#begin('~/.vim/plugs')
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'cespare/vim-toml'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
" Plug 'ericpruitt/tmux.vim', {'rtp': 'vim/'}
call plug#end()

" ----- Theme -----

set background=dark
colorscheme codedark
"hi Normal guibg=NONE ctermbg=NONE

" ----- Airline -----

" let g:airline_theme='onedark'
" let g:airline_powerline_fonts=1

let g:airline_section_z = airline#section#create(['Ln %l/%L Col %v'])

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" ----- FZF -----

" open file search on startup"
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | call feedkeys(":Files\<CR>") | endif

" Open file search
nnoremap <silent> <leader>o :Files<CR>
" Open file search in a vertical split
nnoremap <silent> <leader>_ :vs<CR><C-w><C-w>:Files<CR>
" Open file search in a horizontal split
nnoremap <silent> <leader>- :sp<CR>:Files<CR>

" Open history
nnoremap <silent> <leader>h :History<CR>

" Open text search
nnoremap <silent> <leader>/ :Rg<CR>
nnoremap <silent> <leader>f :Rg<CR>

" Open buffers
nnoremap <silent> <leader>b :Buffers<CR>

" Open jumps
" nnoremap <silent> <leader>j :Jumps<CR>

" Resize splits
nnoremap <silent> <leader><Up> :resize -3<CR>
nnoremap <silent> <leader><Down> :resize +3<CR>
nnoremap <silent> <leader><Left> :vertical resize -5<CR>
nnoremap <silent> <leader><Right> :vertical resize +5<CR>

" ----- NERDCommenter -----

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
let g:NERDCreateDefaultMappings = 0

" Commenter bindings
map <silent> <C-/> <plug>NERDCommenterToggle
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

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Toggle tree view
nnoremap <silent> <leader>t :NERDTreeToggle<CR>

"PlugInstall
"PlugUpdate
"PlugStatus
"PlugClean
"PlugUpgrade
