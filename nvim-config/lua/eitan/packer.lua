-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} } }
    use {'luisiacc/gruvbox-baby', branch = 'main'}
    use 'tpope/vim-commentary'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'junegunn/vim-easy-align'
    use 'folke/zen-mode.nvim'
    use { 'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
    -- use {
    --     'VonHeikemen/lsp-zero.nvim',
    --     branch = 'v2.x',
    --     requires = {
    --         -- LSP Support
    --         {'neovim/nvim-lspconfig'},             -- Required
    --         {                                      -- Optional
    --         'williamboman/mason.nvim',
    --         run = function()
    --             pcall(vim.cmd, 'MasonUpdate')
    --         end,
    --     },
    --     {'williamboman/mason-lspconfig.nvim'}, -- Optional

    --     -- Autocompletion
    --     {'hrsh7th/nvim-cmp'},     -- Required
    --     {'hrsh7th/cmp-nvim-lsp'}, -- Required
    --     {'L3MON4D3/LuaSnip'},     -- Required
    -- }
    -- }
end)
