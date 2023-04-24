local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		bufnr = bufnr,
	})
end

null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint
  },
  on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					lsp_formatting(bufnr)
				end,
			})
      vim.api.nvim_create_autocmd("InsertLeave", {
        group = augroup,
        buffer = bufnr,
        callback = function()
					lsp_formatting(bufnr)
        end,
      })
		end
	end,
})
