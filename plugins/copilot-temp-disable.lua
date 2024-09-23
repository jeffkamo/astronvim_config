return {
  -- { 'zbirenbaum/copilot.lua',
  --   config = function()
  --     vim.defer_fn(function()
  --       require('copilot').setup {
  --         panel = { enabled = true, },
  --         ft_disable = { "markdown" },
  --         copilot_node_command = vim.fn.expand("$HOME") .. "/.nodenv/versions/18.19.0/bin/node",
  --         -- plugin_manager_path = vim.fn.stdpath("data") .. "/site/pack/packer",
  --         server_opts_overrides = {},
  --       }
  --     end, 100)
  --   end,
  -- },
  -- { 'zbirenbaum/copilot-cmp', after = 'copilot.lua' }
  --
  -- I tried moving my configs to the community file. That seems to have worked better.
  -- See `dotfiles/.config/nvim/lua/user/plugins/community.lua`
}
