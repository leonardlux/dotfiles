" First basic setups
"
" Scrolling and numbers
set scrolloff=8
set number 
set relativenumber

" Tab shit
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Other
set encoding=utf8

" open new split panes to right and below
set splitright
set splitbelow

" Plugins
" can be upgraded by ':PlugUpgrade' cmd

" now install the acutal plugins

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'Mofiqul/dracula.nvim'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()    

" Deoplete Setup
let g:deoplete#enable_at_startup = 1

" Colorscheme set up
if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme dracula

" Nerdtree setup
let g:NERDTreeShowHidden = 1
" at the moment I like the minimal UI
let g:NERDTreeMinimalUI = 1
" the following line could be interisting but at the moment I have no clue
" let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusLine='NERDTree'
" Automaticaly close nvim if NERDTree is only thing left open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-a> :NERDTreeToggle<CR>

" Terminal shit (Is not working, until I install zsh)
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
split term://zsh
resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
let g:prettier#autoformat_config_present = 1
let g:prettier#config#config_precedence = 'prefer-file'
