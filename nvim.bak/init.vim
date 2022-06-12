call plug#begin('~/.config/vim_plug/plugged')
    Plug 'honza/vim-snippets'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-python/python-syntax'
    Plug 'vim-scripts/ctags.vim'
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdcommenter'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'sainnhe/gruvbox-material'
    Plug 'Yggdroot/indentLine'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'majutsushi/tagbar'
    Plug 'tell-k/vim-autopep8'
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'wakatime/vim-wakatime'
    " Plug 'garbas/vim-snipmate'
    " Plug 'morhetz/gruvbox'
call plug#end()

filetype plugin on
" 设置为双字宽显示(会影响界面渲染，所以关掉)
" set ambiwidth=double
" 防止vim背景颜色错误(现在没有这个问题)
" set t_ut=
" 高亮匹配括号
set showmatch
" 匹配括号显示时间
set matchtime=1
" 不占用最后的一个cmd框显示现在的模式
set noshowmode
" 取消警告声音
set novisualbell
set noerrorbells
set report=0
" 搜索不区分大小写
set ignorecase
set nobackup
set autoread
set nocompatible
set backspace=2 "能使用backspace回删
set showcmd
set hlsearch
syntax on "语法检测

" Tab settings
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab

" indent method
" set cindent
set smartindent

" Set Mouse
set mouse=a
" set selection=exclusive
" set selectmode=mouse,key

set history=1000 "设置历史记录条数
" close welcome page
set shortmess=atI
set clipboard+=unnamed

" VIM Encoding Method
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,latin1
set fileencoding=gb2312
set termencoding=utf-8

set signcolumn=yes
set cmdheight=1
set ruler
set nu
set cursorline

" reset cursor when vim exits
" au VimLeave * set guicursor=a:ver25-blinkon0
set foldmethod=indent " 设置默认折叠方式为缩进
set foldlevelstart=99 " 每次打开文件时关闭折叠

" coc.nvim settings
set hidden
set nowritebackup
set updatetime=300
set shortmess+=c

" Line Settings
set wrap

" +================================ colorscheme =====================================+ "
set t_Co=256
set termguicolors
set background=dark
hi ExtraWhitespace ctermbg=red guibg=red
hi Todo ctermbg=red guibg=red
" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_contrast_light='hard'
" colorscheme gruvbox
let g:airline_theme = 'gruvbox_material'
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material


au FileType gitcommit,gitrebase let g:gutentags_enabled=0
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:python_highlight_all = 1
" +================================ 可视化缩进 =====================================+ "

let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
au FileType json let g:indentLine_setConceal = 0 " set default conceal for json

" +================================== NERDTree =======================================+ "
" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" 设置树的显示图标
" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
" let g:NERDTreeHidden=0     "不显示隐藏文件
let g:NERDTreeShowHidden=1 "显示隐藏文件
""Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" autocmd vimenter *  NERDTreeToggle

" +================================== 按键映射 =======================================+ "
" self key map:
" <leader>s : open key
" <leader>d : close key
" <leader>e : norm key
" quicky paste
noremap <leader>sp :set paste<CR>i
nnoremap <leader>dp :set nopaste<CR>
" fold method change
nnoremap <leader>sf :set foldmethod=manual<CR>
nnoremap <leader>df :set foldmethod=indent<CR>
" enable and disable mouse support
nnoremap <leader>sa :set mouse=a<CR>
nnoremap <leader>da :set mouse=<CR>

" match and undo trailing
nnoremap <leader>st :match ExtraWhitespace /\s\+$/<CR>/\s\+$/<CR>
nnoremap <leader>dt :match<CR>:noh<CR>
" close highlight
nnoremap <leader>dh :noh<CR>

inoremap <silent> jj <Esc>
inoremap <M-h> <left>
inoremap <M-j> <down>
inoremap <M-k> <up>
inoremap <M-l> <right>

