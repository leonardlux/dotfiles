return {
    -- colorscheme
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        lazy = false
    },
    -- Mason
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' }
        },
    },
    -- Lua Line
    {
        'nvim-lualine/lualine.nvim',
    },
    -- Markdown Preview Not Working
    {
        'iamcco/markdown-preview.nvim',
        cmd = {
            'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop'
        },
        ft = { 'markdown' },
        build = function() vim.fn['mkdp#util#install']() end,
    },
    -- Auto pairs
    { 'kylechui/nvim-surround', version = '*', event = 'VeryLazy' },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    -- Nerdtree
    {
        'preservim/nerdtree'
    },
    -- Vimtex
    {
        'lervag/vimtex'
    },
    {
        'micangl/cmp-vimtex',
    },
    -- Comments
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    }
}
