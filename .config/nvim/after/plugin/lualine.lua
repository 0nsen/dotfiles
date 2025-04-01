require('lualine').setup {
	options = {
		component_separators = { left = '\\' },
		section_separators = { left = '', right = '' },
	},
	sections = {
		lualine_a = {
			{
				'mode',
				-- separator = {
				-- 	left = '',
				-- },
				right_padding = 2,
			},
		},
		lualine_c = {
			{
				'filename',
				path = 1,
			},
		},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	inactive_sections = {
		lualine_c = {
			{
				'filename',
				path = 1,
			},
		},
		lualine_x = {},
	},
}
