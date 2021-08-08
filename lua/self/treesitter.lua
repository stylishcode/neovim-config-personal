require 'nvim-treesitter.configs'.setup {
  hightlight = {
    enable = true,
    disable = { "c", "rust" }
  },
  ensure_installed = "all"
}
