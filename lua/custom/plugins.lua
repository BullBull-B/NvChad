local plugins = {
  {
    "aurum77/live-server.nvim",
    cmd = {
      "LiveServer",
      "LiveServerStart",
      "LiveServerStop",
      "LiveServerInstall",
    },
    build = function()
      require("live_server.util").install()
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },

}
return plugins
