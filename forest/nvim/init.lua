vim.cmd('source ~/.vimrc')
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({'git', 'clone', 'https://github.com/folke/lazy.nvim', lazypath})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  {
    'williamboman/mason.nvim',
    config = function() require('mason').setup() end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'clangd', 'lua_ls', 'pyright', 'ts_ls' }, -- whatever you need
      })
    end
  },
	{
		'neovim/nvim-lspconfig',
		config = function()
			vim.lsp.config('clangd', {})
			vim.lsp.config('pyright', {})
			vim.lsp.config('ts_ls', {})
			vim.lsp.config('lua_ls', {})
			vim.lsp.enable({'pyright', 'ts_ls', 'lua_ls'})
		end
	},
	{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",     -- buffer words
    "hrsh7th/cmp-path",       -- file paths
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      }),
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      },
    })
  end,
},
})
