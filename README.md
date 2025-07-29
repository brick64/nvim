This is me NeoVim configuration files. This config uses Lazy package manager.
To use this configuration run the following command:
```Bash
git clone https://github.com/brick64/nvim.git ~/.config/nvim
```
Change any vim options in lua/config/vim-options.lua
Add new plugins or edit existing plugin configurations by modifying the corresponding file lua/plugins/plugin.lua file.

List of installed plugins:
- alpha-nvim
- autoclose.nvim
- catppucin/nvim
- cmp-nvim-lsp
- LuaSnip
- nvim-cmp
- mason.nvim
- mason-lspconfig.nvim
- nvim-lspconfig
- lualine.nvim
- neo-tree.nvim
- neoscroll.nvim
- none-ls.nvim
- smear-cursor.nvim
- telescope.nvim
- telescope-ui-select.nvim
- nvim-treesitter
- nvim-dap
- nvim-nio
- nvim-dap-ui
- nvim-dap-python

List of keybinds (Leader key is Space):
- <C-e>: Open neo-tree on the left
- <C-p>: Find files
- <Leader>fg: Live grep
- <TAB>: Go to next completion suggestion
- <C-TAB>: Go to previos completion suggestion
- <K>: Hover definition
- gd: Go to definition
- <Leader>ca: Code actions
- <Leader>gf: Format
- <Leader>dt: Toggle breakpoint
- <Leader>dc: Start debugger
