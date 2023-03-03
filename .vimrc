" filetype on
" set autoindent
" set cindent
" syntax on

filetype plugin indent on
syntax on

hi CocCursorRange ctermbg=Blue ctermfg=Black
hi Conceal ctermbg=none
hi MatchParen ctermbg=Red
hi LineNrAbove ctermfg=DarkGray
hi LineNrBelow ctermfg=DarkGray
hi CocInlayHint ctermfg=DarkGray ctermbg=none
hi NormalFloat guibg=none guifg=none

set relativenumber
set number
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set pastetoggle=<F9>
set clipboard+=unnamedplus
set completeopt=menu,menuone,noselect
set so=11
set conceallevel=1
set maxmempattern=8192
set signcolumn=no

au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au FileType * nnoremap <Space>r :RunCode<CR>
au FileType dart nnoremap <Space>r :CocCommand flutter.run<CR>
au FileType dart nnoremap <Space>d :CocList FlutterDevices<CR>

" Airline
let g:airline_theme="bubblegum"
let g:airline_powerline_fonts = 1

" Vimtex
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
let g:vimtex_mappings_disable = {
      \ 'i': [']]'],
      \}

" Vim Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

" UltiSnips
let g:UltiSnipsExpandTrigger = '<F1>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<F3>'

" Copilot
imap <silent><script><expr> <C-L> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" Convenient commands
nnoremap <C-w><C-y> <C-w><C-w>vG$y<C-w><C-w>
nnoremap \/ :noh<Enter>

" NvimTree
nnoremap <Space>/ :NvimTreeToggle<Enter>
nnoremap <Space>- :NvimTreeCollapse<Enter>

" Terminal commands
tnoremap <C-[> <C-\><C-N>
tnoremap <C-]> <C-\><C-N>:q<CR>

" nmap <silent> <C-c> <Plug>(coc-cursors-position)
" nmap <silent> <C-d> <Plug>(coc-cursors-word)
" xmap <silent> <C-d> <Plug>(coc-cursors-range)
" nmap <leader>x  <Plug>(coc-cursors-operator)
