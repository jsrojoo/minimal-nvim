return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  config = function()
    vim.cmd([[
    function OpenMarkdownPreview (url)
      execute "silent ! open -a /Users/josephrojo/Desktop/Apps/Arc.app/Contents/MacOS/Arc " . a:url
      endfunction

      let g:mkdp_browserfunc = 'OpenMarkdownPreview'
      ]])
    end
  }
