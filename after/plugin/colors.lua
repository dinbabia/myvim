function ColorMyPencils(color)
	color = color or "nightfly"
	vim.cmd.colorscheme(color)

	-- background color
	-- vim.api.nvim_set_hl(0, "Normal", { bg ="none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg ="none" })
end

ColorMyPencils()
