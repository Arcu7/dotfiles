return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  dependencies = { "amansingh-afk/milli.nvim" },
  -- TODO: This is not working correctly rn when using 'nvim .' (run with explorer) so need to fix
  opts = function(_, opts)
    local milli = require("milli")
    local splash = milli.load({ splash = "lapipi" })

    milli.snacks({ splash = "lapipi", loop = true })

    opts.dashboard = vim.tbl_deep_extend("force", opts.dashboard or {}, {
      enabled = true,
      preset = {
        header = table.concat(splash.frames[1], "\n"),
      },
      sections = {
        { section = "header", padding = 1 },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    })
  end,
}
