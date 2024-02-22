local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
    pip = {
        upgrade_pip = true,
    },
})

require('mason-lspconfig').setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { 'pylsp', 'lua_ls', "marksman" },
    handlers = {
        lsp_zero.default_setup,
    },
})

lsp_zero.setup_servers({
    "pylsp",
    "lua_ls",
    --    "marksman",
})
