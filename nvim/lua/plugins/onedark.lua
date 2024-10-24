return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    name = "onedark",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme onedark")
      -- Set background color to none for transparency
      vim.api.nvim_exec([[
        highlight Normal guibg=NONE ctermbg=NONE
        highlight NonText guibg=NONE ctermbg=NONE
        highlight LineNr guibg=NONE ctermbg=NONE
        highlight SignColumn guibg=NONE ctermbg=NONE
        highlight StatusLine guibg=NONE ctermbg=NONE
        highlight StatusLineNC guibg=NONE ctermbg=NONE
        highlight VertSplit guibg=NONE ctermbg=NONE
        highlight TabLine guibg=NONE ctermbg=NONE
        highlight TabLineFill guibg=NONE ctermbg=NONE
        highlight TabLineSel guibg=NONE ctermbg=NONE
        highlight Pmenu guibg=NONE ctermbg=NONE
        highlight PmenuSel guibg=NONE ctermbg=NONE
        highlight CursorLine guibg=NONE ctermbg=NONE
        highlight CursorLineNr guibg=NONE ctermbg=NONE
        highlight Folded guibg=NONE ctermbg=NONE
        highlight EndOfBuffer guibg=NONE ctermbg=NONE
        highlight WildMenu guibg=NONE ctermbg=NONE


        highlight NvimTreeNormal guibg=NONE ctermbg=NONE
        highlight NvimTreeFolderName guibg=NONE ctermbg=NONE
        highlight NvimTreeOpenedFolderName guibg=NONE ctermbg=NONE
        highlight NvimTreeIndentMarker guibg=NONE ctermbg=NONE

      ]], false)
      -- Uncomment to get transparency.
    end
  },
}

