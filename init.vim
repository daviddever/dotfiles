if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
  Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/vim-colors-solarized'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'janko-m/vim-test'
  Plug 'jremmen/vim-ripgrep'
  Plug 'kchmck/vim-coffee-script'
  Plug 'keith/swift.vim'
  Plug 'neomake/neomake'
  Plug 'pangloss/vim-javascript'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'pest-parser/pest.vim'
  Plug 'rust-lang/rust.vim'
  Plug 'sbdchd/neoformat'
  Plug 'scrooloose/nerdtree'
  Plug 'slim-template/vim-slim'
  Plug 'stephpy/vim-yaml'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails', { 'commit': 'f8f5c6c544de7d9ebff7283142593e1733ffae89' } " for syntax hl
  Plug 'tpope/vim-rhubarb'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
  Plug 'nvie/vim-flake8'
  Plug 'psf/black', { 'branch': 'stable' }
call plug#end()

let g:python3_host_prog = '/usr/bin/python3'

colorscheme solarized
set background=dark

let g:airline_theme='solarized'

" italics
highlight Comment cterm=italic
" end italics

" navigation ctrl-jklm changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
imap <C-w> <C-O><C-w>
" end navigation

" line numbers
set number
set numberwidth=1
" end line numbers

" whitespace
set list " show whitespace
set listchars=tab:>-,trail:#,precedes:<,extends:> " formatting for shown whitespace
" end whitespace

set linebreak " don't wrap text in the middle of a word

set confirm " Y/N/C prompt
set hidden  " hide buffers instead of closing (keeps changes rather than forceing prompt)

" reading/writing
set noautowrite    " Never write a file unless I request it.
set noautowriteall " NEVER.
set noautoread     " Don't automatically re-read changed files.
" end reading/writing

" searching and patterns
set ignorecase " Default to using case insensitive searches,
set smartcase  " unless uppercase letters are used in the regex.
set hlsearch   " Highlight searches by default.
set incsearch  " Incrementally search while typing a /regex
" end searching and patterns

" folding
set foldmethod=indent " allow us to fold on indents
set foldlevel=99      " don't fold by default
set foldlevelstart=99 " don't fold by default
" end folding

" netrw (file/directory navigation)
let g:netrw_liststyle = 3
" end netrw

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
" end vim-javascript

" vim-jsx
let g:jsx_ext_required = 0 " also highlight .js files
" end vim-jsx

" neoformat - prettier
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.jsx Neoformat
autocmd FileType javascript set formatprg=./node_modules/prettier/bin-prettier.js\ --stdin\ --single-quote\ --no-semi\ --trailing-comma\ es5\ --parser\ babel
let g:neoformat_try_formatprg = 1
"let g:neoformat_only_msg_on_error = 1
" end neoformat - prettier

" ripgrep
nmap <leader>a <Esc>:Rg<SPACE>
let g:rg_command = "rg --vimgrep --sort-files"
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
" end ripgrep

" NERDtree
" close vim if NERDtree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " show dotfiles
" end NERDtree

" deoplete
let g:deoplete#enable_at_startup = 1
" end deoplete

let g:black_virtualenv="~/.vim_black"

nnoremap <F9> :Black<CR>
autocmd BufWritePre *.py execute ':Black'


packloadall
silent! helptags ALL
