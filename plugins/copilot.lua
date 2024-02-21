return {
  "github/copilot.vim",
  lazy = false,
  config = function()
    -- https://github.com/orgs/community/discussions/16800#discussioncomment-2848953
    vim.g.copilot_node_command = "~/.nodenv/versions/14.17.0/bin/node"
  end,
}
