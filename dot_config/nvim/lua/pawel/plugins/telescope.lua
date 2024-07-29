return{
  "git@github.com:nvim-telescope/telescope.nvim.git",
  branch="0.1.x",
  dependencies = {
    "git@github.com:nvim-lua/plenary.nvim.git",
    { "git@github.com:nvim-telescope/telescope-fzf-native.nvim.git", build="make"},
    "git@github.com:nvim-tree/nvim-web-devicons.git",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      telescope.setup({
	defaults = {
	  mappings = {
	    i = {
	      ["<C-k>"] = actions.move_selection_previous,
	      ["<C-j>"] = actions.move_selection_next,
	      ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
      }
      }
      })

      telescope.load_extension("fzf")

      local keymap = vim.keymap
      keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {desc = "Fuzzy find files in cwd" })
      keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {desc = "Fuzzy find recent files" })
      keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", {desc = "Find string in cwd" })
      keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", {desc = "Find string under cursor in cwd" })

    end
}
