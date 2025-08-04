return {
  'rcarriga/nvim-notify',
  config = function ()
    require("notify").setup({
      merge_duplicates = true,
      background_colour = "#000000",
    })
    vim.notify = require("notify")
  end
}
