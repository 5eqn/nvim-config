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
au FileType rust nnoremap <Space>r :bot 8new<CR>:terminal cd `git rev-parse --show-toplevel` && cargo run<CR>:norm G<CR>

let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}
let g:airline_theme="bubblegum"
let g:airline_powerline_fonts = 1
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
let g:vimtex_mappings_disable = {
      \ 'i': [']]'],
      \}

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

nmap <C-w><C-y> <C-w><C-w>vG$y<C-w><C-w>
nmap \/ :noh<Enter>
nmap <Space>f :NvimTreeToggle<Enter>
nmap <Space>- :NvimTreeCollapse<Enter>

" nmap <silent> <C-c> <Plug>(coc-cursors-position)
" nmap <silent> <C-d> <Plug>(coc-cursors-word)
" xmap <silent> <C-d> <Plug>(coc-cursors-range)
" nmap <leader>x  <Plug>(coc-cursors-operator)

" nnoremap <silent> <leader>f :Format<CR>
" nnoremap <silent> <leader>F :FormatWrite<CR>

" Markdown Preview

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
let g:mkdp_theme = 'light'
