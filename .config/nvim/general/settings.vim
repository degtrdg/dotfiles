syntax on
set noerrorbells
set visualbell
set incsearch
set smartindent
set nu
set nobackup
set undodir =~/.config/nvim/undodir
set undofile
set hidden
set background=dark
set t_Co=256
set iskeyword+=-
set tabstop=2
set expandtab
set updatetime=10 "Faster completion
set timeoutlen=500 "By default timeoutlen is 1000 ms
set smartindent " Makes indenting smart
set autoindent "Good auto indent
set laststatus=0 "Always display the status line
set showtabline=2
set noshowmode "We don't need to see things like -- INSERT -- anymore"
set clipboard=unnamedplus "Copy paste between vim and everything else"
highlight ColorColumn ctermbg=0 guibg=lightgrey
au! BufWritePost $MYVIMRC source % "auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
 cmap w!! w !sudo tee %"

