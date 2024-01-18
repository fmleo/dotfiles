return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()
        vim.keymap.set({ "n", "t"}, "<leader>tt", "<cmd>ToggleTerm direction=horizontal size=10<CR>")
    end,
}
