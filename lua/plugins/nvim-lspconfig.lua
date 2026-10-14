-- NOTE: This turns off inlay_hints by default.
-- To toggle this back on, use the keymap <leader>uh
return {
  "nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
}
