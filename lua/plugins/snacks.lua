return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          auto_close = true,
          layout = {
            layout = {
              backdrop = false,
              row = 1,
              width = 0.4,
              min_width = 80,
              height = 0.8,
              border = "none",
              box = "vertical",
              { win = "preview", title = "{preview}", height = 0.4, border = true },
              {
                box = "vertical",
                border = true,
                title = "{title} {live} {flags}",
                title_pos = "center",
                { win = "input", height = 1, border = "bottom" },
                { win = "list", border = "none" },
              },
            },
          },
        },
      },
    },
  },
  keys = {
    -- disable the keymap to find files (Root dir)
    { "<leader>ff", false },
    -- change keymap to <space>sf (Root dir)
    { "<leader>sf", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    -- disable the keymap to find files (cwd)
    { "<leader>fF", false },
    -- change keymap to <space>sf (cwd)
    { "<leader>sF", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
  },
}
