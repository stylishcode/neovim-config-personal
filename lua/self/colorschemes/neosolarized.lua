vim.cmd([[
" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

]])

local set = vim.opt

-- NeoSolarized
   set.termguicolors=true
   set.winblend=0
   set.wildoptions="pum"
   set.pumblend=5
-- Use NeoSolarized
vim.g["neosolarized_termtrans"]=1
vim.cmd([[
    runtime ../../colors/NeoSolarized.vim
    colorscheme NeoSolarized
]])
