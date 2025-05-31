return {
  {
    "Weissle/persistent-breakpoints.nvim",
    lazy = false,
    event = "BufReadPost",
    opts = {
      always_reload = true,
      enable = true,
    },

    keys = {
      {
        "<leader>Bb",
        "<cmd>lua require('persistent-breakpoints.api').toggle_breakpoint()<cr>",
        desc = "Toggle breakpoint",
        noremap = true,
        silent = true,
      },
      {
        "<leader>Bc",
        "<cmd>lua require('persistent-breakpoints.api').clear_all_breakpoints()<cr>",
        desc = "Clear all breakpoint",
        noremap = true,
        silent = true,
      },
    },

    config = function(_, opts)
      require("persistent-breakpoints").setup(opts)
    end,
  },
}
