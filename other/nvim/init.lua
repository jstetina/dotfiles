require("config.core")
require("config.lazy")

-- Set shift width based on file type
vim.api.nvim_create_augroup("FileTypeShiftWidth", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  command = "setlocal shiftwidth=4",
  group = "FileTypeShiftWidth",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript,typescript,javascriptreact,typescriptreact",
  command = "setlocal shiftwidth=2",
  group = "FileTypeShiftWidth",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  command = "setlocal shiftwidth=2",
  group = "FileTypeShiftWidth",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html,css,scss",
  command = "setlocal shiftwidth=2",
  group = "FileTypeShiftWidth",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  command = "setlocal shiftwidth=4",
  group = "FileTypeShiftWidth",
})
