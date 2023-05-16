inoremap kj <Esc>
set encoding=utf-8
set nu
set relativenumber

set nobackup
set noswapfile
syntax on
set formatoptions -=cro


set guicursor=i:block

" Having longer updatetime (default is 4000 ms = 4s) leads to noticable delays
" and poor user experience
set updatetime=300

" Always show the signcolumn so it doesn't shift the text each time a sign is
" shown
set signcolumn=yes


" Use tab for trigger completition with characters ahead and navigate
" Enabling "suggest.noselect": true in config file to not auto-select the
" first item
inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#pum#next(1) :
			\ CheckBackspace() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


" Make <CR> to accept selected completition item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction


" TODO: Check this out more at github.com/neoclide/coc.nvim





let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

" List your plugins here

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ellisonleao/gruvbox.nvim'


Plug 'ziglang/zig.vim'

call plug#end()


set background="light"

