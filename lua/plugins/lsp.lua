return {
    "williamboman/mason.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim",
                     "neovim/nvim-lspconfig" },
    
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "rust_analyzer", "html", "tailwindcss", "tsserver", "lua_ls", "emmet_ls" },
            handlers = { 
                function(name)
                    require("lspconfig")[name].setup({
                        capabilities = capabilities
                    })
                end
            }
        })

        vim.keymap.set('n', 'K', vim.lsp.buf.hover)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    end
}
