require("codecompanion").setup({
  strategies = {
    chat = {
      adapter = "anthropic",
    },
    inline = {
      adapter = "anthropic",
    },
  },
  adapters = {
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        env = {
          api_key = "ANTHROPIC_API_KEY",
        },
      })
    end,
    openai = function()
      return require("codecompanion.adapters").extend("openai", {
        env = {
          api_key = "OPENAI_API_KEY",
        },
      })
    end,
  },
  display = {
    chat = {
      window = {
        layout = "vertical",
        width = 0.45,
      },
    },
    inline = {
      diff = {
        enabled = true,
      },
    },
  },
  opts = {
    log_level = "ERROR",
  },
})
