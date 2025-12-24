return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsgo = {},
        vtsls = { enabled = false },
        ts_ls = { enabled = false }, -- older name for tsserver
      },
    },
  },
}
