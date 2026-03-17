require("nvchad.configs.lspconfig").defaults()

local servers = { "ts_ls", "html", "cssls" }

-- Configure ts_ls to handle JSX/TSX
vim.lsp.config.ts_ls = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { 
    "javascript", 
    "javascriptreact", 
    "typescript", 
    "typescriptreact" 
  },
  root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
}

vim.lsp.enable(servers)
