return {
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
      ["Select All"] = "<C-a>",
      ["Skip Region"] = "<C-k>",
      ["Remove Region"] = "<C-S-d>",
      ["Exit"] = "<Esc>",
    }
  end,
  config = function()
    -- Opcional: mantener la secuencia exacta de VS Code (Ctrl+K, Ctrl+D):
    -- Este comando manual ayuda a que VM entienda la secuencia:
    vim.keymap.set("n", "<C-k><C-d>", "<Plug>(VM-Skip-Region)", { desc = "Saltar ocurrencia" })
  end,
}
