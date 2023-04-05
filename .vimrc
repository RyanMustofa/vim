set nocompatible              " required
filetype plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Plugin that haven't been added:
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'mhinz/vim-startify'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhartington/oceanic-next'
Plugin 'morhetz/gruvbox'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'joshdick/onedark.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'jwalton512/vim-blade'
Plugin 'lifepillar/vim-solarized8'
Plugin 'cormacrelf/vim-colors-github'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'leafOfTree/vim-vue-plugin'
Plugin 'junegunn/goyo.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Plugin 'sickill/vim-monokai'
" Plugin 'arcticicestudio/nord-vim'
Plugin 'dense-analysis/ale'
Plugin 'frazrepo/vim-rainbow'
Plugin 'leafgarland/typescript-vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'othree/yajs.vim'
Plugin 'tomasr/molokai'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
Plugin 'mhinz/vim-signify'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'shougo/neocomplcache.vim'
Plugin 'preservim/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
" Plugin 'Yggdroot/indentLine'
"Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'turbio/bracey.vim'
Plugin 'itchyny/lightline.vim'
" Plugin 'vim-scripts/AutoComplPop'
" Plugin 'valloric/youcompleteme'
"Plugin 'jaxbot/browserlink.vim'
Plugin 'jacoborus/tender.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required:q

" set expandtab
"
" set tabstop=2
" set softtabstop=2
"
" set shiftwidth=2

" if (has("termguicolors"))
"  set termguicolors
" endif

set t_Co=256
set background=dark
" colorscheme synthwave84
" colorscheme solarized8
" colorscheme tender
" colorscheme gruvbox
colorscheme OceanicNext
" colorscheme github
" colorscheme PaperColor
" colorscheme desert-night
" autocmd vimcenter * hi Normal guibg=NONE ctermbg=None


"transparent


"for transparent background

function! AdaptColorscheme()
   highlight clear CursorLine
   highlight Normal ctermbg=none
   highlight LineNr ctermbg=none
   highlight Folded ctermbg=none
   highlight NonText ctermbg=none
   highlight SpecialKey ctermbg=none
   highlight VertSplit ctermbg=none
   highlight SignColumn ctermbg=none
endfunction
autocmd ColorScheme * call AdaptColorscheme()

highlight Normal guibg=NONE ctermbg=NONE
highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
highlight clear LineNr
highlight clear SignColumn
highlight clear StatusLine


autocmd InsertEnter * set nocursorline

autocmd InsertLeave * set nocursorline

" extra settings, uncomment them if necessary :)
set cursorline
set noshowmode
set nocursorline

" trasparent end


"Nerdtree configuration
map <Leader>t :tabnew<CR>
map <Leader>w :tabclose<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-o> :Prettier<CR>
map <C-t> :vert term<CR>

"let g:airline_theme = "github"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let NERDTreeMapOpenInTab='t'

set encoding=utf8
" set encoding=utf-8
syntax on

set nocompatible
set noswapfile
set nowrap
set number
set incsearch
set ignorecase
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=50
set autoindent
set smartindent
set splitbelow
set splitright

 autocmd FileType vue syntax sync fromstart
 autocmd FileType html setlocal sw=2 sts=2
 autocmd BufRead,BufNewFile *.svelte setlocal ft=html
 autocmd BufNewFile,BufRead *.vue set ft=vue
 autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
 autocmd QuickFixCmdPost *grep* cwindow
 autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
 autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

 " set runtimepath^=~/.vim/bundle/ctrlp.vim
 let g:prettier#autoformat = 0

let g:polyglot_disabled = ['css']

"let g:neocomplcache_enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:prettier#exec_cmd_path = "~/.vim/bundle/vim-prettier"
let g:prettier#exec_cmd_async = 1
" In ~/.vim/ftplugin/javascript.vim, or somewhere similar.
"
" " Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
"
"" Equivalent to the above.
let b:ale_linters = {'javascript': ['eslint']}"

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" Plugin 'wakatime/vim-wakatime'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
"" Align line-wise comment delimiters flush left instead of following code
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
"" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"
"" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1"
" "
" "
" "
let g:user_emmet_leader_key=','

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}

let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

"floatern
let g:floaterm_keymap_toggle = '<F12>'

let g:multi_cursor_use_default_mapping=0
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Default mapping
let g:multi_cursor_start_word_key      = '<C-j>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-j>'
let g:multi_cursor_prev_key            = '<C-k>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" rainbow
" let g:rainbow_active = 1

" let g:rainbow_load_separately = [
"     \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"     \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
"     \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"     \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
"     \ ]
"
" let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
" let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']



let g:prettier#config#tab_width = 2

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
set ts=2 sw=2 noet
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 0
" set laststatus=0
" set nonumber
" set signcolumn=yes
" set fillchars+=vert:\
" hi EndOfBuffer ctermfg=0
" function! NeatFoldText()
"     let line = getline(v:foldstart)
"
"     let nucolwidth = &fdc + &number * &numberwidth
"     let windowwidth = winwidth(0) - nucolwidth - 3
"     let foldedlinecount = v:foldend - v:foldstart
"
"     " expand tabs into spaces
"     let onetab = strpart('          ', 0, &tabstop)
"     let line = substitute(line, '\t', onetab, 'g')
"
"     let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
"     let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
"     return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
" endfunction
"
" set foldtext=NeatFoldText()
" let NERDTreeDirArrowExpandable = ' '
" let NERDTreeDirArrowCollapsible = ' '
" let NERDTreeMinimalUI = 1
" let $FZF_DEFAULT_OPTS = '--color=16,fg:8,bg:-1,fg+:7,bg+:-1,gutter:-1,pointer:4,info:-1,border:-1,prompt:-1,header:-1'
"

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

nnoremap <silent> <C-p> :Files<CR>



let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let NERDTreeShowHidden=1
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

set updatetime=100


set guifont=hack_nerd_font:h21
let g:startify_custom_header = [
\ '  _______ ___  ___   ______  ___  ___ ',
\ '  |  ___| | |  | |  / _____| | | / /  ',
\ '  | |___  | |  | | / /       | |/ /   ',
\ '  | ____| | |  | | | |       |   /    ',
\ '  | |     | |__| | \ \_____  | |\ \   ',
\ '  |_|     \______/  \______| |_| \_\  ',
\ '',
\ '',
\ ]


let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''


let g:fzf_preview_window = ['right,50%', 'ctrl-/']

set autoread

" autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p
nnoremap <silent> <S-r> :normal R<CR>

set foldmethod=manual

set ttyfast
set lazyredraw


