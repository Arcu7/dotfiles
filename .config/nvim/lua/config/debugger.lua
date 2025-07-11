-- local dap = require("dap")
--
-- dap.adapters.delve = function(callback, config)
--   if config.mode == "remote" and config.request == "attach" then
--     callback({
--       type = "server",
--       host = config.host or "127.0.0.1",
--       port = config.port or "38697",
--     })
--   else
--     callback({
--       type = "server",
--       port = "${port}",
--       executable = {
--         command = "dlv",
--         args = { "dap", "-l", "127.0.0.1:${port}", "--log", "--log-output=dap" },
--         detached = vim.fn.has("win32") == 0,
--       },
--     })
--   end
-- end
--
-- dap.configurations.go = {
--   {
--     type = "delve",
--     name = "Debug with env",
--     request = "launch",
--     program = "${file}",
--     env = {
--       GOPRIVATE = "gitlab.banksinarmas.com",
--       DATABASE_USER = "bpr_dev",
--       DATABASE_PASS = "Bpr_dev123",
--       REDIS_PASS = "simaS123",
--       LDAP_PASS = "P3anut!@",
--       LDAP_BIND = "spmdev",
--       LOGIN_SECRET_KEY = "RUIzVjJXUyhjMjd1SVAmdA--",
--       S3_ACCESS_KEY = "w3BzW10RYbPshaq7pKcCXeoj9INciT4i",
--       S3_SECRET_KEY = "N0REwJx2DezJmKYI92LY3GfTXL3o9dr1",
--     },
--   },
-- }
