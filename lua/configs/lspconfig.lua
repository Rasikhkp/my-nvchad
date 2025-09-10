require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "tailwindcss", "intelephense", "laravel_ls" }
vim.lsp.enable(servers)
