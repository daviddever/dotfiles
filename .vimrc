syntax enable
set background=dark
colorscheme solarized

set history=1000
set undolevels=1000
set number

""" Moving Around/Editing
set ruler                        " show the cursor position all the time
set nostartofline                " Avoid moving cursor to BOL when jumping around
set scrolloff=3                  " Keep 3 context lines above and below the cursor
set backspace=2                  " Allow backspacing over autoindent, EOL, and BOL
set showmatch                    " Briefly jump to a paren once it's balanced
set linebreak                    " don't wrap textin the middle of a word
set autoindent                   " always set autoindenting on
set smartindent                  " use smart indent if there is no indent file
set tabstop=4                    " <tab> inserts 4 spaces
set shiftwidth=4                 " but an indent level is 2 spaces wide.
set softtabstop=4                " <BS> over an autoindent deletes both spaces.
set expandtab                    " Use spaces, not tabs, for autoindent/tab key.
set shiftround                   " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>              " show matching <> (html mainly) as well

"""" Messages, Info, Status
set ls=2                         " always show status line
set confirm                      " Y-N-C prompt if closing with unsaved changes.
set showcmd                      " Show incomplete normal mode commands as I type.
set report=0                     " : commands always print changed line count.
set laststatus=2                 " Always show statusline, even if only 1 window.
