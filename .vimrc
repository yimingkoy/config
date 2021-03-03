set nu
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set ignorecase
set ruler
set tags=./tags,../tags
"set tags+=~/study/debug/tags
"set tags+=~/study/linux-3.18.25/tags

"set tags+=~/study/linux-2.6.11/tags
"compiler gcc
set sm
"set cin
set fileencodings=utf8
set fileencodings=utf8,gb2312,gbk,big5
filetype plugin on
filetype plugin indent on
set nocp
set hlsearch
set incsearch
set showcmd
"let Tlist_Use_Left_Window=0
let Tlist_Use_Right_Window=1
let Tlist_Compart_Format = 1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File = 1
let Tlist_Ctags_Cmd='/usr/bin/ctags'
"map <F5> :!ctags -R --c-kinds=+p --fields=+lS --extra=+q .<CR><CR> :TlistUpdate<CR>
"imap <F5> <ESC>:!ctags -R --c-kinds=+p --fields=+lS --extra=+q .<CR><CR> :TlistUpdate<CR>
"map <F5> :cw<CR>
"imap <F5> <Esc>:cw<CR>
nmap <F5>:cw<CR> "open quickfix
nmap <F4> :TlistToggle<CR> "function variable
map <F2> :call CompileRunGcc()<CR>
" F3 NERDTree
map <F3> :NERDTreeToggle<CR>
imap <F3> <Esc>:NERDTreeToggle<CR>
vmap "+y :w !pbcopy<CR><CR> 
nmap "+p :r !pbpaste<CR><CR>
func! CompileRunGcc()  "compile run program
    exec "w"
    exec "!gcc % -o %<"
    exec "! ./%<"
    endfunc
nmap <F10> :call Search_Word()<CR> "open quickfix
"nmap <F2> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <silent> <F6> :Grep<CR> 
inoremap <F8><C-x><C-o> "intellegent completion
nnoremap <silent> <F7> :A<CR>
set updatetime=100
noremap <F9> :call ToggleSketch()<CR>
set modifiable
set write
set ambiwidth=double
syntax on
"colorscheme default
"colorscheme jungle 
colorscheme darkblue 
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-P>"
set nocp
"set mouse=a
set mouse=h
"autocmd CursorMoved * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set path+=/usr/include/gtk-2.0/*,/usr/include/gtk-2.0,/usr/include/glib-2.0/*,/usr/include/glib-2.0
set tags+=/usr/include/gtk-2.0/gtk/tags,/usr/include/gtk-2.0/tags,/usr/include/glib-2.0/tags,/usr/include/glib-2.0/glib/tags
set fo+=mB
set lbr
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set nobackup
set noerrorbells
"set formatoptions=tcrqn
set foldenable
"set foldmethod=syntax
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
set backspace=indent,eol,start
set shortmess=atI
ab #i #include"apue.h"
"autocmd BufEnter * call DoWordComplete()
let g:WC_min_len = 3
let g:WC_accept_key = "<tab>"
nmap <F12> :Matrix<CR>
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <F11> :WMToggle<cr>
set cscopetag
let GtagsCscope_Auto_Load = 1
let g:GtagsCscope_Quiet = 1
let g:Gtags_Close_When_Single = 1

if has("cscope")
    "set csprg=/usr/bin/cscope
    set csprg=gtags-cscope
    set cscopetag 
    set csto=0
    set cst
    set cscopequickfix=s-,c-,d-,i-,t-,e- 
    set nocsverb
    if exists("$sourceDir")
"        cs add $sourceDir/cscope.out 
"        set tags+=$sourceDir/tags
"    elseif $CSCOPE_DB !=""
"       cs add $CSCOPE_DB
       cs add GTAGS
    endif
    
    set csverb
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
endif