" swap
vnoremap <C-C> <ESC>`.``gvp``P

" plug key map
nnoremap <silent> <F4> :TagbarToggle<CR>  " tagbar
nnoremap <F3> :NERDTreeToggle<CR>:NERDTreeRefreshRoot<CR> " nerdtree

" F6自动格式化
autocmd FileType python noremap <buffer> <F6> :call Autopep8()<CR>

" F5 自动编译文件 Normal+Visual mode
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'cpp'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'java'
                exec "!javac %"
                exec "!time java %<"
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'python'
                exec "!clear"
                exec "!time python3 %"
        elseif &filetype == 'html'
                exec "!firefox % &"
        elseif &filetype == 'go'
                " exec "!go build %<"
                exec "!time go run %"
        elseif &filetype == 'mkd'
                exec "!~/.vim/markdown.pl % > %.html &"
                exec "!firefox %.html &"
        endif
endfunc

" ctrl+s 保存 	Insert mode
" linux默认情况下ctrl+s是锁定terminal,需要ctrl+q解锁.在.bashrc 设置 stty-ixon可以禁用
imap <C-s> <Esc>:w!<CR>i
"ctrl+a	全选+复制 Normal+Insert+visual mode
map <C-A> ggVG
map! <C-A> <Esc>ggVG
"ctrl+f 复制到系统粘贴板
map  <C-F> "+y
map! <C-F> "+y


" +================================== coc.nvim  ======================================+ "
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? \"\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? \"\<TAB>" :
"       \ coc#refresh()
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" let g:coc_snippet_next = '<tab>'
if $CONDA_PREFIX == ""
  let s:current_python_path=$CONDA_PYTHON_EXE
else
  let s:current_python_path=$CONDA_PREFIX.'/bin/python'
endif
call coc#config('python', {'pythonPath': s:current_python_path})
" +=================================== tagbar =======================================+ "

let g:tagbar_width=30
" +================================== airline =======================================+ "
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" let g:airline_theme = 'distinguished'
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
nmap <leader>q :bp<cr>:bd #<cr>
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = ''
" let g:airline_left_sep = ']'
" let g:airline_left_alt_sep = ')'
" let g:airline_right_sep = '['
" let g:airline_right_alt_sep = '('
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR"
" +=============================== NERD Commenter ====================================+ "
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
au FileType python let g:NERDSpaceDelims = 0

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"******************auto format设置***************
"vim-autopep8设置,关闭diff提示
let g:autopep8_disable_show_diff=1

"------------------- python 文件设置--------------------
" 开启语法高亮
let python_highlight_all=1
" 设定tab的格数为4
au Filetype python set tabstop=4
" 设置编辑模式下tab的宽度
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" ####################################定义SetTitle，自动插入文件头##############################
func SetTitle()
    "如果文件类型为.sh文件
	if &filetype == 'sh'
         call setline(1,"\#########################################################################")

        call append(("."), "\# File Name: ".("%"))

         call append(line(".")+1, "\# Author: GNYD")

     
    "call append((".")+3, "\# Created Time: ".strftime("%c"))
         call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d",localtime()))

         call append(line(".")+4, "\#########################################################################")

         call append(line(".")+5, "\#!/bin/bash")

         call append(line(".")+6, "")

     else

        call setline(1, "/*************************************************************************")

        call append(line("."), "    > File Name: ".("%"))

        call append(line(".")+1, "    > Author: GNYD")

        call append(line(".")+2, "    > Mail: YourEmail ")

       " 同样的 改变时间格式
        "call append((".")+3, "    > Created Time: ".strftime("%c"))
        call append((".")+3, "    > Created Time: ".strftime("%Y-%m-%d",localtime()))

        call append((".")+4, " ************************************************************************/")

        call append(line(".")+5, "")

     endif

     if &filetype == 'cpp'

        call append(line(".")+6, "#include<iostream>")

         call append(line(".")+7, "using namespace std;")

        call append(line(".")+8, "")

    endif

    if &filetype == 'c'

         call append(line(".")+6, "#include<stdio.h>")

       call append(line(".")+7, "")

    endif
 
   "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
 endfunc

" Python自动插入文件标题
 autocmd BufNewFile *py exec ":call SetPythonTitle()"
 func SetPythonTitle()
  call setline(1,"# Copyright (c) StilesYu  All Rights Reserved.")
  call append(line("."), "\# File Name: ".("%"))
  call append(line(".")+1, "\# Author: GNYD Tim")
  call append(line(".")+5, "\# Created Time: ".strftime("%Y-%m-%d",localtime()))
 endfunc
"新建文件后，自动定位到文件末尾
 autocmd BufNewFile * normal G o
