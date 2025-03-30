" Settings ========================================================================================
syntax on
filetype plugin indent on
set encoding=utf-8	"Encoding must be UTF-8 on all files for YCM to work
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
set number
set number relativenumber
set nocompatible
set mouse=a
set clipboard+=unnamedplus
set noswapfile nobackup nowritebackup
set nohlsearch
set noshowmode
set timeout timeoutlen=200 ttimeoutlen=200

"set incsearch ignorecase
set is ignorecase
set expandtab
set laststatus=3

"Colors and vertical bar
if has('termguicolors')
	set termguicolors "true colors support
endif

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey
highlight Visual cterm=bold ctermbg=DarkRed ctermfg=NONE

set background=dark
highlight Comment ctermfg=green

" Currently not in use ----------------------------------------------------------------------------
"set formatoptions-=cro "Disable autocomment next line when hit <enter>

"set ai
"set ruler
"set hidden
"set hlsearch
"set autoindent
"set smartindent
"set noexpandtab
"set smartcase
"set title
"set bg=light
"set go=a
"set nohlsearch
"set noruler
"set statusline=%f "tail of the filename
"set noshowcmd
"set backup


" Pluggins ========================================================================================
call plug#begin('$HOME/.config/nvim/plugged')

" Colorschemes
Plug 'https://github.com/gryf/wombat256grf'
Plug 'https://github.com/arzg/vim-colors-xcode'
Plug 'macguirerintoul/night_owl_light.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'ayu-theme/ayu-vim'

Plug 'https://github.com/tomasr/molokai'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'morhetz/gruvbox'

" Syntax Highlighting
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/uiiaoo/java-syntax.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'elixir-editors/vim-elixir'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Add this line

" Indentation guides
"Plug 'nathanaelkane/vim-indent-guides'

" Finders
Plug 'https://github.com/junegunn/fzf'
Plug 'nvim-telescope/telescope.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nvim-lua/plenary.nvim'

" Autoformating
Plug 'stevearc/conform.nvim' 

" Commenting
Plug 'https://github.com/preservim/nerdcommenter' " comment line with quick keybinding

" Emmet
Plug 'mattn/emmet-vim'

"Others
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree' " file tree side panel
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'ap/vim-css-color'	 " highlights hex code with respective color
Plug 'https://github.com/dyng/ctrlsf.vim'

" Currently not in use ----------------------------------------------------------------------------
"Plug 'https://github.com/tomasiser/vim-code-dark'
"Plug 'https://github.com/atahabaki/archman-vim'
"Plug 'chriskempson/base16-vim' "base16
"Plug 'https://github.com/lifepillar/vim-solarized8'	"solarized
"Plug 'mattn/emmet-vim'
"Plug 'https://github.com/jiangmiao/auto-pairs'
"Plug 'tpope/vim-commentary'
"Plug 'https://github.com/chiel92/vim-autoformat'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Plug 'sheerun/vim-polyglot'	"not good
"Plug 'https://github.com/vim-python/python-syntax'
"Plug 'LukeSmithxyz/vimling'
"Plug 'https://github.com/honza/vim-snippets'
"Plug 'https://github.com/SirVer/ultisnips'
"Plug 'bling/vim-airline'
"Plug 'itchyny/lightline.vim'
call plug#end()


" Colorscheme settings ============================================================================
" Molokai colorscheme
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
"let g:molokai_transparent_background = 1

" Gruvbox colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

" Currently not in use ----------------------------------------------------------------------------
"let g:sonokai_style = 'default'
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
"let g:sonokai_transparent_background = 1
"colorscheme sonokai

"colorscheme onehalflight

"let ayucolor="light"	 " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"	 " for dark version of theme
"colorscheme ayu

"colorscheme night_owl_light

" Not used configutation
"colorscheme wombat256grf
"let g:wombat256grf_contrast_dark='hard'
"colorscheme default
"
"colorscheme peachpuff
"colorscheme xcodewwdc
"colorscheme delek
"colorscheme slate
"colorscheme morning
"colorscheme xcodedark
" The configuration options should be placed before `colorscheme sonokai`.
"colorscheme archman
"colorscheme base16-default-dark
"let base16colorspace=256	" Access colors present in 256 colorspace
"set termguicolors
"colorscheme solarized8

" Using Telescope ---------------------------------------------------------------------------------
nnoremap tt :Telescope live_grep<CR>

" Key Bingdings -----------------------------------------------------------------------------------
" Compile PDF in Latex
nnoremap <c-c> :make<CR>

" Quick Saving
nnoremap <c-p> :w<CR>

