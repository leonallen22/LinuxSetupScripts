filetype indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set autoindent

set hidden
set history=100

set nu
set showmatch
set hlsearch
set foldmethod=indent
set foldlevel=50

nnoremap <space> za
nnoremap <Leader><Leader> :e#<CR>

autocmd BufWritePost Jenkinsfile execute '!validate-jenkinsfile <afile> || true'
autocmd BufWritePost *pipeline.groovy execute '!validate-jenkinsfile <afile> || true'
command VJ !validate-jenkinsfile % || true
autocmd Filetype Jenkinsfile setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype groovy setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 fileformat=unix
