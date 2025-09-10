return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "blade",
      },
    },
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "t", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-tree/nvim-web-devicons", -- optional, for icons
    },
    config = function()
      require("spectre").setup {
        default = {
          replace = {
            cmd = "sed",
          },
        },
      }
    end,
  },
  {
    "j-hui/fidget.nvim",
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    opts = {
      filters = {
        dotfiles = false, -- show .env and other hidden files
        custom = { "node_modules" }, -- make sure .env isn't blacklisted
      },
    },
  },
  {
    "natecraddock/workspaces.nvim",
    event = "VeryLazy",
    config = function()
      require("workspaces").setup {
        -- where to store workspaces file
        path = vim.fn.stdpath "data" .. "/workspaces",
        -- how to open the workspace (global or local dir change)
        cd_type = "global",
        -- sort the list
        sort = true,
      }

      -- telescope integration
      require("telescope").load_extension "workspaces"
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
      require("neo-tree").setup {
        close_if_last_window = true,
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
          filtered_items = {
            visible = false, -- show hidden by default
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = { "node_modules" },
          },
          hijack_netrw_behavior = "open_current",
        },
      }
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require "harpoon"

      harpoon:setup()

      -- telescope integration (optional, but handy)
      require("telescope").load_extension "harpoon"
    end,
  },
}
