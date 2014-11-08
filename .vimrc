""" Synastic
execute pathogen#infect()
call pathogen#helptags()

""" 256 Color Scheme
set t_Co=256

""" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

""" NERDtree
map <C-n> :NERDTreeToggle<CR>

syntax on
filetype on
filetype plugin indent on

set background=dark
colorscheme solarized
set history=1000
set undolevels=1000
set number
set numberwidth=1

map <F11> :set invnumber

""" Moving Around/Editing

set ruler                        " show the cursor position all the time
set nostartofline                " Avoid moving cursor to BOL when jumping around
set scrolloff=3                  " Keep 3 context lines above and below the cursor
set backspace=2                  " Allow backspacing over autoindent, EOL, and BOL
set showmatch                    " Briefly jump to a paren once it's balanced
set linebreak                    " don't wrap textin the middle of a word
set expandtab                    " Use spaces, not tabs, for autoindent/tab key.
set shiftround                   " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>              " show matching <> (html mainly) as well

inoremap # #

set ffs=unix,dos,mac " Try recognizing dos, unix, and mac line endings.

"""" Messages, Info, Status
set ls=2                         " always show status line
set confirm                      " Y-N-C prompt if closing with unsaved changes.
set showcmd                      " Show incomplete normal mode commands as I type.
set report=0                     " : commands always print changed line count.
set laststatus=2                 " Always show statusline, even if only 1 window.

set ignorecase " Default to using case insensitive searches,
set smartcase " unless uppercase letters are used in the regex.
set smarttab " Handle tabs more intelligently
set hlsearch " Highlight searches by default.
set incsearch " Incrementally search while typing a /regex
