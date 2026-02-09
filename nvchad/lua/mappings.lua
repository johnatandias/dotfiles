require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" })

-- CodeCompanion
-- map("n", "<leader>cc", "<cmd>CodeCompanionChat Toggle<CR>", { desc = "Toggle AI Chat" })
-- map("v", "<leader>cc", "<cmd>CodeCompanionChat Toggle<CR>", { desc = "Toggle AI Chat with selection" })
-- map("n", "<leader>ca", "<cmd>CodeCompanionActions<CR>", { desc = "AI Actions" })
-- map("v", "<leader>ca", "<cmd>CodeCompanionActions<CR>", { desc = "AI Actions on selection" })
-- map("n", "<leader>ci", "<cmd>CodeCompanion<CR>", { desc = "Inline AI Assistant" })
-- map("v", "<leader>ci", "<cmd>CodeCompanion<CR>", { desc = "Inline AI Assistant" })

-- MCPHub
map("n", "<leader>mh", "<cmd>MCPHub<CR>", { desc = "Open MCP Hub" })
map("n", "<leader>ms", "<cmd>MCPServers<CR>", { desc = "List MCP Servers" })
map("n", "<leader>mt", "<cmd>MCPTools<CR>", { desc = "List MCP Tools" })

-- Smear Cursor
map("n", "<leader>cs", "<cmd>SmearCursorToggle<CR>", { desc = "Toggle Smear Cursor" })

-- Markdown Preview
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown Preview" })
map("n", "<leader>md", "<cmd>MarkdownPreview<CR>", { desc = "Start Markdown Preview" })
map("n", "<leader>mx", "<cmd>MarkdownPreviewStop<CR>", { desc = "Stop Markdown Preview" })

-- LazyGit
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })
map("n", "<leader>gf", "<cmd>LazyGitCurrentFile<CR>", { desc = "LazyGit Current File" })
map("n", "<leader>gl", "<cmd>LazyGitFilter<CR>", { desc = "LazyGit Commits" })
map("n", "<leader>gt", "<cmd>Telescope lazygit<CR>", { desc = "Telescope LazyGit" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
