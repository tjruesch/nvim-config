local api = vim.api
local keymap = vim.keymap
local dashboard = require("dashboard")

dashboard.setup{
  theme = "hyper",
  config = {
    week_header = {
      enable = true,
    }
  },
}

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
  callback = function ()
    keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
  end
})
