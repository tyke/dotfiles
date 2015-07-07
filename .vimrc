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
nnoremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 0

let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'B'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1
" Go to the previous buffer open
nmap <leader>j :BuffergatorMruCyclePrev<cr>
" Go to the next buffer open
nmap <leader>k :BuffergatorMruCycleNext<cr>
" View the entire list of buffers open
nmap <leader>bb :BuffergatorOpen<cr>
" Shared bindings from Solution #1 from earlier
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

:let g:battery = system('cat ~/.battery')
:autocmd CursorHold * let g:battery = system('cat ~/.battery')
let g:airline_section_y = '%{g:battery}'
