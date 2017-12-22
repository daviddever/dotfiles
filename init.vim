call plug#begin('~/.config/nvim/plugged')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/vim-colors-solarized'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'janko-m/vim-test'
  Plug 'jremmen/vim-ripgrep'
  Plug 'kchmck/vim-coffee-script'
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'rust-lang/rust.vim'
  Plug 'sbdchd/neoformat'
  Plug 'scrooloose/nerdtree'
  Plug 'stephpy/vim-yaml'
  Plug 'tell-k/vim-browsereload-mac'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails', { 'commit': 'f8f5c6c544de7d9ebff7283142593e1733ffae89' } " for syntax hl
  Plug 'tpope/vim-rhubarb'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
  Plug 'nvie/vim-flake8'
call plug#end()

let g:airline_powerline_fonts = 1

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

colorscheme solarized
set background=dark

let g:airline_theme='solarized'

" italics
highlight Comment cterm=italic
" end italics

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

" ctrlp
nnoremap <silent> <leader>f :CtrlP<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>
nnoremap <silent> <leader>m :CtrlPMRU<CR>
nnoremap <silent> <leader>. :CtrlPTag<CR>
" end ctrlp

" neoformat - prettier
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.jsx Neoformat
autocmd FileType javascript set formatprg=./node_modules/prettier/bin/prettier.js\ --stdin\ --single-quote\ --no-semi\ --trailing-comma\ es5
let g:neoformat_try_formatprg = 1

" ripgrep
nmap <leader>a <Esc>:Rg<SPACE>
let g:rg_command = "rg --vimgrep --sort-files --smart-case"
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
" end ripgrep

" NERDtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim if NERDtree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " show dotfiles
" end NERDtree

" deoplete
let g:deoplete#enable_at_startup = 1
" end deoplete

" vim-browserload-mac
nnoremap <silent> <leader>r :ChromeReload<CR>
let g:returnApp = "iTerm"
" end vim browsereload-mac

