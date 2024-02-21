vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>n", ":bnext<CR>")
vim.keymap.set("n", "<leader>m", ":bprevious<CR>")

local function visual_fzf_search()
  local saved_reg = vim.fn.getreg('"')
  vim.cmd("normal! vgvy")
  local pattern = vim.fn.escape(vim.fn.getreg('"'), '\\/.*$^~[]')
  pattern = vim.fn.substitute(pattern, "\n$", "", "")
  pattern = vim.fn.substitute(pattern, "\n", "\\n", "g")
  vim.fn.setreg('"', saved_reg)
  vim.cmd(":Rg " .. pattern)
end

vim.keymap.set("v", "<leader>f", visual_fzf_search)
