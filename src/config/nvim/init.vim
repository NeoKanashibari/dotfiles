syntax on
let mapleader = " "
set hidden
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set colorcolumn=80
set textwidth=80
set cursorline
set laststatus=2
set nu
set relativenumber
set noswapfile
set nohls
set undodir=~/.config/nvim/undodir
set undofile
set spell
"
if empty(glob(  '~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

if filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
  call plug#begin('~/.config/nvim/plugged')
      Plug 'preservim/nerdtree'
      Plug 'morhetz/gruvbox'         | Plug 'lifepillar/vim-solarized8'
      Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
      Plug 'tpope/vim-fugitive'      | Plug 'airblade/vim-gitgutter'
      Plug 'kovetskiy/sxhkd-vim'     | Plug 'kergoth/vim-bitbake'
      Plug 'junegunn/fzf.vim'
      Plug 'jremmen/vim-ripgrep'
      Plug 'mattn/emmet-vim'
      Plug 'SirVer/ultisnips'
      Plug 'honza/vim-snippets'
      Plug 'chrisbra/Colorizer', { 'on' : 'ColorHighlight' }
      Plug 'kien/ctrlp.vim'
      Plug 'mbbill/UndoTree'
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'toml-lang/toml'
      Plug 'jreybert/vimagit'
  call plug#end()
else
    filetype plugin indent on
endif

colorscheme gruvbox
set background=dark
set autoread " Automatically reload files changed outside of vim
set shortmess=atIWocOTF | set cmdheight=1 " Better 'Clean promts
set splitbelow

" Explore mode
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-q> :bdelete<CR>

" Return to last edit position when opening files.
au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$")
    \ | exe "normal! g'\""
    \ | endif

" Files we don't want listed
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.DS_Store                       " OSX metadata
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.pyc,*.pyo                      " Python byte code

" airline config ------------------------------------------------------------------------
set laststatus=2 noshowmode noshowcmd
let g:airline_theme='night_owl' "molokai base16_isotope night_owl
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = ""
let g:airline#extensions#tabline#left_sep = ""
let g:airline_inactive_collapse=1

" NErdTree
nnoremap <leader>t :NERDTreeToggle<CR>

" UndoTree ------------------------------------------------------------------------------
nnoremap <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLaout=3

" CtrlP ---------------------------------------------------------------------------------
let g:ctrlp_use_caching = 0
let g:ctrlp_by_filename = 0
let g:ctrlp_regexp = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files --recurse-submodules -c --exclude-standard']

" Coc completer -------------------------------------------------------------------------
let g:python3_host_prog="/usr/bin/python3"
let g:python_host_prog="/usr/bin/python2"
