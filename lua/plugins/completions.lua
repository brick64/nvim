return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0,
      })
    end,
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
	snippet = {
	  expand = function(args)
	    require("luasnip").lsp_expand(args.body)
	  end,
	},
	window = {
	  completion = cmp.config.window.bordered(),
	  documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
	  ["<C-b>"] = cmp.mapping.scroll_docs(-4),
	  ["<C-f>"] = cmp.mapping.scroll_docs(4),
	  ["<C-Space>"] = cmp.mapping.complete(),
	  ["<C-n>"] = cmp.mapping.abort(),
	  ["<CR>"] = cmp.mapping.confirm({ select = true }),
	  ['<TAB>'] = cmp.mapping.select_next_item(),
	  ['<C-TAB>'] = cmp.mapping.select_prev_item(),
	}),
	sources = cmp.config.sources({
	  { name = "nvim_lsp" },
	  { name = "luasnip" },
	}, {
	  { name = "buffer" },
	}),
      })
    end,
  },
}
