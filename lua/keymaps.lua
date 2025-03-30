-- Commenting with CTRL + /
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local modes = { "n", "v" } -- normal and visual mode

for _, mode in ipairs(modes) do
	--map(mode, '<C-_>', ':call NERDCommenterToggle(0, "toggle")<CR>', opts)
	map(mode, "<C-_>", ':call nerdcommenter#Comment(0, "toggle")<CR>', opts)
end