" Delete all comment lines and whitespaces
nnoremap <F25> :g/^\s*$/d<CR>	"C+F1
nnoremap <F30> :%s/\n//g<CR>	 "C+F6
nnoremap <F27> :%s/\/\/.*<CR>	"C+F3
nnoremap <F28> :%s/#.*<CR>		 "C+F4
nnoremap <F29> :%s/\/\*.*<CR>	"C+F5

" Tab mangement
nnoremap tn :tabnew<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tq :tabclose<CR>

" Commenting
inoremap <c-l> ----------
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" These other ones are not working for CTRL + /
vmap <c-/> <plug>NERDCommenterToggle
nmap <c-/> <plug>NERDCommenterToggle
"vmap <c-_> <plug>NERDCommenterToggle
"nmap <c-_> <plug>NERDCommenterToggle

" LUA: Custom script for formatting ----------------------------------------------------------------
lua require('keymaps') 

" Avoid overwriting register when pasting
xnoremap p pgvy

" Lauch FZF
nnoremap ff :FZF<CR>

" NERDTree shortcut
nnoremap nd :NERDTreeToggle<CR>
"nnoremap m :NERDTree<CR>

" Toggle AutoPairs
"nnoremap tp :call AutoPairsToggle()<CR>

" Removing line breaks from selection
xnoremap fl :s/\n//<CR>

" Replacing DOS linebreaks with Unix ones
"nnoremap mm :%s/\r/\r/g<CR>
nnoremap mm :%s/\r/\r/g<CR>

" Quick exit
nnoremap fq :wq<CR>

" Make o not exit normal mode
"nnoremap o o<Esc>

" Empty document content
nnoremap <Leader>d ggVGd

" Currently not in use ----------------------------------------------------------------------------
" Delete whole word with Ctrl+Backspace
" Map Ctrl-Backspace to delete the previous word in insert mode.
"noremap! <C-BS> <C-w>
"noremap! <C-h> <C-w>
"inoremap <C-w> <C-\><C-o>dB
"inoremap <C-BS> <C-\><C-o>db
inoremap <A-BS> <C-w>

" Custom Functions --------------------------------------------------------------------------------
function! RenameFile()
	let old_name = expand('%')
	let new_name = input('New file name: ', expand('%'), 'file')
	if new_name != '' && new_name != old_name
		exec ':saveas ' . new_name
		exec ':silent !rm ' . old_name
		redraw!
	endif
endfunction
map <C-F2> :call RenameFile()<cr>

" Currently not in use ----------------------------------------------------------------------------
" Remove special characters
"function! Remove_special()
"%s/á/a/g
"%s/é/e/g
"%s/í/i/g
"%s/ó/o/g
"%s/ú/u/g
"%s/ã/a/g
"%s/õ/o/g
"%s/ê/e/g
"%s/ô/o/g
"%s/ç/c/g
"%s/É/e/g
"%s/à/a/g
"%s/â/a/g
"endfunction
"nnoremap tr :call Remove_special()<CR>
"call Remove_special()

" Toggle transparent background
"let t:is_transparent = 0
"function! Toggle_transparent()
"if t:is_transparent == 0
"hi Normal guibg=NONE ctermbg=NONE
"let t:is_transparent = 1
"else
"highlight ColorColumn ctermbg=0 guibg=lightgrey
"set background=dark
"let t:is_transparent = 0
"let g:sonokai_transparent_background = 1
"endif
"endfunction
"nnoremap tt :call Toggle_transparent()<CR>
"call Toggle_transparent()

" Templates and Files Settings --------------------------------------------------------------------
autocmd BufNewFile main.c 0read ~/.config/nvim/templates/skeleton.c
autocmd bufnewfile main.cpp 0read ~/.config/nvim/templates/skeleton.cpp
autocmd bufnewfile main.cc 0read ~/.config/nvim/templates/skeleton.cc
"autocmd bufnewfile *.html 0read ~/.config/nvim/templates/skeleton.html
autocmd bufnewfile *.sh 0read ~/.config/nvim/templates/skeleton.sh
autocmd bufnewfile *.css 0read ~/.config/nvim/templates/skeleton.css

" New settings for .tex files
au BufEnter *.tex setf tex
au filetype tex set wrap linebreak

" New settings for .txt files
au BufEnter *.txt setf txt
au filetype txt set wrap linebreak

" New settings for .pgn files
au BufEnter *.pgn setf pgn
au filetype pgn set wrap linebreak

" New settings for .md files
autocmd FileType markdown setlocal wrap linebreak

