vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

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

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
