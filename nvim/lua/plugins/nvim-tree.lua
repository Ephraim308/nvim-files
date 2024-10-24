return {
    "nvim-tree/nvim-tree.lua",
    requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('nvim-tree').setup {
            view = {
                side = "right",  -- Open nvim-tree on the right side
            },
        }

        vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>bf", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

        local api = require('nvim-tree.api')
        local actions = require('telescope.actions')
        local action_state = require('telescope.actions.state')
        local builtin = require('telescope.builtin')

        
    end,
}

