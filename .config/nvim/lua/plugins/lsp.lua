return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "dockerls",
                    "docker_compose_language_service",
                    "pyright"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({
                python = {
                    analysis = {
                        useLibraryCodeForTypes = true,
                        diagnosticSeverityOverrides = {
                            reportGeneralTypeIssues = "none",
                            reportOptionalMemberAccess = "none",
                            reportOptionalSubscript = "none",
                            reportPrivateImportUsage = "none",
                        },
                        autoImportCompletions = false,
                    },
                    linting = {pylintEnabled = false}
                }
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = "code: goto definition" })
            vim.keymap.set('n', '<leader>cr', vim.lsp.buf.code_action, { desc = "code: show references" })
            vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = "code: format" })
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "code: code action" })
        end
    }
}
