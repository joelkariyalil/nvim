-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
    { import = "plugins.lsp" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { 
    colorscheme = { "habamax" },
    -- Reduce concurrent operations to prevent connection overload
    missing = true,
  },
  -- automatically check for plugin updates
  checker = { 
    enabled = true,
    concurrency = 2, -- Limit concurrent update checks
    frequency = 3600, -- Check less frequently (1 hour)
  },
  -- Performance and stability settings
  performance = {
    cache = {
      enabled = true,
    },
    reset_packpath = true,
    rtp = {
      reset = true,
      paths = {},
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  -- UI settings
  ui = {
    size = { width = 0.8, height = 0.8 },
    border = "rounded",
    -- Reduce concurrent operations
    throttle = 20, -- Slow down UI updates
  },
  -- Git settings for better stability
  git = {
    timeout = 300, -- Increase timeout to 5 minutes
    url_format = "https://github.com/%s.git", -- Use HTTPS instead of SSH for plugin downloads
  },
  -- Reduce concurrent operations
  concurrency = 2, -- Limit to 2 concurrent operations
})
