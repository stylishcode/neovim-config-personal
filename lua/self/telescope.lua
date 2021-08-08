if not vim.fn.exists("g:loaded_telescope") then
  return
end

vim.api.nvim_set_keymap("n", ";ff", ":Telescope find_files<CR>", { noremap = true, silent = true  })
vim.api.nvim_set_keymap("n", ";fg", ":Telescope live_grep<CR>", { noremap = true, silent = true  })
vim.api.nvim_set_keymap("n", ";fb", ":Telescope buffers<CR>", { noremap = true, silent = true  })
vim.api.nvim_set_keymap("n", ";fh", ":Telescope help_tags<CR>", { noremap = true, silent = true  })

local actions = require("telescope.actions")
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
