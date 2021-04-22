" if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
"  echo "Downloading junegunn/vim-plug to manage plugins..."
"  silent !mkdir -p ~/.config/nvim/autoload/
"  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
"  autocmd VimEnter * PlugInstall
" endif
" 
" call plug#begin('~/.config/nvim/plugins')
" Plug 'matze/vim-move'
" Plug 'junegunn/seoul256.vim'
" Plug 'nvie/vim-togglemouse'
" Plug 'yuratomo/w3m.vim'
" Plug 'scrooloose/nerdtree'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'sjbach/lusty'
" Plug 'dahu/vim-fanfingtastic'
" Plug 'chrisbra/colorizer'
" Plug 'haya14busa/incsearch.vim'
" Plug 'zefei/vim-wintabs'
" Plug 'gcmt/taboo.vim'
" Plug 'moll/vim-bbye'
" Plug 'jeetsukumaran/vim-buffergator'
" "Plug 'joeytwiddle/vim-seek'
" call plug#end()

set laststatus=2
syntax enable
set incsearch
set timeoutlen=1000 ttimeoutlen=0
set display+=lastline
set hidden
set tabstop=2
set smartcase

" Colour settings
highlight Cursor guibg=#626262
hi LineNr ctermfg=grey guifg=#2b506e guibg= #FFF000
:hi TabLine ctermfg=232 ctermbg=253
set cursorline
set relativenumber 
set number
set noswapfile
set clipboard=unnamed
set runtimepath+=~/.config/nvim/bundle/bbye

"########
" binds #
"########

"movement
noremap i gk
noremap k gj
noremap I H
noremap K L
noremap m b
noremap M B
noremap u <C-u>
noremap d <C-d>
noremap j <Left>
noremap l <right>

"deletion
noremap q d
noremap Q D
noremap ql dl
noremap qj dj
noremap qw dw
noremap qW dW
noremap qe de
noremap qE dE
noremap qm db
noremap qM dB
noremap qq dd
noremap qf df
noremap qb dF
noremap qt dt
noremap qT dT

"modes
noremap D Q
noremap o i
noremap O I
noremap h o
noremap H O
vnoremap o I

"misc
noremap b F
noremap B m
noremap & <C-v>

nnoremap q F
nnoremap F q
nnoremap <esc>j J
nnoremap <leader>s s
noremap <space>u u
noremap <space>r r
noremap _ u
imap <F9> <C-PageDown>
imap <F8> <C-PageUp>
nmap <F9> <C-PageDown>
nmap <F8> <C-PageUp>

map <PageUp> <C-u>
map <PageDown> <C-d>
inoremap kj <Esc>

" Automatic commands
" autocmd InsertLeave * call MyInsertEnterSettings()
" autocmd InsertEnter * :call MyInsertLeaveSettings()
" autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
 " autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd & 

"set directory=/home/user/.config/vim,~/,/tmp
"set backupdir=/home/user/.config/vim,~/,/tmp
"set viminfo+=n/home/user/.config/vim/viminfo
"set runtimepath=/home/user/.config/vim,/home/user/.config/vim/after,$VIM,$VIMRUNTIME
"let $MYVIMRC="/home/user/.config/vim/vimrc"
