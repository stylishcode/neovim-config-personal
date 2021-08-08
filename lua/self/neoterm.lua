vim.g.neoterm_default_mod = "vertical"
vim.g.neoterm_autoinsert   = true
vim.g.neoterm_autoscroll   = true
vim.g.neoterm_term_per_tab = true

vim.api.nvim_set_keymap("n", ";tt", ":Ttoggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", ";tt", "<c-\\><c-n>:Ttoggle<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", ";to", ":Tnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", ";to", "<c-\\><c-n>:Tnew<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", ";toh", ":botright Tnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", ";toh", "<c-\\><c-n>:botright Tnew<CR>", { noremap = true })

vim.api.nvim_set_keymap("t", ";te", "exit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", ";tc", ":TcloseAll!<CR>", { noremap = true })
vim.api.nvim_set_keymap("t", ";tc", "<c-\\><c-n>:TcloseAll!<CR>", { noremap = true })
