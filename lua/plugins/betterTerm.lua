return {
  "CRAG666/betterTerm.nvim",
  opts = {
    position = "bot",
    size = 15,
    show_tabs = false,
  },
  config = function ()
    local betterTerm = require('betterTerm')
    betterTerm.setup()
    vim.keymap.set({"n", "t"}, "<C-;>", betterTerm.open, { desc = "Open terminal"})
  end
}
