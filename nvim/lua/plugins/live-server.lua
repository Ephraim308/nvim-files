return {
  "ngtuonghy/live-server-nvim",
  event = "VeryLazy",
  build = ":LiveServerInstall",
  config = function()
    -- Set up live-server-nvim with custom settings
    require("live-server-nvim").setup {
      custom = {
        "--port=8080",              -- Specify the port
        "--no-css-inject",          -- Disable CSS injection
      },
      serverPath = vim.fn.stdpath("data") .. "/live-server/",  -- Default path for live-server
      open = "folder",             -- Set to "folder" or "cwd"
    }
  end,
}

