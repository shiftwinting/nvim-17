let mapleader = "\<space>"

" Esc in Terminal emulator
" See https://github.com/junegunn/fzf.vim/issues/544 for FZF
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

set mouse=a
set hidden
set number
set showcmd
set wildmenu
set showmatch " show matching brackets
set incsearch
set hlsearch
set ignorecase
set smartcase
set laststatus=2
nnoremap <silent> <ESC><ESC> :nohlsearch \| call coc#float#close_all()<CR>

" Movement
nnoremap <C-k> 15k
nnoremap <C-j> 15j
vnoremap <C-k> 15k
vnoremap <C-j> 15j

" more logical Y command
" because C => c$ and D => d$
nnoremap Y y$

let g:highlightedyank_highlight_duration = 350

nnoremap <silent><F5> :mod<CR>
vnoremap > >gv
vnoremap < <gv

" Using Tabs
nnoremap <silent><leader>gt :tab split<CR>
nnoremap <silent><leader>gT :tab new<CR>
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <silent><leader>h :tabm -1<CR>
nnoremap <silent><leader>l :tabm +1<CR>

" Windows
set splitbelow
set splitright
nnoremap <left> <C-W>4<
nnoremap <right> <C-W>4>
nnoremap <up> <C-W>4+
nnoremap <down> <C-W>4-

" Clipboard Copy Pasting
nnoremap <C-v> "+p
vnoremap <C-x> "+d
vnoremap <C-c> "+y
vnoremap <C-v> "+p
" Yank Pasting only
nnoremap <silent><leader>p "0p
nnoremap <silent><leader>P "0P
vnoremap <silent><leader>p "0p
vnoremap <silent><leader>P "0P

" Indentation without hard tabs
" https://vim.fandom.com/wiki/Indenting_source_code
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Folding
set foldenable
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=10
" zZ open/closes folds
nnoremap <leader>z za
nnoremap <leader>Z zA

" using // instead of /* */ for vim-commentary
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

let g:indentLine_char = '│'
" indentLine defaults conceal level to 2 (it won't work with conceal level 0)
" setting conceal level for specific file types manually
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" whitespace characters
" other listchars:
"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
"set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"set listchars=tab:\|\ ,nbsp:·,trail:·,extends:⟩,precedes:⟨
set list
set showbreak=↪\
set listchars=tab:→\ ,nbsp:·,trail:·,extends:⟩,precedes:⟨

" small plugins configs
nnoremap <silent> <leader>Q :Bdelete! menu<CR>
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
