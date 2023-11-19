-- use pjon local prettier
vim.g.neoformat_try_node_exe = 1

local fmtGrp = vim.api.nvim_create_augroup("fmt", { clear = true })
vim.api.nvim_create_autocmd(
  {"BufWritePre"},
  {
    pattern = "*.js,*.ts,*.jsx,*.tsx",
    command = "Neoformat",
    group = fmtGrp
  }
)
