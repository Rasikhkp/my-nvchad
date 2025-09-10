require "nvchad.mappings"

local map = vim.keymap.set

-- ==============================
-- General Keymaps
-- ==============================
map("n", ";", ":", { desc = "Enter command mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

-- ==============================
-- Buffer Management
-- ==============================
map("n", "<leader>Q", ":%bd|e#<CR>", { desc = "Close all buffers except current" })

-- ==============================
-- LSP & Diagnostics
-- ==============================
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover (show type/docs)" })
map("n", "<leader>ds", vim.diagnostic.open_float, { desc = "Show diagnostic under cursor" })

-- ==============================
-- Project / Workspace
-- ==============================
map("n", "<leader>fp", "<cmd>Telescope workspaces<CR>", { desc = "Switch project/workspace" })

-- ==============================
-- Spectre (Search & Replace)
-- ==============================
map("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
map(
  "n",
  "<leader>sw",
  '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
  { desc = "Search current word" }
)
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search selection" })
map(
  "n",
  "<leader>sp",
  '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
  { desc = "Search in current file" }
)

-- ==============================
-- Neo-tree (Floating Explorer)
-- ==============================
map("n", "<leader>e", "<cmd>Neotree toggle float<CR>", { desc = "Toggle floating file explorer" })
map("n", "<leader>re", "<cmd>Neotree reveal float<CR>", { desc = "Toggle floating file explorer" })
map("n", "<leader>gf", "<cmd>Neotree float git_status<CR>", { desc = "Open git status (floating)" })

-- ==============================
-- Harpoon 2
-- ==============================
local harpoon = require "harpoon"

map("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Harpoon add file" })

-- Toggle Harpoon quick menu (floating)
map("n", "<leader>h", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon menu" })

-- Jump to files 1–4
map("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon to file 1" })

map("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon to file 2" })

map("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon to file 3" })

map("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon to file 4" })
