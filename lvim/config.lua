-- Vim options
local opt = vim.opt
opt.relativenumber = true
opt.termguicolors = true
opt.encoding = "UTF8"
opt.fileencoding = "UTF8"
opt.fileencodings = "ucs-bom,utf8,latin1"
opt.autoindent = true
opt.smartindent = true
opt.copyindent = true
opt.clipboard = "unnamedplus"
opt.updatetime = 50
opt.ttyfast = true
opt.history = 1000
opt.wrap = true
opt.linebreak = true
opt.foldmethod = "syntax"
opt.foldcolumn = "1"
opt.foldlevelstart = 99
opt.shell = "/bin/zsh"
opt.guifont = "FiraCode Nerd Font Mono:h14"
opt.updatetime = 300
opt.spell = false
opt.spelllang = "en"

-- General
lvim.log.level = "warn"
lvim.format_on_save = { timeout = 10000 }
lvim.lint_on_save = true
lvim.colorscheme = "onedarker"
lvim.leader = "space"
lvim.transparent_window = true

-- Configure builtin plugins
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true

-- Keys mappings
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"

-- Nvim Tree
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.show_icons.git = 1

-- Telescope
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git", "node_modules" }

-- Lualine
lvim.builtin.lualine.sections.lualine_a = { 'mode' }

-- Treesitter
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

-- Formatters
local jsFileTypes = {
  "typescript",
  "typescriptreact",
  "javascript",
  "javascriptreact",
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "black"
  },
  {
    command = "eslint_d",
    filetypes = jsFileTypes,
  }
}

-- Linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "stylelint",
    filetypes = {
      "scss",
      "less",
      "css",
      "sass",
    },
    args = {
      "--fix", "--stdin",
    },
  },
  {
    command = "eslint_d",
    filetypes = jsFileTypes,
  },
  {
    command = "codespell",
    filetypes = jsFileTypes,
  },
}

-- Additional Plugins
lvim.plugins = {
  {
    "mg979/vim-visual-multi",
  },
  {
    "jiangmiao/auto-pairs",
  },
  {
    "p00f/nvim-ts-rainbow",
  },
}
