return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "ruff" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
	capabilities = capabilities
      })
      lspconfig.ruff.setup({
	capabilities = capabilities
      })
      local _border = "rounded"

      local function bordered_hover(_opts)
	_opts = _opts or {}
	return vim.lsp.buf.hover(vim.tbl_deep_extend("force", _opts, {
	  border = _border
	}))
      end
      vim.diagnostic.config({ virtual_text = true, update_in_insert = true })
      vim.keymap.set("n", "K", bordered_hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
