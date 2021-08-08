local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

local packer = require("packer")
local use = require("packer").use
return require("packer").startup(function()
    -- Strictly required
    use "wbthomason/packer.nvim"                  -- let packer manage itself
    use "nvim-lua/popup.nvim"                     -- popup windows
    use "nvim-lua/plenary.nvim"                   -- utility functions
    use "nvim-telescope/telescope.nvim"           -- Find, filter, preview files
    use "tpope/vim-commentary"                    -- toggle comments
    use "junegunn/fzf"                            -- fuzzy finder
    use "kassio/neoterm"                          -- terminal integrated
    use "szw/vim-maximizer"                       -- Maximize/Resize window
    use "christianchiarulli/nvcode-color-schemes.vim"
    use {'neoclide/coc.nvim', branch = 'release'} -- Intellisense 
    use { "cohama/lexima.vim",                    -- Auto pairs
      config = function ()
      vim.g.lexima_no_default_rules = true
      vim.fn['lexima#set_default_rules']()
      end
    }
    use {
      'kyazdani42/nvim-tree.lua',                -- explorer
      requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
      "lewis6991/gitsigns.nvim",                 -- git signs in gutter + some useful keymaps
      config = function()
        require'gitsigns'.setup({
          current_line_blame = false,
          current_line_blame_delay = 1000,
          update_debounce = 200,
          numhl = true,
        })
      end,
    }
    use {
      "hoob3rt/lualine.nvim",                    -- statusline in lua
       requires = {
        "kyazdani42/nvim-web-devicons",
        opt = true
      },
    }
    use {
      "nvim-treesitter/nvim-treesitter",         -- treesitter
      run = ":TSUpdate",
    }
    use "tpope/vim-fugitive"                     -- git integration
    -- " don't need configurations, just install them
    use "sheerun/vim-polyglot"
    use "mattn/emmet-vim"
    use "ap/vim-css-color"
    use "styled-components/vim-styled-components"
    use "jparise/vim-graphql"
    use "hail2u/vim-css3-syntax"
  end
)
-- NOTE
-- If :h <plugin> does not work, run :helptags ALL to add them
