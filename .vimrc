"about this .vimrc file

"it uses the following plugins

"Pathogen
"http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen
"pathogen separates each plugin into its own directory namespace, so it's easy to manage them
"all of the other plugins used in this .vimrc are managed by pathogen



"Nerdcomment
"https://github.com/scrooloose/nerdcommenter
"http://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt
"some visual examples
"http://segfault.in/2010/01/vim-plugins-nerd-commenter/

",cl - comment line - align left
",ci - invert comment status
",<space> - remove comment

"nerdtree
"http://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt

",d - activate/deactivate
"I - toggle hidden

"In the nerdtree buffer

"hjkl navigates
"?  - help
"<enter> open file - replaces current
"        if it's a directory - open/close next level

"i - opens file - split window - cursor in new window
"t - opens file - new tab - activates new tab

"m - activates menu to allow for adding/deleting/copy/move file (how do you exit?)

"C - changes current root
"R - refreshes files in current root
"P - jump to root node

"<ctrl>ww - cycle cursor in split windows


"Visual Mode
"v - activate from cursor
"V - activate for full lines (deactivate?)


"Moving
"<ctrl>F  page forward

"Pasting text without screwing up formatting
"<F2>


"Rails.vim
"http://github.com/tpope/vim-rails

":Rmodel user
":Rcontroller application
":Rhelper navigation
":Rview sessions/new

"gf - open file of object under cursor
"<ctrl>w f - opens in new window
"<ctrl>w gf - opens in new tab

":Rextract name_of_partial

"general vim window - tab navigation
"<ctrl>^ - edit previous file

"vcs
"VCSBlame


if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set nocompatible        " Use Vim defaults (much better!)
set bs=indent,eol,start " allow backspacing over everything in insert mode
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
"set ruler               " show the cursor position all the time
set nonumber              " show line numbers
set smarttab            " smart tabulatin and backspace
"set title               " show title
"set incsearch           " find while typing
set t_Co=256            " terminal uses 256 colors

" some custom mappings

" exit insert mode
imap jj <Esc>

" stop vim from formatting when pasting
set pastetoggle=<F2>

" easy saving
"imap <F4> <Esc>:w<CR>

" Settings for Pathogen
filetype off            " Disabling before Pathogen. Loaded later.
call pathogen#runtime_append_all_bundles()


" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable formatting based on file types
  augroup myfiletypes
    autocmd!
    autocmd FileType ruby,eruby,yaml,cucumber,vim,lua,latex,tex set autoindent shiftwidth=2 softtabstop=2 expandtab
    autocmd BufRead *.mkd,*.markdown  set ai formatoptions=tcroqn2 comments=n:>
  augroup END 
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  "set hlsearch
endif

filetype plugin indent on  " also sets filetype plugin on 

" Set the leader key
let mapleader = ","

" Set the key to toggle NERDTree
nnoremap <leader>d :NERDTreeToggle<cr>

"let NERDChristmasTree = 1               " NERDTree with colors
"let NERDTreeHighlightCursorline = 1     " highlight cursorline
let NERDTreeMapActivateNode='<CR>'      " set Enter/Return to activate a node

" Set color scheme
"colorscheme automation
"colorscheme blue
"colorscheme darkblack
"colorscheme darkblue
"colorscheme desert
"colorscheme gothic
"colorscheme ibmedit
"colorscheme inkpot
"colorscheme leo
"colorscheme molokai " also good
"colorscheme monokai
"colorscheme murphy "green is just a little too green
"colorscheme peachpuff
"colorscheme peaksea
"colorscheme railscasts
"colorscheme railscasts_alt
"colorscheme relaxedgreen
"colorscheme slate
"colorscheme torte
"colorscheme vividchalk
colorscheme xoria256  " not bad
"colorscheme xterm16



























