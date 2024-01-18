return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,
				-- python
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
                null_ls.builtins.diagnostics.djlint,
                -- javascript
                null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.formatting.prettier,
            },
		})
	end,
}
