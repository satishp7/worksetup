"nmap <C-H> <C-W>h 
"nmap <C-J> <C-W>j 
"nmap <C-K> <C-W>k 
"nmap <C-L> <C-W>l 

" " Map F4 to open a taglist window -- requires the taglist plugin
nnoremap <silent> <F4> :Tlist<CR>

" Set the indent and autotab options "
set shiftwidth=4
set tabstop=4
set shiftround
set smartindent
set shiftwidth=4
set expandtab
" // set nu
set ic
set hls
set expandtab
" // filetype indent on
set autoindent
set cindent
set showmatch
set ignorecase
set textwidth=79
setlocal spell spelllang=en_us

" Try the following if your GUI uses a dark background.
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

" Show trailing whitespace:
:match ExtraWhitespace /\s\+$/

" Show trailing whitespace and spaces before a tab:
:match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
:match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
:match ExtraWhitespace /^\t*\zs \+/

" Switch off :match highlighting.
:match

" // The set "F6" for tabnext		                                       "
nmap <F6> :tabNext<CR>

" // The switch of the Source Explorer                                         "
nmap <F8> :SrcExplToggle<CR>
"                                                                              "
" // set space error higlight for c
let c_space_errors = 1
"
" //highlight space errors in java files
let java_space_errors = 1
"
" //

"
" // Set the height of Source Explorer window                                  "
let g:SrcExpl_winHeight = 8
"                                                                              "
" // Set 100 ms for refreshing the Source Explorer                             "
let g:SrcExpl_refreshTime = 100
"                                                                              "
" // Set "Enter" key to jump into the exact definition context                 "
let g:SrcExpl_jumpKey = "<ENTER>"
"                                                                              "
" // Set "Space" key for back from the definition context                      "
let g:SrcExpl_gobackKey = "<SPACE>"
"                                                                              "
" // In order to Avoid conflicts, the Source Explorer should know what plugins "
" // are using buffers. And you need add their bufname into the list below     "
" // according to the command ":buffers!"                                      "
let g:SrcExpl_pluginList = [
         \ "__Tag_List__",
         \ "_NERD_tree_",
         \ "Source_Explorer"
     \ ]
"                                                                              "
" // Enable/Disable the local definition searching, and note that this is not  "
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. "
" // It only searches for a match with the keyword according to command 'gd'   "
let g:SrcExpl_searchLocalDef = 1
"                                                                              "
" // Do not let the Source Explorer update the tags file when opening          "
let g:SrcExpl_isUpdateTags = 0
"                                                                              "
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to "
" //  create/update a tags file                                                "
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"                                                                              "
" // Set "<F12>" key for updating the tags file artificially                   "
let g:SrcExpl_updateTagsKey = "<F12>"
"
" Open and close all the three plugins on the same time 
nmap <F8>   :TrinityToggleAll<CR> 

" Open and close the srcexpl.vim separately 
nmap <F9>   :TrinityToggleSourceExplorer<CR> 

" Open and close the taglist.vim separately 
nmap <F10>  :TrinityToggleTagList<CR> 

" Open and close the NERD_tree.vim separately 
nmap <F11>  :TrinityToggleNERDTree<CR> 
                                                                              "
set hlsearch
set background=dark
set showmatch

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on
