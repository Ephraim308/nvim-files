return {
  {
    "ThePrimeagen/harpoon",
    requires = {"nvim-lua/plenary.nvim"},
    config = function()
      local harpoon = require("harpoon")

      -- Key mappings for Harpoon
      vim.api.nvim_set_keymap("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>hm", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true, silent = true })
    end,
  },
}

