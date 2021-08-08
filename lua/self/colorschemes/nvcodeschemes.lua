vim.cmd([[
let g:nvcode_termcolors=256
colorscheme nvcode " Or whatever colorscheme you make
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
]])
