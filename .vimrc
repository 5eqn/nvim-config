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
au FileType c,cpp nnoremap <BS> ^i/* REQUIRED */ <ESC>
au FileType markdown nnoremap <BS> $a~~<ESC>^i~~<ESC>
au FileType markdown nnoremap <C-s> <Plug>MarkdownPreview
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

" UltiSnips
let g:UltiSnipsExpandTrigger = '<F1>'
let g:UltiSnipsJumpForwardTrigger = '<F2>'
let g:UltiSnipsJumpBackwardTrigger = '<F3>'

nnoremap <C-w><C-y> <C-w><C-w>vG$y<C-w><C-w>
nnoremap \/ :noh<Enter>

" NvimTree
nnoremap <Space>f :NvimTreeToggle<Enter>
nnoremap <Space>- :NvimTreeCollapse<Enter>

" Terminal commands
tnoremap <C-[> <C-\><C-N>
tnoremap <C-]> <C-\><C-N>:q<CR>

" nmap <silent> <C-c> <Plug>(coc-cursors-position)
" nmap <silent> <C-d> <Plug>(coc-cursors-word)
" xmap <silent> <C-d> <Plug>(coc-cursors-range)
" nmap <leader>x  <Plug>(coc-cursors-operator)
