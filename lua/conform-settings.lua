require("conform").setup({
	-- Map filetypes to formatters
	formatters_by_ft = {
		python = { "black" },
		lua = { "stylua" },
		-- javascript = { "prettier" },
		-- typescript = { "prettier" },
		-- css = { "prettier" },
		-- html = { "prettier" },
		-- json = { "prettier" },
	},

	-- Set up format-on-save
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 1000, -- Max time to wait for formatter
		lsp_fallback = true, -- Fallback to LSP formatting if conform fails
	},

	-- If you want to customize formatters (not needed for basic black)
	--formatters = {
	--black = {
	--command = "~/.local/bin/black",
	--args = { "--line-length", "88" },
	--},
	--},
})
