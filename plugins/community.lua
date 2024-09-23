return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Themes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  -- Plugins
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require('copilot').setup({
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            -- CR : Enter Key
            -- M : Meta (ALT)
            -- C : Control
            -- S : Shift
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<M-m>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          -- rust = true,
          -- vue = true,
          javascript = true,
          typescript = true,
          ruby = true,
          -- go = true,
          -- yaml = false,
          markdown = false,
          -- help = false,
          -- gitcommit = false,
          -- gitrebase = false,
          -- hgcommit = false,
          -- svn = false,
          -- cvs = false,
          -- ["."] = false,
        },
        -- copilot_node_command = 'node', -- Node.js version must be > 18.x
        copilot_node_command = vim.fn.expand("$HOME") .. "/.nodenv/versions/18.19.0/bin/node",
        server_opts_overrides = {},
      })
    end,
  },
  { import = "astrocommunity.pack.typescript" },
}
