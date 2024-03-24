local M = {}

-- M.ui = {
  -- theme = "nightowl",
-- }
M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUP<CR>", "window up"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
  }
}

return M
