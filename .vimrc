""""""""""""""""Bundle"""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!
call vundle#rc()
" My Bundles here:
" ...
Plugin 'valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'Yggdroot/indentLine'
Bundle 'Lokaltog/vim-powerline'
filetype plugin indent on     " required!
"""""""""""""""""syntastic""""""""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
"whether to show balloons
let g:syntastic_enable_balloons = 1
"""""""""""""""""""YCM""""""""""""""""""""
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <space>       pumvisible() ? "\<C-y>" : "\<space>"	
"按空格键即选中当前项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<C-f>'
" 跳转到定义处
let g:ycm_global_ycm_extra_conf ='~/.ycm_extra_conf.py'
"""""""""""""""""""""""""""""""""""""""""""""
filetype on
filetype plugin on
filetype indent on
set shortmess=atI
set nu 
set history=1000
syntax on


