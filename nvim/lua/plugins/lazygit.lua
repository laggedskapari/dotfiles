return {
  "kdheepak/lazygit.nvim",
  config = function ()
    vim.keymap.set("n", "<leader>gh", ":LazyGit <CR>", {})
    require("lazy").setup({
      {
        "kdheepak/lazygit.nvim",
        dependencies = {
          "nvim-lua/plenary/nvim",
        }
      }
    })
  end
}
