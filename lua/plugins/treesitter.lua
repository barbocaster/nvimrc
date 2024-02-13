return {
   "nvim-treesitter/nvim-treesitter",

    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "rust", "html", "json", "toml", "javascript", "typescript" },
        })
    end
}

