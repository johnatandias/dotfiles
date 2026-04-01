return {
  {
    "nvimdev/dashboard-nvim",
    lazy = false,
    opts = function()
      local logo = [[


                                        ▟▙
                                        ▝▘
██▃▅▇█▆▖  ▗▟████▙▖   ▄████▄   ██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖
██▛▔ ▝██  ██▄▄▄▄██  ██▛▔▔▜██  ▝██  ██▘  ██  ██▛▜██▛▜██
██    ██  ██▀▀▀▀▀▘  ██▖  ▗██   ▜█▙▟█▛   ██  ██  ██  ██
██    ██  ▜█▙▄▄▄▟▊  ▀██▙▟██▀   ▝████▘   ██  ██  ██  ██
▀▀    ▀▀   ▝▀▀▀▀▀     ▀▀▀▀       ▀▀     ▀▀  ▀▀  ▀▀  ▀▀
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          center = {
            { action = "Telescope find_files", desc = " Find File", icon = " ", key = "f" },
            { action = "ene | startinsert", desc = " New File", icon = " ", key = "n" },
            { action = "Telescope oldfiles", desc = " Recent Files", icon = " ", key = "r" },
            { action = "Telescope live_grep", desc = " Find Text", icon = " ", key = "g" },
            { action = "qa", desc = " Quit", icon = " ", key = "q" },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      return opts
    end,
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
        "eslint_d",
        "prettier",
        "jdtls",
        "java-debug-adapter",
        "java-test",
        "google-java-format",
      },
    },
  },

  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
    config = function()
      require "configs.jdtls"
    end,
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require("lint")
      
      lint.linters_by_ft = {
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      }

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })

      vim.keymap.set("n", "<leader>l", function()
        lint.try_lint()
      end, { desc = "Trigger linting for current file" })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "java",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        use_languagetree = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
    },
  },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {},
      default = true,
    },
  },

  {
    "nvim-lua/plenary.nvim",
    lazy = false,
  },

  {
    "ravitemer/mcphub.nvim",
    event = "VeryLazy",
    opts = {
      hub = {
        enabled = true,
        port = 3000,
      },
    },
  },

  -- {
  --   "olimorris/codecompanion.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     "ravitemer/mcphub.nvim",
  --   },
  --   cmd = {
  --     "CodeCompanion",
  --     "CodeCompanionChat",
  --     "CodeCompanionActions",
  --     "CodeCompanionToggle",
  --   },
  --   keys = {
  --     { "<leader>cc", mode = { "n", "v" } },
  --     { "<leader>ca", mode = { "n", "v" } },
  --     { "<leader>ci", mode = { "n", "v" } },
  --   },
  --   config = function()
  --     require "configs.codecompanion"
  --   end,
  -- },

  {
    "sphamba/smear-cursor.nvim",
    opts = {
      stiffness = 0.8,
      trailing_stiffness = 0.6,
      stiffness_insert_mode = 0.7,
      trailing_stiffness_insert_mode = 0.7,
      damping = 0.95,
      damping_insert_mode = 0.95,
      distance_stop_animating = 0.7,
      time_interval = 5,
      hide_target_hack = true,
    },
  },

  {
    "folke/sidekick.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      cli = {
        watch = true,
        mux = {
          backend = "tmux",
          enabled = true,
          create = "terminal",
        },
        win = {
          layout = "right",
          split = {
            width = 80,
          },
        },
        tools = {
          claude = {
            cmd = { "claude" },
          },
          cursor = {
            cmd = { "cursor-agent" },
          },
          codex = {
            cmd = { "codex", "--enable", "web_search_request" },
          },
        },
        prompts = {
          changes = "Can you review my changes?",
          diagnostics = "Can you help me fix the diagnostics in {file}?\n{diagnostics}",
          explain = "Explain {this}",
          fix = "Can you fix {this}?",
          optimize = "How can {this} be optimized?",
          review = "Can you review {file} for any issues or improvements?",
          tests = "Can you write tests for {this}?",
        },
      },
      nes = {
        enabled = true,
        debounce = 100,
      },
    },
    keys = {
      {
        "<Tab>",
        function()
          if not require("sidekick").nes_jump_or_apply() then
            return "<Tab>"
          end
        end,
        expr = true,
        mode = "n",
        desc = "Goto/Apply Next Edit Suggestion",
      },
      {
        "<C-a>",
        function()
          require("sidekick.cli").toggle()
        end,
        mode = { "n", "t", "i", "x" },
        desc = "Sidekick Toggle CLI",
      },
      {
        "<leader>aa",
        function()
          require("sidekick.cli").toggle()
        end,
        desc = "Sidekick Toggle CLI",
      },
      {
        "<leader>as",
        function()
          require("sidekick.cli").select()
        end,
        desc = "Select CLI Tool",
      },
      {
        "<leader>ac",
        function()
          require("sidekick.cli").toggle({ name = "claude", focus = true })
        end,
        desc = "Open Claude",
      },
      {
        "<leader>au",
        function()
          require("sidekick.cli").toggle({ name = "cursor", focus = true })
        end,
        desc = "Open Cursor Agent",
      },
      {
        "<leader>ax",
        function()
          require("sidekick.cli").toggle({ name = "codex", focus = true })
        end,
        desc = "Open Codex",
      },
      {
        "<leader>ap",
        function()
          require("sidekick.cli").prompt()
        end,
        mode = { "n", "x" },
        desc = "Select Prompt",
      },
      {
        "<leader>at",
        function()
          require("sidekick.cli").send({ msg = "{this}" })
        end,
        mode = { "x", "n" },
        desc = "Send This to CLI",
      },
      {
        "<leader>af",
        function()
          require("sidekick.cli").send({ msg = "{file}" })
        end,
        desc = "Send File to CLI",
      },
      {
        "<leader>av",
        function()
          require("sidekick.cli").send({ msg = "{selection}" })
        end,
        mode = { "x" },
        desc = "Send Selection to CLI",
      },
    },
  },

  -- {
  --   "rmagatti/goto-preview",
  --   dependencies = { "rmagatti/logger.nvim" },
  --   event = "BufEnter",
  --   opts = {
  --     width = 120,
  --     height = 15,
  --     default_mappings = false,
  --     focus_on_open = true,
  --     dismiss_on_move = false,
  --   },
  --   keys = {
  --     { "gpd", function() require("goto-preview").goto_preview_definition() end, desc = "Preview Definition" },
  --     { "gpt", function() require("goto-preview").goto_preview_type_definition() end, desc = "Preview Type Definition" },
  --     { "gpi", function() require("goto-preview").goto_preview_implementation() end, desc = "Preview Implementation" },
  --     { "gpD", function() require("goto-preview").goto_preview_declaration() end, desc = "Preview Declaration" },
  --     { "gpr", function() require("goto-preview").goto_preview_references() end, desc = "Preview References" },
  --     { "gP", function() require("goto-preview").close_all_win() end, desc = "Close All Previews" },
  --   },
  -- },

  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.spec = opts.spec or {}

      vim.list_extend(opts.spec, {
        { "<leader>a", group = "AI Agents" },
        { "<leader>c", group = "AI Chat" },
        { "<leader>g", group = "Git" },
        { "<leader>j", group = "Java" },
        { "<leader>m", group = "Markdown/MCP" },
        { "<leader>s", group = "Sessions" },
        { "gp", group = "Goto Preview" },
      })

      return opts
    end,
  },

  {
    "rmagatti/auto-session",
    lazy = false,
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      suppressed_dirs = { "~/", "~/Downloads", "/" },
      auto_save = true,
      auto_restore = false,
      auto_create = true,
      use_git_branch = false,
      session_lens = {
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    },
    keys = {
      {
        "<leader>ss",
        "<cmd>Telescope session-lens search_session<CR>",
        desc = "Search Sessions",
      },
      {
        "<leader>sr",
        "<cmd>SessionRestore<CR>",
        desc = "Restore Session",
      },
      {
        "<leader>sd",
        "<cmd>SessionDelete<CR>",
        desc = "Delete Session",
      },
      {
        "<leader>sw",
        "<cmd>SessionSave<CR>",
        desc = "Save Session",
      },
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    config = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_command_for_global = 0
      vim.g.mkdp_open_to_the_world = 0
      vim.g.mkdp_open_ip = ""
      vim.g.mkdp_browser = ""
      vim.g.mkdp_echo_preview_url = 0
      vim.g.mkdp_browserfunc = ""
      vim.g.mkdp_preview_options = {
        mkit = {},
        katex = {},
        uml = {},
        maid = {},
        disable_sync_scroll = 0,
        sync_scroll_type = "middle",
        hide_yaml_meta = 1,
        sequence_diagrams = {},
        flowchart_diagrams = {},
        content_editable = false,
        disable_filename = 0,
        toc = {},
      }
      vim.g.mkdp_markdown_css = ""
      vim.g.mkdp_highlight_css = ""
      vim.g.mkdp_port = ""
      vim.g.mkdp_page_title = "「${name}」"
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_theme = "dark"
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
      { "<leader>gf", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit Current File" },
      { "<leader>gl", "<cmd>LazyGitFilter<cr>", desc = "LazyGit Commits" },
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      notify = {
        enabled = false,
      },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- For blink.cmp
        },
      },
      ---@type NoicePresets
      presets = {
        lsp_doc_border = true,
      },
      ---@type NoiceRouteConfig[]
      routes = {
        -- Show recording messages as notify messsage
        -- https://github.com/folke/noice.nvim/wiki/Configuration-Recipes#show-recording-messages
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
      },
      ---@type NoiceConfigViews
      views = {
        cmdline_popup = {
          border = {
            style = "none",
            padding = { 1, 2 },
          },
          filter_options = {},
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  {
    "Bekaboo/dropbar.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    event = { "BufReadPost", "BufNewFile" },
    opts = {},
  },
}
