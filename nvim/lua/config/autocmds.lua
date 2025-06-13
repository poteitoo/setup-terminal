local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight on yank
autocmd("TextYankPost", {
  group = augroup("YankHighlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

-- Remove whitespace on save
autocmd("BufWritePre", {
  group = augroup("RemoveWhitespace", { clear = true }),
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

-- Disable auto comment on new line
autocmd("BufEnter", {
  group = augroup("DisableAutoComment", { clear = true }),
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- Auto resize splits
autocmd("VimResized", {
  group = augroup("AutoResize", { clear = true }),
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- Go to last location when opening a buffer
autocmd("BufReadPost", {
  group = augroup("LastLocation", { clear = true }),
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Check if file changed outside of vim
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("CheckTime", { clear = true }),
  command = "checktime",
})