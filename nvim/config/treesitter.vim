lua << EOF
require'nvim-treesitter.configs'.setup {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT"
      }
    }
  },
  ensure_installed = "typescript",
  highlight = {
    enable = true,
    disable = { "c", "rust" },
  },
  refactor = {
    highlight_definitions = {
      enable = false
    },
    highlight_current_scope = {
      enable = false
    },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "<leader>grr",
      },
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "<leader>gnd",
        list_definitions = "<leader>gnD",
        list_definitions_toc = "<leader>gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
  },
}
EOF
