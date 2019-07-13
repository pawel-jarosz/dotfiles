set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'pthrasher/conqueterm-vim' " wsparcie dla dzielenia okna
Plugin 'scrooloose/nerdtree'      " wyświetlanie systemu plików na karcie
Plugin 'idanarye/vim-vebugger'    " wsparcie dla debuggera
Plugin 'kien/ctrlp.vim'		  " wyszukiwanie plików, tagów itd. itp.
Plugin 'valloric/youcompleteme'   " kolorowanie składni
Plugin 'majutsushi/tagbar'	  " pasek boczny z tagami wewnątrz pliku

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :ConqueTermSplit bash<CR>
noremap <F4> :TagbarToggle<CR>
nnoremap <s-down> <c-w>w
nnoremap <s-up> <c-w>W
nnoremap <s-left> <c-w>h
nnoremap <s-right> <c-w>l


let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completition=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1


