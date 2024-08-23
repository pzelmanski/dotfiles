return {
    "git@github.com:scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 10000,
    config = function()
        require("cyberdream").setup({
                --transparent = true,
                terminal_colors = true,
            })

		vim.cmd("colorscheme cyberdream")
	end,
}
