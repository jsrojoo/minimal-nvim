vim.lsp.config("basedpyright", {
  cmd = { "basedpyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { ".git", "pyproject.toml", "setup.cfg", "setup.py", "requirements.txt" },
  offset_encoding = "utf-16",
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})

vim.lsp.config("ruff", {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = { ".git", "pyproject.toml", "setup.cfg", "setup.py", "requirements.txt" },
  offset_encoding = "utf-16",
})

vim.lsp.enable({ "basedpyright", "ruff" })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf, silent = true }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "grr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "gri", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "grt", vim.lsp.buf.type_definition, opts)
    vim.keymap.set("n", "grn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "gra", vim.lsp.buf.code_action, opts)
  end,
})
