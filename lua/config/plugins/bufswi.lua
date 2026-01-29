require("bufswi").setup({
	width = 60,
	height = 10,
	border = "rounded",
	highlight_group = "Normal",
	current_highlight = "Visual",
	keymaps = {
		next = { "<Tab>", "j" },
		prev = { "<S-Tab>", "k" },
		select = { "<CR>", "<Space>" },
		close = { "<Esc>", "q" },
	},
})
