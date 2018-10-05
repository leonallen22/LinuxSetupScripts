set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set autoindent

set hidden
set history=100

set cursorline
set showmatch
set showmode
set hlsearch
set foldenable
set foldmethod=indent
set foldlevel=50

syntax on
filetype indent on

nnoremap j gj
nnoremap k gk
nnoremap <space> za
nnoremap <Leader><Leader> :e#<CR>

colorscheme sublimemonokai

autocmd BufWritePost Jenkinsfile execute '!validate-jenkinsfile <afile> || true'
autocmd BufWritePost *pipeline.groovy execute '!validate-jenkinsfile <afile> || true'
command VJ !validate-jenkinsfile % || true

autocmd Filetype Jenkinsfile setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype groovy setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 fileformat=unix
