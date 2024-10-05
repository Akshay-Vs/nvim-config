return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {},
	config = function()
		require("barbar").setup()

		local opts = { silent = true }

		-- Move to previous/next
		vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
		vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)

		-- Re-order to previous/next
		vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
		vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

		-- Goto buffer in position...
		vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
		vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
		vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
		vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
		vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
		vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
		vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
		vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
		vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
		vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
	end,
}
