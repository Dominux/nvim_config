require("nvim_comment").setup({
	create_mappings = false
})

vim.keymap.set("n", "<leader>/", vim.cmd.CommentToggle)
