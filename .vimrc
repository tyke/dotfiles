"let g:user_zen_mode='a' "enable all zencoding functions in all modes
"let g:user_zen_expandabbr_key = '<c-e>'
set autoindent 
set nu
set tabstop=4
set shiftwidth=4
"set shiftwidth=4
"set smartindent
set expandtab
syntax on
map <Tab> <C-W>w
let mapleader=","
set background=dark
colorscheme kellys
set antialias
call pathogen#infect()
set backspace=start,indent,eol
set iskeyword-=_
set clipboard+=unnamed
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
"highlight end of line white space
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

":imap { {<CR>}<Esc>O<Tab>
"set cindent

"map <C-T> :NERDTreeToggle<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
nnoremap <leader>p :CtrlP<CR>
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 0
