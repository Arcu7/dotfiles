return {
  --Rose Pine colorsheme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        italic = false,
        transparency = false,
      },
    },
  },

  --Kanagawa paper colorscheme
  {
    "sho-87/kanagawa-paper.nvim",
    priority = 1000,
    opts = {
      {
        integrations = {
          wezterm = {
            enable = true,
            path = (os.getenv("TEMP") or "/tmp") .. "/nvim-theme",
          },
        },
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },

      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },

  --Kanso colorscheme
  {
    "webhooked/kanso.nvim",
    -- commit = "47074d1",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true,
      dimInactive = true,
      theme = "ink",
      background = {
        dark = "ink",
      },
    },
  },

  --Kanagawa (original) colorscheme
  {
    "rebelot/kanagawa.nvim",
    -- priority = 1000,
    opts = {
      theme = "dragon",
      background = {
        dark = "dragon",
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
      -- colorscheme = "kanagawa-paper",
    },
  },
}
