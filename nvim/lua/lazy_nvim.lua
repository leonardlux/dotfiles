local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- local plugins = require("plugins")

-- configuration for lazy itself
local opt =  {
    ui = {
        border = "rounded",
        title = "Plugin Manager",
        title_pos = "center",
    },
}
-- Added this line to our initial lazy-config.lua file (Remove this comment if you want to)
require("lazy").setup(require("plugins"), opt)
