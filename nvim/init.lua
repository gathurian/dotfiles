-- I have no idea what it does, but LazyVim breaks if this line is not present
vim.g.bigfile_size=1024*1024*1 -- 1M

require("config.options")
require("config.keybindings")
require("config.lazy")
