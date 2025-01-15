return {
  -- Configure LazyVim theme and config
  {
    "LazyVim/LazyVim",
    -- opts = {
    --   colorscheme = "catppuccin",
    --   flavour = "macchiato", -- latte, frappe, macchiato, mocha
    -- },
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
  -- Disable window tabs
  -- {
  --   "akinsho/bufferline.nvim",
  --   opts = {
  --     options = {
  --       mode = "tabs",
  --     }
  --   }
  -- },

  -- Extra plugins
  {
    { import = "lazyvim.plugins.extras.ai.codeium" },
    { import = "lazyvim.plugins.extras.coding.mini-surround" },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "lazyvim.plugins.extras.ui.treesitter-context" },
  },
  -- Neotest
  {
    { import = "lazyvim.plugins.extras.test.core" },
    {
      "nvim-neotest/neotest",
      opts = {
        adapters = {
          "neotest-jest",
          "neotest-vitest",
        },
      },
      dependencies = {
        "haydenmeade/neotest-jest",
        "marilari88/neotest-vitest",
      },
      -- TODO: add patch from /home/sf51659/.local/share/nvim/lazy/neotest-jest/lua/neotest-jest/init.lua
    },
  },

  -- Language support
  {
    -- TS/JS
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.linting.eslint" },
    -- { import = "lazyvim.plugins.extras.formatting.biome" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    -- JSON
    { import = "lazyvim.plugins.extras.lang.json" },
    -- Vue
    -- { import = "lazyvim.plugins.extras.lang.vue" },
    -- YAML
    { import = "lazyvim.plugins.extras.lang.yaml" },
    -- Docker
    { import = "lazyvim.plugins.extras.lang.docker" },
    -- Markdown
    { import = "lazyvim.plugins.extras.lang.markdown" },
  },

  -- configure conform to only use specific formatter for JS/TS files
  {
    "stevearc/conform.nvim",
    opts = function()
      return {
        formatters = {
          -- biome = {
          --   prepend_args = {
          --     -- use spaces
          --     use_spaces = true,
          --   }
          -- },
        },
        formatters_by_ft = {
          -- biome setup
          -- javascript = { "biome" },
          -- typescript = { "biome" },
          -- typescriptreact = { "biome" },
          -- javascriptreact = { "biome" },
          -- vue = { "biome" },

          -- prettier
          javascript = { "prettierd" },
          typescript = { "prettierd" },
          -- typescriptreact = { "prettier" },
          -- javascriptreact = { "prettier" },
          -- vue = { "prettier" },
        },
      }
    end,
  },
  -- Commented: this was probably solved by conform configuration
  -- Make eslint behave properly with formatter (ignore vtsls)
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     -- servers = { eslint = {} },
  --     setup = {
  --       eslint = function()
  --         require("lazyvim.util").lsp.on_attach(function(client)
  --           if client.name == "eslint" then
  --             client.server_capabilities.documentFormattingProvider = true
  --             -- elseif client.name == "tsserver" or client.name == "vtsls" then
  --             --   client.server_capabilities.documentFormattingProvider = false
  --           end
  --         end)
  --       end,
  --     },
  --   },
  --   -- config = function()
  --   --   vim.lsp.set_log_level("debug")
  --   -- end,
  -- },
}
