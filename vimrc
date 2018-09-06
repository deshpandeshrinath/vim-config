set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
""
"" Vim settings for @mscoutermarsh
""
"
"" Settings in this file may depend on plugins, so let's install them first.
"" Not to be confused with the contents of ~/.vim/plugin/* which are
"" configuration options for each plugin and automatically loaded by Vim.
"source ~/.vim/plugin/plugins.vim
"
"" Leader Mappings
"map <Space> <leader>
"map <Leader>w :update<CR>
"map <Leader>q :qall<CR>
"map <Leader>gs :Gstatus<CR>
"
"syntax on
"
"set autoread                          " Auto reload changed files
"set wildmenu                          " Tab autocomplete in command mode
"set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
"set clipboard=unnamed                 " Clipboard support (OSX)
"set laststatus=2                      " Show status line on startup
"set splitright                        " Open new splits to the right
"set splitbelow                        " Open new splits to the bottom
"set lazyredraw                        " Reduce the redraw frequency
"set ttyfast                           " Send more characters in fast terminals
"set nowrap                            " Don't wrap long lines
"set listchars=extends:→               " Show arrow if line continues rightwards
"set listchars+=precedes:←             " Show arrow if line continues leftwards
"set nobackup nowritebackup noswapfile " Turn off backup files
"set noerrorbells novisualbell         " Turn off visual and audible bells
"set expandtab shiftwidth=2 tabstop=2  " Two spaces for tabs everywhere
"set history=500
"set hlsearch                          " Highlight search results
"set ignorecase smartcase              " Search queries intelligently set case
"set incsearch                         " Show search results as you type
"set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
"set showcmd                           " Show size of visual selection
"
"" Persistent undo
"set undodir=~/.vim/undo/
"set undofile
"set undolevels=1000
"set undoreload=10000
"
"" Ignored files/directories from autocomplete (and CtrlP)
"set wildignore+=*/tmp/*
"set wildignore+=*.so
"set wildignore+=*.zip
"set wildignore+=*/vendor/bundle/*
"set wildignore+=*/node_modules/
"
""-------------------------------------------------------------------------------
"" Interface
""-------------------------------------------------------------------------------
"
"set number            " Enable line numbers
"set scrolloff=5       " Leave 5 lines of buffer when scrolling
"set sidescrolloff=10  " Leave 10 characters of horizontal buffer when scrolling
"
""-------------------------------------------------------------------------------
"" Colors & Formatting
""-------------------------------------------------------------------------------
"
"colorscheme solarized
"set background=dark
"
"" Showcase comments in italics
"highlight Comment cterm=italic gui=italic
"
"" Easy tab navigation
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>
"
"" Get off my lawn - helpful when learning Vim :)
"" nnoremap <Left> :echoe "Use h"<CR>
"" nnoremap <Right> :echoe "Use l"<CR>
"" nnoremap <Up> :echoe "Use k"<CR>
"" nnoremap <Down> :echoe "Use j"<CR>
""
""-------------------------------------------------------------------------------
"" Neovim-specific configurations
""-------------------------------------------------------------------------------
"
"autocmd FileType c setlocal foldmethod=syntax
"autocmd FileType cpp setlocal foldmethod=syntax
"autocmd FileType html setlocal foldmethod=indent
"autocmd FileType markdown setlocal foldmethod=indent
"autocmd FileType javascript setlocal foldmethod=indent
"autocmd FileType python setlocal foldmethod=indent
"autocmd FileType tex setlocal spell spelllang=en_us
"autocmd FileType markdown setlocal spell spelllang=en_us
"
"" command maps // in visual mode to run the commands y/<C-R>"<CR> which copies the visually selected text, then starts a search command and pastes the copied text into the search. <C-R> represents Ctrl-R and <CR> represents carriage return (Enter).
"vnoremap // y/<C-R>"<CR>
"
"" For local replace
"nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
"
"" For global replace
"nnoremap gR gD:%s/<C-R>///gc<left><left><left>
"
"set cursorcolumn  " highlight current column
"set cursorline  " highlight current column
"":hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=NONE guibg=white guifg=white
"":hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
""highlight Cursor guifg=white guibg=black
""highlight iCursor guifg=white guibg=steelblue
""set guicursor=n-v-c:block-Cursor
""set guicursor+=i:ver100-iCursor
""set guicursor+=n-v-c:blinkon0
""set guicursor+=i:blinkwait10
"
"Plugin 'matze/vim-tex-fold'
"
" " path to directory where library can be found
" let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" " or path directly to the library file
" let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
"
"" for easy tab nevigation
"nnoremap <<Space><Left> :tabprevious<CR>
"nnoremap <<Space><Right> :tabnext<CR>
"
"" Tab completion
"" will insert tab at beginning of line,
"" will use completion if not at beginning
"set wildmode=list:longest,list:full
"set complete=.,w,t
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
"
"  " Enable spellchecking for Markdown
"autocmd FileType markdown setlocal spell spelllang=en_us
"autocmd FileType text setlocal spell spelllang=en_us
"autocmd FileType tex setlocal spell spelllang=en_us
"
"" For all text files set 'textwidth' to 78 characters.
"autocmd FileType text setlocal textwidth=78
"autocmd FileType tex setlocal textwidth=78
"
"Plugin 'vim-tex-fold'
":set wrap

