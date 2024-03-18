return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal right <CR>", {})
    vim.keymap.set("n", "<leader>c", ":Neotree close <CR>", {})
    require("neo-tree").setup({
      window = {
        width = 70,
        auto_expand_width = true
      }
    })
  end,
}
