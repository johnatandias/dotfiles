require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Ensure tsx and jsx files are recognized
vim.filetype.add({
  extension = {
    tsx = "typescriptreact",
    jsx = "javascriptreact",
  },
})

-- Auto-detect JSX in .js files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.js",
  callback = function()
    local content = table.concat(vim.api.nvim_buf_get_lines(0, 0, 50, false), "\n")
    if content:match("<%s*[A-Z]") or content:match("<%s*/") or content:match("import.*[Rr]eact") then
      vim.bo.filetype = "javascriptreact"
    end
  end,
})

-- Force jsx filetype for .jsx files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.jsx",
  callback = function()
    vim.bo.filetype = "javascriptreact"
  end,
})

-- Force tsx filetype for .tsx files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.tsx",
  callback = function()
    vim.bo.filetype = "typescriptreact"
  end,
})

-- Enable treesitter highlighting after buffer load
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
  callback = function()
    vim.cmd("setlocal syntax=on")
  end,
})
