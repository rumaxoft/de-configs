local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "twig",
    "scss",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "eslint-lsp",
    "eslint_d",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

M.nvterm = {
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = "editor",
        row = 0.2,
        col = 0.15,
        width = 0.7,
        height = 0.5,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.3 },
      vertical = { location = "rightbelow", split_ratio = 0.3 },
    },
  },
  -- behavior = {
  --   autoclose_on_quit = {
  --     enabled = false,
  --     confirm = true,
  --   },
  --   close_on_exit = true,
  --   auto_insert = true,
  -- },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    full_name = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.gitsigns = {
  signs = {
    add = { text = " │", numhl = "GitSignsAdd", linehl = "GitSignsAdd" },
    change = { text = " │", numhl = "GitSignsDelete", linehl = "GitSignsDelete" },
    delete = { text = " ▸", numhl = "GitSignsDelete", linehl = "GitSignsDelete" },
    topdelete = { text = " ▸", numhl = "GitSignsDelete", linehl = "GitSignsDelete" },
    changedelete = { text = " ~", numhl = "GitSignsDelete", linehl = "GitSignsDelete" },
    untracked = { text = " ┆", numhl = "GitSignsDelete", linehl = "GitSignsDelete" },
  },
  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
  linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    follow_files = true,
  },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
  },
  current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = "single",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },
  yadm = {
    enable = false,
  },
}

return M
