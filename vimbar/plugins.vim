"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug                                                                                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Setting up vim-plug
let vim_plug_installed=1
let plug_vim=expand('~/.vim/autoload/plug.vim')
" If vim-plug file is absent, install vim-plug
if !filereadable(plug_vim)
  echo "Installing Vim-Plug.."
  echo ""
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let vim_plug_installed=0
endif

" Function for installing plugins
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')


" Filetype specific
Plug 'funorpain/vim-cpplint', {'for' : ['cpp', 'c', 'arduino'] }          " Cpplint checker
Plug 'ap/vim-css-color', {'for': ['css'] }                                " Colored css
Plug 'suan/vim-instant-markdown'                                          " Display Markdown
"Plug 'yashsriv/vim-instant-pandoc'                                        " Display Markdown
"Plug 'ensime/ensime-vim', { 'do': function('DoRemote') }                  " Ensime
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }                       " Javascript
Plug 'vim-pandoc/vim-pandoc'                                              " Pandoc Helper utils
Plug 'vim-pandoc/vim-pandoc-syntax'                                       " Pandoc Syntax
Plug 'vim-pandoc/vim-pandoc-after'                                        " Pandoc After hook
Plug 'jceb/vim-orgmode'                                                   " OrgMode tools
"Plug 'sheerun/vim-polyglot'                                               " One to rule them all, one to find them, one to bring them all and in the darkness bind them.*/
Plug 'Quramy/tsuquyomi'                                                   " For typescript

" Utilities
Plug 'tpope/vim-eunuch'                                           " Some vim sugar for unix
Plug 'tpope/vim-sensible'                                         " Some sensible settings
Plug 'tpope/vim-sleuth'                                           " Autodetect file spacing
Plug 'tpope/vim-speeddating'                                      " Incrementing dates and more
Plug 'tpope/vim-surround'                                         " Surround Command for textobjects
Plug 'tpope/vim-characterize'                                     " Get info of unicode character using `ga`
Plug 'Shougo/echodoc.vim'                                         " show documentation by echoing
"Plug 'nathanaelkane/vim-indent-guides'                            " Show indents
Plug 'scrooloose/nerdcommenter'                                   " Good Commenting
Plug 'scrooloose/nerdtree'                                        " File Browsing
Plug 'Xuyuanp/nerdtree-git-plugin'                                " File Browsing
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                    " File Browsing
Plug 'godlygeek/tabular'                                          " Table Settings
Plug 'majutsushi/tagbar'                                          " Tagbar ( Display info on structure of code)
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'               " Snippets
Plug 'Chiel92/vim-autoformat'                                     " AutoFormat
Plug 'Lokaltog/vim-easymotion'                                    " Easy Motion search
Plug 'terryma/vim-multiple-cursors'                               " Multiple Cursors
Plug 'vim-scripts/auto-pairs-gentle'                              " Autocomplete brackets and stuff
Plug 'vim-scripts/autoswap.vim'                                   " Handle swap files transparently
Plug 'tpope/vim-endwise'                                          " adds end endif fi, etc
Plug 'KabbAmine/zeavim.vim'                                       " Zeal
Plug 'vim-utils/vim-troll-stopper'                                " Prevent unicode trolling
Plug 'junegunn/goyo.vim' | Plug 'junegunn/limelight.vim'          " Goyo - Focus
Plug 'mattn/calendar-vim'                                         " Display calendar in vim - for orgmode
Plug 'vim-scripts/SyntaxRange'                                    " vim script for syntax highlighting within ranges
Plug 'vim-scripts/utl.vim'                                        " vim script Universal Text Linking
Plug 'Shougo/vimproc', { 'do': 'make' }                       " Javascript
Plug 'tpope/vim-repeat'                                           " repeat command
Plug 'mhinz/vim-startify'                                         " Start screen
Plug 'sakshamsharma/encfile-mode'
Plug 'ctrlpvim/ctrlp.vim'

" Autocomplete
if has('nvim')
  Plug 'yashsriv/vim-airline-harlequin'                           " My own colorscheme for airline
  Plug 'vim-airline/vim-airline'                                  " Powerful statusline
  Plug 'vim-airline/vim-airline-themes'                           " Powerful statusline themes
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }     " Dark powered neocomplete
  Plug 'zchee/deoplete-jedi'                                      " Python completion
  Plug 'zchee/deoplete-clang'                                     " C Family completion
  Plug 'mhartington/deoplete-typescript'                          " Typescript Completion
  Plug 'benekastah/neomake'                                       " Neomake
else
"  Plug 'Shougo/neocomplete.vim'                                   " Fast autocomplete
  Plug 'ervandew/supertab'                                   " Fast autocomplete
"  Plug 'scrooloose/syntastic'                                     " Syntax Checker
endif
Plug 'Shougo/context_filetype.vim'                                " Context filetype feature (suggested for deoplete)
Plug 'Shougo/neoinclude.vim'                                      " completion results from included files
Plug 'editorconfig/editorconfig-vim'                              " Use the editorconfig standard if possible


" Looks
Plug 'ntpeters/vim-better-whitespace'                             " Show Trailing Spaces
"Plug 'ryanoasis/vim-devicons'                                     " Special icons for filetypes
Plug 'luochen1990/rainbow'                                        " Rainbow coloured brackets
Plug 'tpope/vim-fugitive'

call plug#end()                                                   " required

" Install Plugins if they are not installed
if vim_plug_installed== 0
  echo "Installing Plugins, please ignore key map error messages"
  echo ""
  :PlugInstall
endif
