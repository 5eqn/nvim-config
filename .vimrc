" set autoindent
" set cindent
" syntax on

filetype plugin indent on

hi Conceal ctermbg=none

" Color Scheme
" hi NeoTreeNormal guifg=#a7aab0 guibg=#232326
" hi NeoTreeNormalNC guifg=#a7aab0 guibg=#232326
" hi NeoTreeEndOfBuffer guifg=#232326 guibg=#232326
" hi MatchParen ctermbg=Red
" hi LineNrAbove ctermfg=DarkGray
" hi LineNrBelow ctermfg=DarkGray
" hi NormalFloat guibg=DarkGray guifg=none
" hi CocSemEnumMember ctermfg=LightBlue
" hi CocSemClass ctermfg=121
" hi CocSemModule ctermfg=121
" hi CocSemPostulate ctermfg=Blue
" hi Comment cterm=italic ctermfg=DarkGray
" hi Keyword ctermfg=Blue
" hi Statement ctermfg=Blue
" hi String ctermfg=DarkGreen
" hi Function cterm=none
" hi Identifier cterm=none ctermfg=Gray

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

" Clipboard
if $DISPLAY == ''
  let g:clipboard = {
        \   'name': 'termuxClip',
        \   'copy': {
        \      '+': ['termux-clip-setter'],
        \      '*': ['termux-clip-setter'],
        \    },
        \   'paste': {
        \      '+': ['termux-clip-getter'],
        \      '*': ['termux-clip-getter'],
        \   },
        \   'cache_enabled': 1,
        \ }
endif

" Copilot
" imap <silent><script><expr> <C-L> copilot#Accept("\<CR>")
" let g:copilot_no_tab_map = v:true

" Markdown
" nnoremap <space>u :execute '!md-upload -in ' . expand('%:p') . ' -url http://10.249.45.98:114/articles'<CR>
let g:markdown_recommended_style = 0
" let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_math = 1
" let g:vim_markdown_new_list_item_indent = 2
" nnoremap <C-s> <Plug>MarkdownPreview

" Fcitx
let g:fcitx5_remote='fcitx5-remote'

" Airline
let g:airline_theme="bubblegum"
let g:airline_powerline_fonts = 1

" Git Diff
nnoremap <Space>d :DiffviewOpen<CR>
nnoremap <Space>h :DiffviewFileHistory<CR>
nnoremap <Space>w :tabclose<CR>

" Git Blame
nnoremap <Space><CR> :GitBlameOpenCommitURL<CR>

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
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<F3>'

" Convenient commands
nnoremap <C-w><C-y> <C-w><C-w>vG$y<C-w><C-w>
nnoremap \/ :noh<Enter>

" Neo Tree
let g:neo_tree_remove_legacy_commands = 1
nnoremap <Space>f :Neotree float toggle<Enter>

" Terminal commands
tnoremap <C-[> <C-\><C-N>
tnoremap <C-]> <C-\><C-N>:q<CR>

" Select all
nnoremap <C-a> 0ggvG$

" Exit edit mode
inoremap <C-s> <Esc>

" nmap <silent> <C-c> <Plug>(coc-cursors-position)
" nmap <silent> <C-d> <Plug>(coc-cursors-word)
" xmap <silent> <C-d> <Plug>(coc-cursors-range)
" nmap <leader>x  <Plug>(coc-cursors-operator)
