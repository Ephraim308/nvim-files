-- return {
--   {
--     "neovim/nvim-lspconfig",
--     dependencies = {
--       "hrsh7th/cmp-nvim-lsp",
--       "williamboman/mason.nvim",
--       "williamboman/mason-lspconfig.nvim",
--     },
--     config = function()
--       require("mason").setup()
--       require("mason-lspconfig").setup {
--         ensure_installed = { "cssls" }, -- Ensure cssls is installed
--       }
--
--       local capabilities = require("cmp_nvim_lsp").default_capabilities()
--
--       require("lspconfig").cssls.setup {
--         capabilities = capabilities,
--       }
--     end,
--   },
--   {
--     "L3MON4D3/LuaSnip",
--     dependencies = {
--       "saadparwaiz1/cmp_luasnip",
--       "rafamadriz/friendly-snippets",
--     },
--     config = function()
--       require("luasnip.loaders.from_vscode").lazy_load()
--     end,
--   },
--   {
--     "hrsh7th/nvim-cmp",
--     config = function()
--       local cmp = require("cmp")
--
--       cmp.setup({
--         snippet = {
--           expand = function(args)
--             require("luasnip").lsp_expand(args.body)
--           end,
--         },
--         window = {
--           completion = cmp.config.window.bordered(),
--           documentation = cmp.config.window.bordered(),
--         },
--         mapping = cmp.mapping.preset.insert({
--           ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--           ["<C-f>"] = cmp.mapping.scroll_docs(4),
--           ["<C-,>"] = cmp.mapping.complete(),
--           ["<C-e>"] = cmp.mapping.abort(),
--           ["<CR>"] = cmp.mapping.confirm({ select = true }),
--
--         }),
--         sources = cmp.config.sources({
--           { name = "nvim_lsp" },
--           { name = "luasnip" }, -- For luasnip users.
--         }, {
--           { name = "buffer" },
--         }),
--       })
--     end,
--   },
-- }



return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "cssls" }, -- Ensure cssls is installed
      }

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("lspconfig").cssls.setup {
        capabilities = capabilities,
      }
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })
    end,
  },
}

