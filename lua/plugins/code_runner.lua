return {
  "CRAG666/code_runner.nvim",
  config = function ()
    require('code_runner').setup({
      filetype = {
	python = {
	  "source .venv/bin/activate.fish &&",
	  "python3 -u '$dir/$fileName'"
	},
      },
      mode = 'better_term',
    })
    vim.keymap.set('n','<Leader>e', ':RunCode<CR>', {})
  end
}
