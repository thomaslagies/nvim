local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "bash",
    "css",
    "graphql",
    "html",
    "javascript",
    "json",
    "less",
    "markdown",
    "scss",
    "sh",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
