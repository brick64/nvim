return {
  "CRAG666/betterTerm.nvim",
  config = function ()
    local betterTerm = require('betterTerm')
    betterTerm.setup({
      show_tabs = false,
    })
    vim.keymap.set({"n", "t"}, "<C-;>", betterTerm.open, { desc = "Open terminal"})
    vim.keymap.set({"n"}, "<leader>tt", betterTerm.select, { desc = "Select terminal"})
    vim.keymap.set('t','<Esc><Esc>', '<C-\\><C-n>:q<CR>', {})
  end
}
