require "nvchad.mappings"

local map = vim.keymap.set

-- =========================================================
-- GENERAL KEYMAPS
-- =========================================================
map("n", ";", ":", { desc = "Enter command mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

-- =========================================================
-- BUFFER MANAGEMENT
-- =========================================================
map("n", "<leader>Q", ":%bd|e#<CR>", { desc = "Close all buffers except current" })

-- =========================================================
-- LSP & DIAGNOSTICS
-- =========================================================
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover (show type/docs)" })
map("n", "<leader>ds", vim.diagnostic.open_float, { desc = "Show diagnostic under cursor" })

-- =========================================================
-- PROJECT / WORKSPACE
-- =========================================================
map("n", "<leader>fp", "<cmd>Telescope workspaces<CR>", { desc = "Switch project/workspace" })

-- =========================================================
-- SPECTRE (SEARCH & REPLACE)
-- =========================================================
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

-- =========================================================
-- NEO-TREE (FLOATING FILE EXPLORER)
-- =========================================================
map("n", "<leader>e", "<cmd>Neotree toggle float<CR>", { desc = "Toggle floating file explorer" })
map("n", "<leader>re", "<cmd>Neotree reveal float<CR>", { desc = "Reveal current file in explorer" })
map("n", "<leader>gf", "<cmd>Neotree float git_status<CR>", { desc = "Open git status (floating)" })

-- =========================================================
-- VISUAL MODE ENHANCEMENTS
-- =========================================================
map("v", "<", "<gv", { desc = "Indent left and keep selection" })
map("v", ">", ">gv", { desc = "Indent right and keep selection" })

-- =========================================================
-- WINDOW / SPLIT MANAGEMENT
-- =========================================================
map("n", "<leader><leader>", function()
  require("focus").split_nicely()
end, { desc = "Smart split nicely" })

-- =========================================================
-- TAB MANAGEMENT (LEADER + t)
-- =========================================================
map("n", "<leader>tn", ":tabnext<CR>", { desc = "Next Tab" })
map("n", "<leader>tp", ":tabprevious<CR>", { desc = "Previous Tab" })
map("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Tab" })
map("n", "<leader>to", ":tabonly<CR>", { desc = "Close Other Tabs" })
map("n", "<leader>tt", ":tabnew | Nvdash<CR>", { desc = "New Tab with NvDash" })

map("n", "<leader>1", "1gt", { desc = "Go to Tab 1" })
map("n", "<leader>2", "2gt", { desc = "Go to Tab 2" })
map("n", "<leader>3", "3gt", { desc = "Go to Tab 3" })
map("n", "<leader>4", "4gt", { desc = "Go to Tab 4" })
map("n", "<leader>5", "5gt", { desc = "Go to Tab 5" })

-- Terminal mode quick escape
map("t", "jk", [[<C-\><C-n>]], { desc = "Exit terminal mode with jk" })
