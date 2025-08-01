return {
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }

    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n','<C-p>', builtin.find_files, {})
      vim.keymap.set('n','<leader>fg', builtin.live_grep, {})

      local actions = require("telescope.actions")

      require("telescope").setup({
	defaults = {
	  mappings = {
	    i = {
	      ["<esc>"] = actions.close,
	    },
	  },
	  vimgrep_arguments = {
	    "rg",
	    "--color=never",
	    "--no-heading",
	    "--with-filename",
	    "--line-number",
	    "--column",
	    "--smart-case",
	    "--hidden",
	    "--follow"
	  }
	},
	pickers = {
	  find_files = {
	    follow = true
	  }
	},
      })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
	extensions = {
	  ["ui-select"] = {
	    require("telescope.themes").get_dropdown {
	    }
	  }
	}
      }
      require("telescope").load_extension("ui-select")
    end
  },
}
