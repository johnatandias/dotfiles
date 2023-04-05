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
opt.spelllang = { "en", "pt_br" }

-- Abbreviations
vim.cmd([[
cnoreabbrev W! w!
cnoreabbrev Wa! wa!
cnoreabbrev Wa wa
cnoreabbrev Wq! wq!
cnoreabbrev Wq wq
cnoreabbrev Qa qa
cnoreabbrev Qa! qa!
cnoreabbrev X x
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev E e
]])

-- General
lvim.log.level = "warn"
lvim.format_on_save = { timeout = 10000 }
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "onedarker"
lvim.leader = "space"
lvim.transparent_window = true

-- Configure builtin plugins
lvim.builtin.alpha.format_on_save = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.dashboard.section.header.val = {
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "                                        ▟▙            ",
  "                                        ▝▘            ",
  "██▃▅▇█▆▖  ▗▟████▙▖   ▄████▄   ██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖",
  "██▛▔ ▝██  ██▄▄▄▄██  ██▛▔▔▜██  ▝██  ██▘  ██  ██▛▜██▛▜██",
  "██    ██  ██▀▀▀▀▀▘  ██▖  ▗██   ▜█▙▟█▛   ██  ██  ██  ██",
  "██    ██  ▜█▙▄▄▄▟▊  ▀██▙▟██▀   ▝████▘   ██  ██  ██  ██",
  "▀▀    ▀▀   ▝▀▀▀▀▀     ▀▀▀▀       ▀▀     ▀▀  ▀▀  ▀▀  ▀▀",
}
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Keys mappings
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.api.nvim_set_keymap("i", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("i", "<C-p>", "<Plug>luasnip-prev-choice", {})
vim.api.nvim_set_keymap("s", "<C-p>", "<Plug>luasnip-prev-choice", {})

-- TroubleToggle
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- Refactoring
lvim.lsp.buffer_mappings.normal_mode["<leader>rb"] = {
  "<Cmd>lua require('refactoring').refactor('Extract Block')<CR>",
  "Extract Block",
}

lvim.lsp.buffer_mappings.normal_mode["<leader>rbf"] = {
  "<Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>",
  "Extract Block To File",
}

lvim.lsp.buffer_mappings.normal_mode["<leader>ri"] = {
  "<Cmd>lua require('refactoring').refactor('Inline Variable')<CR>",
  "Inline Variable",
}

lvim.lsp.buffer_mappings.visual_mode["<leader>re"] = {
  "<Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>",
  "Extract Function",
}

lvim.lsp.buffer_mappings.visual_mode["<leader>rf"] = {
  "<Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>",
  "Extract Function To File",
}

lvim.lsp.buffer_mappings.visual_mode["<leader>rv"] = {
  "<Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>",
  "Extract Variable",
}

lvim.lsp.buffer_mappings.visual_mode["<leader>ri"] = {
  "<Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>",
  "Inline Variable",
}

-- Nvim Tree
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.filters.custom = { "\\.cache" }
lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true

-- Telescope
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git" }
lvim.builtin.telescope.defaults.vimgrep_arguments = {
  "rg",
  "--color=never",
  "--no-heading",
  "--with-filename",
  "--line-number",
  "--column",
  "--smart-case",
  "--hidden",
  "--glob=!.git/",
}

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
  "help",
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
    command = "eslint_d",
    filetypes = jsFileTypes,
  },
  {
    command = "black",
    filetypes = { "python" }
  },
  {
    command = "isort",
    filetypes = { "python" }
  },
}

-- Linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    filetypes = jsFileTypes,
  },
  {
    command = "flake8",
    filetypes = { "python" }
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    command = "proselint",
    args = { "--json" },
  },
  {
    command = "refactoring"
  },
  {
    command = "shellcheck"
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
  {
    "editorconfig/editorconfig-vim"
  },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter-refactor",
    require 'nvim-treesitter.configs'.setup {
      refactor = {
        smart_rename = {
          enable = true,
          keymaps = {
            smart_rename = "grr",
          },
        },
      },
      highlight_current_scope = {
        enable = true,
      },
    }
  },
  {
    "sindrets/diffview.nvim",
    dependencies = 'nvim-lua/plenary.nvim'
  },
  {
    "f-person/git-blame.nvim",
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "styled-components/vim-styled-components",
  }
}

-- Functions
vim.cmd [[
function! UnMinify()
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction
command! UnMinify call UnMinify()
]]
