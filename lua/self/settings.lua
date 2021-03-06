local set = vim.opt

set.clipboard          = 'unnamedplus'                                 -- Copy/paste between vim or anything else
set.cmdheight          = 2                                             -- More space for displaying messages
set.cursorline         = true                                          -- Enable highlightning of the current line
set.expandtab          = true                                          -- Convert tabs to space
set.formatoptions      = set.formatoptions - 'cro'                     -- Stop new line continuation of comments
vim.opt.foldmethod     = 'marker'                                      -- fold on {{{...}}} by default (overridden by treesitter when applicable)
vim.opt.foldlevel      = 0                                             -- allow folding the whole way down
vim.opt.foldlevelstart = 99                                            -- open files with all folds open
set.hidden             = true                                          -- Required to keep multiple buffers open
set.inccommand         = 'split'                                       -- live preview of :s results
set.laststatus         = 2                                             -- Always display the status line
set.number             = true                                          -- Line numbers
set.path               = set.path + '**'                               -- Finding files - Search down into subfolders
set.signcolumn         ='yes'                                          -- Always show the signcolumn, otherwise it would shift the text each time
set.shiftwidth         = 2                                             -- Change the number of space characters inserted for indentation
set.showmode           = true                                          -- We don't need to see things line -- INSERT -- anymore
set.showtabline        = 2                                             -- Always show tabs
set.shortmess          = set.shortmess + "c"                           -- Don't give |ins-completion-menu| messages.
set.smartindent        = true                                          -- Makes indenting smart
set.smarttab           = true                                          -- <tab>/<BS> indent/dedent in leading whitespace
set.splitbelow         = true                                          -- Horizontal splits will automatically be below
set.splitright         = true                                          -- Vertical splits will automatically be to the right
set.swapfile           = false                                         -- don't create swap files
set.tabstop            = 2                                             -- Insert 2 spaces for a tab
set.timeoutlen         = 500                                           -- Default is 1000ms
set.updatetime         = 300                                           -- Faster completion
set.wildignore         = set.wildignore + '*/node_modules/*'           -- Patterns to ignore during file-navigation
set.wrap               = false                                         -- Don't break lines
set.writebackup        = false                                         -- Don't keep backups after writing
