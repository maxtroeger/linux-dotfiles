let mapleader=","

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'lukesmithxyz/vimling'
"Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'
call plug#end()

" Basic additions
"	colorscheme gruvbox
"	autocmd BufEnter * :hi Normal guibg=NONE ctermbg=NONE
	set clipboard+=unnamedplus
	set nocompatible
	set go=a
	set mouse=a
	set title
	set nohlsearch
	colorscheme delek
	set noshowmode
	set noruler
	set laststatus=0
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" Autocomp
	set wildmode=longest,list,full

" Save without exit
	noremap ZX :up<cr>

" Better split nav
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Replace all with S
	nnoremap S :%s//g<Left><Left>

" No autocomment
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Display of new buffers
	set splitbelow splitright

" Goyo!!
	map <leader>f :Goyo \| set linebreak \| hi Normal guibg=NONE ctermbg=NONE<CR>
	"map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"" Enable Goyo for mutt writing
	autocmd BufEnter /tmp/neomutt* :Goyo 80
	autocmd BufEnter /tmp/neomutt* map ZZ :Goyo\|x!<CR>
	autocmd BufEnter /tmp/neomutt* map ZQ :Goyo\|q!<CR>

" Deadkeys (Helpful for French)
	nm <leader><leader>d :call ToggleDeadKeys()<CR>
	imap <leader><leader>d <esc>:call ToggleDeadKeys()<CR>a

" Remove trailing whitespace
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e

" Spell check
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Word count
	map <leader>w :'<,'>:w !wc -w<CR>

" Compile code
	map <leader>c :w! \| !compiler <c-r>%<CR>

" View output
	map <leader>p :!opout <c-r>%<CR><CR>

" Automatically update sxhkd binds
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Automatically update aliases
	autocmd BufWritePost *aliasfolders,*aliasconfigs !dash ~/.scripts/shortcuts

" autcmd for file extensions
	let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex<CR>
	let g:vimwiki_list = [{'path': '~/dox/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
"" Groff
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff

"" Tex
	autocmd BufRead,BufNewFile *.tex set filetype=tex
	autocmd VimLeave *.tex !texclear %

" Shellcheck
	map <leader>s :!clear && shellcheck -x %<CR>

" autocmd for specific files
"" Status bar for DWM
	"autocmd BufWritePost *dwmbar !killall dwmbar; setsid dwmbar &
	autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }

" Function for toggling the bottom statusbar:
	let s:hidden_all = 1
	function! ToggleHiddenAll()
	    if s:hidden_all  == 0
	        let s:hidden_all = 1
	        set noshowmode
	        set noruler
	        set laststatus=0
	        set noshowcmd
	    else
	        let s:hidden_all = 0
	        set showmode
	        set ruler
	        set laststatus=2
	        set showcmd
	    endif
	endfunction
	nnoremap <leader>h :call ToggleHiddenAll()<CR>
