return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sqlfluff" },
        pgsql = { "sqlfluff" },
        sqloracle = { "sqlfluff" },
      },
      formatters = {
        sqlfluff = {
          command = "sqlfluff",
          args = { "format", "--dialect=postgres", "-" },
          stdin = true,
          cwd = function()
            return vim.fn.getcwd()
          end,
        },
      },
    },
  },
}
