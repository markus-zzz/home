colorscheme desert
set wildmode=longest,list,full
set hlsearch
set tabstop=4
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
syntax on

map <F4> :execute " grep -srn --binary-files=without-match --exclude-dir=.git . -e " . expand("<cword>") . " " <bar> cwindow<CR>
autocmd BufWritePre * :%s/\s\+$//e
