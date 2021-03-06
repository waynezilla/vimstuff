"""""""""""""""""""""""
"  2018-04-07 .vimrc  "
"""""""""""""""""""""""

" Settings needed for UltiSnips
set nocompatible
filetype off

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"<===============================================
" Configure plugins here
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
"let NERDTreeShowHidden=1
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 2
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
"<================================================
call vundle#end()
filetype plugin indent on
" Done with Vundle config

"Other Settings
syntax on
set nowrap


" Some of my own common shortcuts
map <C-n> :NERDTreeToggle <CR>

" Add datestamp
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>"=strftime("%c")<CR>

vnoremap <F3> :s/^/# WMEDIT /<CR>
vnoremap <F4> :s/^# WMEDIT //<CR>

vnoremap <S-F3> :s#^#// WMEDIT #<CR>
vnoremap <S-F4> :s#^// WMEDIT ##<CR>

