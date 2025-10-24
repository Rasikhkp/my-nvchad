-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = {
  load_on_startup = true,
  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "  Workspaces", keys = "Spc f p", cmd = "Telescope workspaces" },
  },
  header = {
    "      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗     ",
    "      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║     ",
    "      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║     ",
    "      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║     ",
    "      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║     ",
    "I use ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝, btw",
    "",
    "",
    "",
  },
}

M.term = {
  float = {
    row = 0.05,
    col = 0.1,
    width = 0.8,
    height = 0.8,
  },
  enabled = false,
}

return M
