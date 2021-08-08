local mode = {
  ["insert"] = "i",
  ["normal"] = "n",
  ["visual"] = "v",
}

function setKM(mode, key, cmd, opts)
  vim.api.nvim_set_keymap(mode, key, cmd, opts)
end

-- leader key
setKM(mode.normal, "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- disable arrow for normal mode (training for use hjkl)
setKM(mode.normal, "<Up>", "<Nop>", { noremap = true, silent = true })
setKM(mode.normal, "<Left>", "<Nop>", { noremap = true, silent = true })
setKM(mode.normal, "<Down>", "<Nop>", { noremap = true, silent = true })
setKM(mode.normal, "<Right>", "<Nop>", { noremap = true, silent = true })

-- disable arrow for visual mode (training for use hjkl)
setKM(mode.visual, "<Up>", "<Nop>", { noremap = true, silent = true })
setKM(mode.visual, "<Left>", "<Nop>", { noremap = true, silent = true })
setKM(mode.visual, "<Right>", "<Nop>", { noremap = true, silent = true })
setKM(mode.visual, "<Down>", "<Nop>", { noremap = true, silent = true })

-- Use alt + kjlk to resize windows
setKM(mode.normal, "<A-j>", ": resize -2<CR>", { noremap = true, silent = true })
setKM(mode.normal, "<A-k>", ": resize +2<CR>", { noremap = true, silent = true })
setKM(mode.normal, "<A-h>", ": vertical resize -2<CR>", { noremap = true, silent = true })
setKM(mode.normal, "<A-l>", ": vertical resize +2<CR>", { noremap = true, silent = true })

-- I hate escape more than anything else
setKM(mode.insert, ";e", "<Esc>", { noremap = true, silent = true })
setKM(mode.insert, "jj", "<Esc>", { noremap = true, silent = true })

-- Alternate way to save
setKM(mode.normal, ";w", ":write<CR>", { noremap = true, silent = true })
-- Alternate way to quit
setKM(mode.normal, "q", ":quit<CR>", { noremap = true, silent = true })
-- Alternate way to force quit
setKM(mode.normal, ";qa", ":qa!<CR>", { noremap = true, silent = true })

-- Split panel
setKM(mode.normal, ";vs", ":vsplit<CR>", { noremap = true, silent = true })
setKM(mode.normal, ";hs", ":split<CR>", { noremap = true, silent = true })

-- Better tabbing
setKM(mode.visual, "<", "<gv", { noremap = true, silent = true })
setKM(mode.visual, ">", ">gv", { noremap = true, silent = true })

-- Better window navigation
setKM(mode.normal, "<C-h>", "<C-w>h", { noremap = true, silent = true })
setKM(mode.normal, "<C-j>", "<C-w>j", { noremap = true, silent = true })
setKM(mode.normal, "<C-k>", "<C-w>k", { noremap = true, silent = true })
setKM(mode.normal, "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Toggling
setKM(mode.normal, "<leader>N", ":setlocal relativenumber!<CR>", { noremap = true, silent = true })

-- Move select line / block of text in visual mode
setKM("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
setKM("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })
