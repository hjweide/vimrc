" lots of useful tricks here:
" https://github.com/tejr/dotfiles/blob/master/vim/vimrc

" so that we can put pathogen.vim in a submodule
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

filetype plugin indent on

" highlight cuda files as cpp
au BufNewFile,BufRead *.cu set ft=cpp
au BufNewFile,BufRead *.html set ft=javascript

set autochdir
set tabstop=2 " number of visual spaces per tab
set shiftwidth=2
set softtabstop=2 " number of spaces in tab when editing
set number " enable line numbers
set expandtab " tabs are spaces
set showmatch " highlight matching brackets
set hlsearch " highlight matches

" turns off match highlights with <leader><space>
nnoremap <leader><space> :nohlsearch<CR>

" for inserting comments
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader, '\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader, '\/')<CR>//e<CR>:nohlsearch<CR>

" use ctrl with the vim keys to switch between frames 
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" show cursor position
set ruler

" match all pairs of brackets
set matchpairs=(:),{:},[:],<:>

" toggle indenting for pasting large chunks of text
set nopaste
set pastetoggle=<F3>

" toggle Syntastic syntax checking
nnoremap <F2> :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" report the number of lines changed by a command
set report=0

" show auto-complete options when opening files
set wildmenu
set wildmode=longest:full,full
" ignore files we don't typically want to open in vim
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=*.git,*~,*.swp,*.tmp

"PLUGIN: Synstastic 
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1
let g:syntastic_warning_symbol = 'W>'
let g:syntastic_error_symbol = '!>'
let g:syntastic_style_error_symbol = 'S>'
let g:syntastic_style_warning_symbol = 's>'
let g:syntastic_always_populate_loc_list = 1
