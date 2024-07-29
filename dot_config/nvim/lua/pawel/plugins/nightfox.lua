return {
	"git@github.com:EdenEast/nightfox.nvim",
	priority = 100000,
	lazy = false,
    config = function()
		vim.cmd([[colorscheme nightfox]])
	end,
} 