" New settings for .html files
au BufEnter *.html setf html
au filetype html set wrap linebreak

" Coc Config ======================================================================================
" Some servers have issues with backup files, see #649.
"set nobackup
"set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#pum#next(1):
			\ CheckBackspace() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.

"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f	<Plug>(coc-format-selected)
nmap <leader>f	<Plug>(coc-format-selected)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder.
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a	<Plug>(coc-codeaction-selected)
nmap <leader>a	<Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac	<Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf	<Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl	<Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
	nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
	inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
	vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call		 CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR	 :call		 CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a	:<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e	:<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c	:<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o	:<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s	:<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j	:<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k	:<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p	:<C-u>CocListResume<CR>

" coc config
let g:coc_global_extensions = [
			\ 'coc-snippets',
			\ 'coc-pairs',
			\ 'coc-tsserver',
			\ 'coc-eslint',
			\ 'coc-prettier',
			\ 'coc-json',
			\ ]

" Toggling Coc
nnoremap cd :CocDisable<CR>
nnoremap ce :CocEnable<CR>

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.

" --- V V V --- UNCOMMENT THIS LINE --- V V V ---
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" --- ^ ^ ^ --- UNCOMMENT THIS LINE --- ^ ^ ^ ---


" --- V V V --- UNCOMMENT THIS LINE --- V V V ---
"inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

"function! CheckBackspace() abort
	"let col = col('.') - 1
	"return !col || getline('.')[col - 1]	=~# '\s'
"endfunction
" --- ^ ^ ^ --- UNCOMMENT THIS LINE --- ^ ^ ^ ---

" Other Plugin Options ============================================================================
" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" Js syntax
let g:javascript_plugin_jsdoc = 1

" Java syntax
highlight link javaIdentifier NONE
"highlight link javaDelimiter NONE

" Preetier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
command! -nargs=0 PrettierLog :CocCommand prettier.openOutput

" Enabling Cpp formating with astyle
"nnoremap <c-a> :%!astyle --mode=c -s2<CR>
"nnoremap <c-a> :%!astyle<CR>
"nnoremap <c-a> :%!astyle --mode=c --style=ansi -s2<CR>

" Currently not in use ----------------------------------------------------------------------------
" Vim Identation Guide
"let g:indent_guides_enable_on_vim_startup = 1

"Path to Eclipse LSP for ALE
"let g:ale_java_eclipselsp_path = '/usr/share/java/jdtls'
"let g:ale_java_eclipselsp_executable = '/usr/bin/jdtls'
"let g:ale_java_eclipselsp_config_path = '$HOME/.jdtls'

" Emmet keybinding modification
"let g:user_emmet_mode='i'
"let g:user_emmet_leader_key='<c-b>'
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"let g:user_emmet_mode='n'		"only enable normal mode functions.
"let g:user_emmet_mode='inv'	"enable all functions, which is equal to
"let g:user_emmet_mode='a'		"enable all function in all mode.

" Experimental settings for reading large markdown files-------------------------------------------
" Performance optimizations for large files
"augroup LargeFile
	"autocmd!
	"" Define what a "large file" is
	"autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > 1000000 || f == -2 | set eventignore+=FileType | setlocal syntax=off nofoldenable | else | set eventignore-=FileType | endif
"augroup END

" Vim Autoformater (no longer used) ---------------------------------------------------------------
"noremap <F3> :Autoformat<CR>
"au BufWrite * :Autoformat

"autocmd FileType vim,tex,md let b:autoformat_autoindent=0
"autocmd FileType vim,tex,md let b:autoformat_retab=0
"autocmd FileType vim,tex,md let b:autoformat_remove_trailing_spaces=0

" Specific optimizations for Markdown files
augroup MarkdownOptimize
	autocmd!
	" Disable certain features for large markdown files
	autocmd BufReadPre *.md let f=getfsize(expand("<afile>")) | if f > 50000 || f == -2 | setlocal syntax=off nocursorline nolist | endif
	" Enable faster syntax for all markdown files
	autocmd FileType markdown setlocal synmaxcol=128
	autocmd FileType markdown syntax sync minlines=50 maxlines=200
augroup END

" Vim-markdown plugin -----------------------------------------------------------------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" LUA: Treesitter ---------------------------------------------------------------------------------------
" IMPORTANT: Configuration MUST be done in Lua
lua require('treesitter')

" LUA: Concform -----------------------------------------------------------------------------------------
" IMPORTANT: Configuration MUST be done in Lua
lua require('conform-settings')

" Optional: Create a keymap for manual formatting (conform also provides :Format command)
nnoremap fm :Format<CR>
