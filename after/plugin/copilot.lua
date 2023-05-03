-- disable copilot for xml files
vim.g.copilot_filetypes = { xml = false, markdown = true }
vim.g.copilot_autocomplete = 1

vim.cmd[[imap <silent><expr> <C-a> copilot#Accept("\<CR>")]]
vim.cmd[[highlight CopilotSelected ctermfg=0 ctermbg=Yellow]]

-- vim.cmd cycle through copilot suggestions
vim.cmd[[imap <silent><expr> <C-n> copilot#Next()]]

-- vim.cmd disable in json
vim.cmd[[autocmd FileType json let b:copilot_enabled = 0]]

