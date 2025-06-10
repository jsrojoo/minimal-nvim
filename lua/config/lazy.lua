require('lazy-bootstrap')

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  install = { colorscheme = { "warlock" } },
  checker = { enabled = true, notify = false },
  {
    rocks = {},
  }
})
