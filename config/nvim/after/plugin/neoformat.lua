-- use pjon local prettier
vim.g.neoformat_try_node_exe = 1

-- local fmtGrp = vim.api.nvim_create_augroup("fmt", { clear = true })
-- vim.api.nvim_create_autocmd(
--   {"BufWritePre"},
--   {
--     pattern = "*.js,*.ts,*.jsx,*.tsx",
--     command = "Neoformat",
--     group = fmtGrp
--   }
-- )


--  Lua function to check and run the appropriate formatter
function FormatCode()
  -- neoformat if we can on ctrl+f
  if vim.fn.exists(':Neoformat') == 2 then
    vim.cmd('Neoformat')
  else
    vim.lsp.buf.format()
  end
end

-- Bind the function to a keymap
--  nnoremap <silent> <C-l> :call FormatCode()<CR> 
vim.keymap.set("n", "<leader>f", FormatCode)
