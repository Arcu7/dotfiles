-- Misc plugins that don't fit into any other category
return {
  -- Cellular Automaton plugin for fun
  {
    "eandrju/cellular-automaton.nvim",
    lazy = true,
    keys = {
      { "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "Make it rain!" },
    },
  },

  -- nvchad volt and minty (color picker)
  {
    "nvchad/volt",
    lazy = true,
  },
  {
    "nvchad/minty",
    lazy = true,
    keys = {
      {
        "<C-t>",
        function()
          require("minty.huefy").open()
        end,
        desc = "Toggle minty huefy",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "ellisonleao/dotenv.nvim",
    opts = {
      enable_on_load = false,
      verbose = true,
    },
  },
}
