require("pawel.config.keymaps")
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true

vim.diagnostic.config({
    float = {
        source = 'always',
        border = "single"
    },
})
