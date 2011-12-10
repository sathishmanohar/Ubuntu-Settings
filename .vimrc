set nocompatible
source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

filetype plugin on
filetype indent on
syntax on

" Set 256 colors in screen if terminal is capable of 256 color
" Work-around incomplete terminfo databases                                     
" Particulalry useful when under `screen`, which may or may not be attached
" to  
" a physical terminal capable of 256color mode.                                 
if match($TERMCAP, 'Co#256:') == 0 || match($TERMCAP, ':Co#256:') > 0
	set t_Co=256                                                                
endif   

" Sathish: Following lines set line numbers in all files
set number

"Sathish: Allow Cursor to go places where theres no Characters
"set virtualedit

" Sathish: Following lines set GUI Font and Color scheme
set background=dark
colorscheme jellybeans

" color classes in CSS syntax differently than ids
hi link cssClassName tag

" Hides GVim Toolbar
set go-=T

" Hides GVim Right Scroll Bar
set guioptions-=R

" Hides GVim Menubar
" set guioptions-=m

" Sathish: Following Line Set default encoding to utf-8 for files
set enc=utf-8
set fileencoding=utf-8
" set fileencodings=ucs-bom,utf8,prc
" set guifont=Bitstream\ Vera\ Sans\ Mono:h12
" set guifontwide=Nsimsun:h11

" Sathish: New Splits are opened below or right of current splits
set splitbelow
set splitright

" Sathish: Opens Vertical Split and Switches Over
nnoremap <leader>v <C-w>v<C-w>l :enew<cr>
nnoremap <leader>n <C-w>n<C-w>j :enew<cr>

nnoremap ,gf <C-w>f<C-w>L

" Sathish: Maxmize and Minimize Splits
nmap <leader>x <C-w>|
nnoremap <leader>m <C-w>1|
nnoremap <leader>z <C-w>=

" Sathish: Set Line Spacing
set linespace=3

" Sathish: Auto indent and smart indent
set smartindent
set autoindent

" Sathish: Set default slash to / instead of \ during omnicomplete
" set shellslash

"Auto-completion Menu
" set wildmode=list:longest

" Sathish: Enable Code Folding
set foldmethod=manual
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Sathish: Shortcut to Fold Tags with Leader (usually \) + ft
nnoremap <leader>ft Vatzf

" Sathish: Following line sets default tabstop to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab "Shows List of Expand Items instead of autocompleting

" Sathish: Make searches case insensitive
set ignorecase
set incsearch
set hlsearch

" Sathish: tell vim to keep a backup file
set nobackup
set nowritebackup

" Sathish: tell vim Not to Save .swp files
set noswapfile

" Sathish: tell vim where to put its backup files
" set backupdir=~\vimbackup\

" Sathish: tell vim where to put swap files
" set dir=~\vimbackup\

"Sathish: Shortcut for editing vimrc file
nmap ,ev :tabedit $MYVIMRC<cr>

"Sathish: space types : in normal mode
nmap <space> :

" New Tab
nmap ,tt :tabnew<cr>

" Next Tab
nmap ,tl :tabnext<cr>

" Previous Tab
nmap ,th :tabprevious<cr>

" close Tab
nmap ,tc :tabclose<cr>

"Closes Split or Tab on ,ll
nnoremap ,ll :close<cr>

" Deleted Current Buffer
nmap ,bd :bd<cr>

"Select All
nnoremap ,cl ^v$h

"Select All
nnoremap ,sa ggVG

"cut to Clipboard
vnoremap ,cx "+x

"Copy to Clipboard
vnoremap ,cp "+y

"Paste Last yanked
nnoremap ,pp "0p

"Loads Last Saved Version, Discards all changes done.
nnoremap ,ls :e!<cr>

"Go to last Edited Part
nnoremap ,le `.

"Sathish: Automatically change current directory to that of the file in the buffer
autocmd BufEnter * cd %:p:h

" Set filetype to html and eruby when .html.erb file extension is detected
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

" Set filetype to html, js and php when php file extension is detected
autocmd BufNewFile,BufRead *.php set filetype=html.php.js

" Change First sytax to php
nmap ,ph :set filetype=php.html.css.js<cr>

" Change First sytax to html
nmap ,ht :set filetype=html.php.css.js<cr>

" Change First sytax to CSS
nmap ,cs :set filetype=css.php.html.js<cr>

" Change First sytax to js
nmap ,js :set filetype=js.php.css.html<cr>

"Sathish: Shortcut for NerdTreeToggle
nmap ,nt :NERDTreeToggle<cr>
nmap ,no :NERDTree 
let NERDTreeShowHidden=1 "Sathish: Show Hidden files in NERDTree

" Faster shortcut for Commenting. Requires T-Comment Plugin
map <leader>c <c-_><c-_>
map <leader>i <c-_>i

"Sathish: Automatically reload .VIMRC when its changed
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Map a Change Directory to Favourite Locations
nmap ,d :cd ~/Desktop/<cr>
nmap ,ww :cd /var/www/<cr>

"Sathish: Open Current Buffer in Firefox
" abbrev ff :! start firefox %:p<cr>
abbrev ff :exec '! start firefox 'substitute(expand('%:p'), '^C:/wamp/www/','http://localhost/','')<cr>

"Sathish: Open Current Buffer in Chrome
" abbrev cm :! start chrome %:p<cr>
abbrev cm :exec '! start chrome 'substitute(expand('%:p'), '^C:/wamp/www/','http://localhost/','')<cr>

"Sathish: Open Current Buffer in IE
" abbrev ie :! start iexplore %:p<cr>
abbrev ie :exec '! start iexplore 'substitute(expand('%:p'), '^C:/wamp/www/','http://localhost/','')<cr>

"Sathish: Run Ruby Code
abbrev rub :! ruby %:p<cr>

"Stop arrow keys working so I have to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"This means whenever Vim loses focus, it saves the files in the buffer
" au FocusLost * :wa

"This sorts CSS properties alphabetically just by typign ,S
"nnoremap ,S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

"Dont press escape, press jj
inoremap jj <ESC>

"Set Background Automatically
"if has('gui_running')
    "set background=light
"else
    "set background=dark
"endif

" Script for enabling Relative Line Number Toggling Function
function! g:ToggleNuMode()
if(&rnu == 1)
set nu
else
set rnu
endif
endfunc

" This Line adds keymap for toggle
nnoremap <C-L> :call g:ToggleNuMode()<cr> 

" Change Cursor in different Modes
if has("autocmd")
	  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
		au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
		au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif

" Autocommands Per Filetype Basis

augroup ft_js
	" javascript
	let javascript_space_errors = 1
	autocmd!
	autocmd FileType javascript setlocal ts=4 sw=4 sts=4
	" javascript files
augroup END

augroup ft_rb
	" Ruby
	autocmd!
	autocmd FileType ruby setlocal ts=2 sw=2 sts=2
	" ruby files
augroup END

augroup ft_py
	" Python
	autocmd!
	autocmd FileType python setlocal ts=4 sw=4 sts=4
	" Python files
augroup END
