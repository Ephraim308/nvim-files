local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
require('plugins.nvim-tree')
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- this sets ctrl + w to save
vim.keymap.set('n', '<C-w>', '<cmd>wa<CR>')

-- sets ctrl + q to save and quit
vim.keymap.set('n', '<C-q>', '<cmd>wqa<CR>')



vim.o.scrolloff=7

if vim.g.vscode then
  -- VSCode extension
else

  -- ordinary Neovim
end

vim.opt.relativenumber = true  
vim.opt.termguicolors = true

------ header keybinds 
-- Define the function to insert <h1></h1> and place the cursor in between
local function insert_h1_tags()
  vim.api.nvim_command('normal! i<h1></h1><Esc>i')
end

-- Map <leader>h1 to call the function
vim.api.nvim_set_keymap('n', '<leader>h1', ':lua insert_h1_tags()<CR>', { noremap = true, silent = true })



vim.api.nvim_set_keymap('n', '<C-u>', 'u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-u>', 'u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-u>', '<C-o>u', { noremap = true, silent = true })



------
-- Remap hjkl to jkl; in normal mode
vim.api.nvim_set_keymap('n', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'l', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ';', 'l', { noremap = true, silent = true })

-- Remap hjkl to jkl; in visual mode
vim.api.nvim_set_keymap('v', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'l', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', ';', 'l', { noremap = true, silent = true })
------------------

---
-- Set leader key to space
vim.g.mapleader = " "

-- Function to open terminal
function OpenTerminal()
  -- Save the current window layout
  vim.g.previous_window = vim.api.nvim_get_current_win()
  -- Save the current buffer
  vim.g.previous_buffer = vim.api.nvim_get_current_buf()
  -- Open a terminal in a new vertical split on the right
  vim.cmd("rightbelow vsplit term://$SHELL")
  -- Switch to insert mode in the terminal
  vim.cmd("startinsert")
end

-- Function to close terminal and switch back to previous buffer
function CloseTerminal()
  -- Get the current window (assumed to be the terminal window)
  local current_win = vim.api.nvim_get_current_win()
  -- Check if we are in a terminal buffer and in insert mode
  if vim.fn.mode() == "i" and vim.bo.buftype == "terminal" then
    -- Close the terminal window
    vim.cmd("q")
    -- Switch back to the previous window and buffer
    if vim.g.previous_window and vim.g.previous_buffer then
      vim.api.nvim_set_current_win(vim.g.previous_window)
      vim.api.nvim_set_current_buf(vim.g.previous_buffer)
    end
    -- Unset the previous window and buffer variables
    vim.g.previous_window = nil
    vim.g.previous_buffer = nil
  end
end

-- Map <leader>fj to open terminal
vim.api.nvim_set_keymap("n", "<leader>fj", ":lua OpenTerminal()<CR>", { noremap = true, silent = true })

-- Map <leader>fh to close terminal and go back to previous buffer in insert mode of terminal
vim.api.nvim_set_keymap("t", "<leader>fh", "<C-\\><C-n>:lua CloseTerminal()<CR>", { noremap = true, silent = true })

---
---

require("vim-options")
require("lazy").setup("plugins")




