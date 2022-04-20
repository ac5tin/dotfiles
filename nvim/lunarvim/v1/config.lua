--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE Clvim.FIGS FEEL FREE Tlvim.CHANGE Tlvim.WHATEVER Ylvim. WANT

-- general

lvim.format_on_save = true
lvim.lint_on_save = true
--lvim.builtin.compe.autocomplete = true
lvim.colorscheme = "onedarker"
vim.opt.wrap = true
vim.opt.timeoutlen = 100
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- keymappings
lvim.leader = "space"
-- lvim.builtin.zen.active = false
-- lvim.builtin.zen.window.height = 0.90
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- stop nvimtree auto changing dir while editing yaml files
-- lvim.builtin.nvimtree.follow = false

--lvim.lang.yaml.lsp.setup.root_dir = function(fname)
--    local util = require "lspconfig/util"
--    return util.root_pattern ".git"(fname) or vim.fn.getcwd()
--  end

-- nvimtree
lvim.builtin.nvimtree.setup.update_cwd = 0
lvim.builtin.nvimtree.auto_open=1


-- copilot
lvim.plugins = {
  {"github/copilot.vim"}
}

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
local cmp = require "cmp"


-- LSP
-- Go
-- lvim.lang.go.formatters = {
--   {
--     exe = "gofmt",
--     args = {},
--     stdin = true,
--   }
-- }
-- lvim.lang.go.formatters[1].exe = "gofmt"



-- RUST
lvim.lsp.override = { "rust" }

-- Plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.lualine.active = true
lvim.plugins = {
    {
    "simrat39/rust-tools.nvim",
    config = function()
      local opts = {
        tools = { -- rust-tools options
          -- automatically set inlay hints (type hints)
          -- There is an issue due to which the hints are not applied on the first
          -- opened file. For now, write to the file to trigger a reapplication of
          -- the hints or just run :RustSetInlayHints.
          -- default: true
          autoSetHints = true,

          -- whether to show hover actions inside the hover window
          -- this overrides the default hover handler
          -- default: true
          hover_with_actions = true,

          runnables = {
            -- whether to use telescope for selection menu or not
            -- default: true
            use_telescope = true,

            -- rest of the opts are forwarded to telescope
          },

          inlay_hints = {
            -- wheter to show parameter hints with the inlay hints or not
            -- default: true
            show_parameter_hints = true,

            -- prefix for parameter hints
            -- default: "<-"
            parameter_hints_prefix = "<-",

            -- prefix for all the other hints (type, chaining)
            -- default: "=>"
            other_hints_prefix = "=>",

            -- whether to align to the lenght of the longest line in the file
            max_len_align = false,

            -- padding from the left if max_len_align is true
            max_len_align_padding = 1,

            -- whether to align to the extreme right or not
            right_align = false,

            -- padding from the right if right_align is true
            right_align_padding = 7,
          },

          hover_actions = {
            -- the border that is used for the hover window
            -- see vim.api.nvim_open_win()
            border = {
              { "╭", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╮", "FloatBorder" },
              { "│", "FloatBorder" },
              { "╯", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╰", "FloatBorder" },
              { "│", "FloatBorder" },
            },
          },
        },

        -- all the opts to send to nvim-lspconfig
        -- these override the defaults set by rust-tools.nvim
        -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
        server = {
          -- cmd = { DATA_PATH .. "/lspinstall/rust/rust-analyzer" },
          cmd = { vim.fn.stdpath "data" .. "/lspinstall/rust/rust-analyzer" },
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
        }, -- rust-analyser options
      }
      require("rust-tools").setup(opts)
    end,
    ft = { "rust", "rs" },
  }
}
