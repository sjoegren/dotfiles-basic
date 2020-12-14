set nocompatible
"------------------------------------------------------------
" plug.vim plugin manager (Install with :PlugInstall)
"------------------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'junegunn/fzf', { 'do': 'fzf#install()' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
call plug#end()

set background=dark
silent! colorscheme gruvbox

set autoread
set wildmenu
set number
set shiftwidth=0    " use whatever tabstop is
set tabstop=4
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch       " Show matching brace
set showmode        " Show mode I'm in
set showcmd         " Show command I'm typing
set ttyfast         " assume a fast terminal connection
set visualbell      " Try to flash instead
set t_vb=           " Turn off flashing too :-)
set laststatus=2    " Always display status line
set ignorecase
set smartcase
set autoindent

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <C-n> :NERDTreeToggle<CR>

" fzf.vim
nmap <C-p> :Files<CR>
nmap <Leader>g :GFiles<CR>
nmap <Leader>G :GFiles?<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
