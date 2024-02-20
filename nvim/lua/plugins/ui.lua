return {
  -- messages, cmdline and the popupmenu
  {
    "folke/noice.nvim",
    otruepts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },
}
