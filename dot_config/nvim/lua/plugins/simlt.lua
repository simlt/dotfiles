return {
  -- Configure LazyVim theme and config
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
    },
    -- opts = function()
    --   -- Check if running in WSL
    --   local is_wsl = vim.fn.has("wsl") == 1
    --
    --   -- if is_wsl then
    --   --   -- Set clipboard provider to wsl-clipboard
    --   --   vim.g.clipboard = {
    --   --     name = "WslClipboard",
    --   --     copy = {
    --   --       ["+"] = "clip.exe",
    --   --       ["*"] = "clip.exe",
    --   --     },
    --   --     paste = {
    --   --       ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    --   --       ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    --   --     },
    --   --     cache_enabled = 0,
    --   --   }
    --   -- end
    --
    --   return {
    --     colorscheme = "catppuccin",
    --     flavour = "macchiato", -- latte, frappe, macchiato, mocha
    --   }
    -- end,
  },
  -- tokionight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  -- LazyVim overrides
  -- Disable autopairs
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },

  -- Extra plugins
  {
    { import = "lazyvim.plugins.extras.coding.mini-surround" },
    -- { import = "lazyvim.plugins.extras.coding.codeium" },
    { import = "lazyvim.plugins.extras.ui.treesitter-context" },
  },

  -- Language support
  {
    -- TS/JS
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.linting.eslint" },
    -- Vue
    { import = "lazyvim.plugins.extras.lang.vue" },
  },
}
