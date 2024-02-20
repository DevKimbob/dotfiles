return {
  -- formatting
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "shfmt",
        "clang-format",
      })
    end,
    -- opts = {
    --   ensure_installed = {
    --     "stylua",
    --     "shfmt",
    --     "clang-format",
    --   },
    -- },
  },
  {
    "stevearc/conform.nvim",
    opts = function()
      -- local plugin = require("lazy.core.config").plugins["conform.nvim"]
      -- if plugin.config ~= M.setup then
      --   Util.error({
      --     "Don't set `plugin.config` for `conform.nvim`.\n",
      --     "This will break **LazyVim** formatting.\n",
      --     "Please refer to the docs at https://www.lazyvim.org/plugins/formatting",
      --   }, { title = "LazyVim" })
      -- end

      local opts = {
        -- LazyVim will use these options when formatting with the conform.nvim formatter
        format = {
          timeout_ms = 3000,
          async = false, -- not recommended to change
          quiet = false, -- not recommended to change
        },

        formatters_by_ft = {
          lua = { "stylua" },
          fish = { "fish_indent" },
          sh = { "shfmt" },
          c = { "clang_format" },
          cpp = { "clang_format" },
        },

        formatters = {
          injected = { options = { ignore_errors = true } },
        },
      }
      return opts
    end,
  },
}