:set wrap

set shell=/bin/bash
runtime macros/matchit.vim

set ttyfast
set lazyredraw

let g:ruby_path="~/.rvm/bin/ruby"

" have jsx highlighting/indenting work in .js files as well
let g:jsx_ext_required = 0

let $PATH='/usr/local/bin:' . $PATH

:au FocusLost * :wa "Save on focus lost

" Sessions
let g:session_autoload = 'no'

" Leader Mappings
map <Space> <leader>
map <Leader>w :update<CR>
map <Leader>q :qall<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gp :Gpush<CR>
"
" vim-test mappings
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

let test#strategy = "tslime"

let test#ruby#rspec#executable = 'NO_RENDERER=true bundle exec rspec'

" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

" Reduce timeout after <ESC> is recieved.
set ttimeout
set ttimeoutlen=20
set notimeout

" highlight vertical column of cursor
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline

set cursorline

"key to insert mode with paste using F2 key
map <F2> :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set hlsearch      " highlight matches
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell
  autocmd FileType text setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

" bind K to search word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

let g:rspec_command = 'call Send_to_Tmux("NO_RENDERER=true bundle exec rspec {spec}\n")'
" Mocha command is specific to Product Hunt setup. Probably doesn't work with
" other apps
let g:mocha_js_command = 'call Send_to_Tmux("$(npm bin)/mocha --opts spec/javascripts/mocha.opts {spec}\n")'
let g:rspec_runner = "os_x_iterm"

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup
  let g:grep_cmd_opts = '--line-numbers --noheading'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='solarized'
set t_Co=256

:set smartcase
:set ignorecase

" Color scheme
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
set background=dark
colorscheme solarized


" Numbers
set number
set numberwidth=5

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

:nnoremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
:nnoremap <expr> yy (v:register ==# '"' ? '"+' : '') . 'yy'
:nnoremap <expr> Y (v:register ==# '"' ? '"+' : '') . 'Y'
:xnoremap <expr> y (v:register ==# '"' ? '"+' : '') . 'y'
:xnoremap <expr> Y (v:register ==# '"' ? '"+' : '') . 'Y'

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Get off my lawn - helpful when learning Vim :)
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement. Seemlessly navigate between Vim/Tmux panes
let g:tmux_navigator_no_mappings = 1

" This is a hack due to a neovim bug for going Left
" Details: https://github.com/christoomey/vim-tmux-navigator#it-doesnt-work-in-neovim-specifically-c-h
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" configure syntastic syntax checking to check on open as well as save
"let g:syntastic_ruby_checkers = ['mri']
"let g:syntastic_enable_highlighting=0

" Remove trailing whitespace on save for ruby files.
function! s:RemoveTrailingWhitespaces()
  "Save last cursor position
  let l = line(".")
  let c = col(".")

  %s/\s\+$//ge

  call cursor(l,c)
endfunction

au BufWritePre * :call <SID>RemoveTrailingWhitespaces()

" cmd n, cmd p for fwd/backward in search
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Create related file (Rails Spec file if missing). :AC
function! s:CreateRelated()
  let related = rails#buffer().alternate_candidates()[0]
  call s:Open(related)
endfunction

function! s:Open(file)
  exec('vsplit ' . a:file)
endfunction

command! AC :call <SID>CreateRelated()

autocmd FileType c setlocal foldmethod=syntax
autocmd FileType cpp setlocal foldmethod=syntax
autocmd FileType html setlocal foldmethod=indent
autocmd FileType markdown setlocal foldmethod=indent
autocmd FileType javascript setlocal foldmethod=indent
autocmd FileType python setlocal foldmethod=indent
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType matlab setlocal foldmethod=indent

" command maps // in visual mode to run the commands y/<C-R>"<CR> which copies the visually selected text, then starts a search command and pastes the copied text into the search. <C-R> represents Ctrl-R and <CR> represents carriage return (Enter).
vnoremap // y/<C-R>"<CR>

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

set cursorcolumn  " highlight current column
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

Plugin 'matze/vim-tex-fold'

 " path to directory where library can be found
 let g:clang_library_path='/usr/lib/llvm-3.8/lib'
 " or path directly to the library file
 let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

" for easy tab nevigation
nnoremap <<Space><Left> :tabprevious<CR>
nnoremap <<Space><Right> :tabnext<CR>
