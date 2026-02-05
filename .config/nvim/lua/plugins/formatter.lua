return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "pg_format" },
        pgsql = { "pg_format" },
      },
      formatters = {
        pg_format = {},
      },
    },
  },
}
