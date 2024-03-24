require "nvchad.mappings"

-- add yours here
-- require 'configs.custom.mappings'

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- Debugging
vim.fn.sign_define('DapBreakpoint', { text='🔴', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })

map("n", "<leader>dbb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
map("n", "<leader>dbc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
map("n", "<leader>dbl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
map("n", '<leader>dbr', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
map("n", '<leader>dba', '<cmd>Telescope dap list_breakpoints<cr>')
map("n", "<leader>ddc", "<cmd>lua require'dap'.continue()<cr>")
map("n", "<leader>ddj", "<cmd>lua require'dap'.step_over()<cr>")
map("n", "<leader>ddk", "<cmd>lua require'dap'.step_into()<cr>")
map("n", "<leader>ddo", "<cmd>lua require'dap'.step_out()<cr>")
map("n", '<leader>ddd', function() require('dap').disconnect(); require('dapui').close(); end)
map("n", '<leader>ddt', function() require('dap').terminate(); require('dapui').close(); end)
map("n", "<leader>ddr", "<cmd>lua require'dap'.repl.toggle()<cr>")
map("n", "<leader>ddl", "<cmd>lua require'dap'.run_last()<cr>")
map("n", '<leader>ddi', function() require "dap.ui.widgets".hover() end)
map("n", '<leader>dd?', function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)
map("n", '<leader>ddf', '<cmd>Telescope dap frames<cr>')
map("n", '<leader>ddh', '<cmd>Telescope dap commands<cr>')
map("n", '<leader>dde', function() require('telescope.builtin').diagnostics({default_text=":E:"}) end)


map("n", "<leader>dtt", ":DapUiToggle<CR>", {noremap=true})
map("n", "<leader>drt", ":lua require('dapui').open({reset = true})<CR>", {noremap=true})
-- vim.api.nvim_set_keymap("n", "<leader>m", ":lua require('harpoon.mark').add_file()<CR>", {noremap=true})
-- vim.api.nvim_set_keymap("n", "<leader>ht", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {noremap=true})


-- Go Debugging

map("n", "<leader>dgt", ":lua require('dap-go').debug_test() <CR>", {desc = "Run go test"})

map("n", "<leader>dgl", ":lua require('dap-go').debug_last() <CR>", {desc="Run last go test"})
