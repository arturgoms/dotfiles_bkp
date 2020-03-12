set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-Up> <C-W>j
map <C-Down> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l

set splitbelow
set splitright


" File manager tree
" Start on open
autocmd VimEnter * NERDTree 
" Toggle nerdtree with tab
nmap <tab> :NERDTreeToggle<CR> 
" close nerdtree when close the file 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
" Focus on last open window
autocmd VimEnter * wincmd p

" inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
" inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
set clipboard^=unnamed,unnamedplus
" terminal
:tnoremap <Esc> <C-\><C-n><CR>
" Open terminal in insert mode ina splited view 
nmap <C-t> :vsplit term://zsh<CR> :startinsert<CR>

nnoremap <silent> <S-Up>    :call animate#window_delta_height(-5)<CR>
nnoremap <silent> <S-Down>  :call animate#window_delta_height(5)<CR>
nnoremap <silent> <S-Left>  :call animate#window_delta_width(5)<CR>
nnoremap <silent> <S-Right> :call animate#window_delta_width(-5)<CR>

call plug#begin()
Plug 'jalvesaq/Nvim-R'
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'mklabs/split-term.vim'
Plug 'honza/vim-snippets'
" Plug 'morhetz/gruvbox'
Plug 'liuchengxu/space-vim-dark'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mihaifm/vimpanel'

Plug 'zirrostig/vim-schlepp'                                                                   " Better drag visuals
Plug 'xtal8/traces.vim'                                                                        " Interactive subsititue
Plug 'vim-scripts/restore_view.vim'                                                            " Restore file pointer
Plug 'mattn/gist-vim', { 'on': 'Gist' }                                                        " Push current buffer as gist
Plug 'davidbeckingsale/writegood.vim', { 'on': ['WritegoodEnable', 'WritegoodToggle'] }        " Better writing mode
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript', 'css', 'javascript.jsx'] }             " Emmet
Plug 'jreybert/vimagit', { 'on': [ 'Magit', 'MagitOnly' ] }                                    " Even better git interface for vim
Plug 'metakirby5/codi.vim', { 'on': 'Codi' }                                                   " Live code preview
Plug 'rhysd/committia.vim'                                                                     " Better COMMIT_EDITMSG editing
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less',
  \ 'scss', 'graphql', 'markdown'] }

" Code editing enhacements
Plug 'tpope/vim-sleuth'                                                                        " Automatic indentation setting
Plug 'tpope/vim-fugitive'                                                                     " Git stuff from within vim
Plug 'majutsushi/tagbar', { 'on' : 'Tagbar' }                                                  " Class/module browser
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }                                             " Undo tree
Plug 'tpope/vim-vinegar'                                                                       " Simpler file browser
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTree', 'NERDTreeFind', 'NERDTreeToggle' ] }         " Nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': [ 'NERDTree', 'NERDTreeFind', 'NERDTreeToggle' ] } " Git sign for nerdtree

" Morph code
Plug 'tpope/vim-surround'                                                                      " Surround
Plug 'jiangmiao/auto-pairs'                                                                    " Autopair
Plug 'tomtom/tcomment_vim'                                                                     " Code commenting
Plug 'junegunn/vim-easy-align'                                                                 " Some prettification

" Language helpers
Plug 'sheerun/vim-polyglot'                                                                    " Multiple language support (slow)
Plug 'mhartington/nvim-typescript', { 'for': ['typescript'] }                                  " Typescript & Javascript support
Plug 'neoclide/vim-jsx-improve', { 'for': ['javascript', 'javascript.jsx'] }                   " Inproved JSX syntax
Plug 'tpope/vim-markdown', { 'for': ['md', 'markdown'] }                                       " Better markdown support
Plug 'davidhalter/jedi-vim', { 'for': ['python'] }                                             " Python helper
Plug 'fatih/vim-go', { 'for': ['go'] }                                                         " Golang helper
Plug 'sebdah/vim-delve', { 'for': 'go' }                                                       " Debugger for go
Plug 'racer-rust/vim-racer', { 'for': 'rust' }                                                 " Rust support
Plug 'tmhedberg/matchit', { 'for': ['html','xml', 'tex'] }                                     " Match tags for html, xml latex etc
" Plug 'raimon49/requirements.txt.vim', { 'for': 'requirements' }                              " Requirements file


" Language enhacements
Plug '~/Documents/Projects/vim-jsontogo' , { 'for': ['go'] }                                   " Convert JSON to Go struct

" Linting / Checking
Plug 'w0rp/ale'                                                                                " Neomake - linting and stuf
Plug 'Chiel92/vim-autoformat', { 'on': 'Autoformat' }                                          " Beautify code

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                                  " Competion framework
Plug 'Shougo/echodoc.vim'                                                                      " Show signature
Plug 'Shougo/neco-vim', { 'for': 'vim' }                                                       " Completion for viml
" Plug 'sebastianmarkow/deoplete-rust', { 'for': ['rs', 'rust'] }                              " Rust autocompletion (slow)
" Plug 'wellle/tmux-complete.vim'                                                              " Tmux completion
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }           " Language client

" Snippets
Plug 'SirVer/ultisnips'                                                                        " Snippet manager
Plug 'honza/vim-snippets'                                                                      " More snippets
Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'typescript'] }                   " ES2015 snippets
Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'typescript', 'javascript.jsx'] }  " React snippets

" Dependencies
Plug 'vim-scripts/mru.vim'                                                                     " Save recently used files (for v)
Plug 'mattn/webapi-vim'                                                                        " Web calls
Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

" Visual enhancements
Plug 'flazz/vim-colorschemes'                                                                  " Vim colorscheme
Plug 'chriskempson/base16-vim'                                                                 " Base16 colors
Plug 'Yggdroot/indentLine'                                                                     " Show indent
Plug 'mhinz/vim-signify'                                                                       " Git diff icons in gutter
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }                                           " Hyper focus editing
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }                                                     " Centerify
Plug 'ap/vim-css-color'                                                                        " Show colors
Plug 'yuttie/comfortable-motion.vim'                                                           " Scroll up and down
Plug 'camspiers/animate.vim'
Plug 'ervandew/supertab'                                                                       " Autocomplete on tab
Plug 'tpope/vim-fugitive'
call plug#end()

let g:airline#extensions#tabline#enabled = 1

let g:space_vim_dark_background = 233
colorscheme space-vim-dark
hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59

let g:UltiSnipsEditSplit = 'vertical'

let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

" Statusline
source ~/.config/nvim/statusline.vim
