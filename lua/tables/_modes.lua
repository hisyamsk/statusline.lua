------------------------------------------------------------------------
--                        Mode Prompts                                --
------------------------------------------------------------------------
local M = {}
-- Mode Prompt Table
M.current_mode = setmetatable({
	['n'] = 'Normal',
	['no'] = 'N·Operator Pending',
	['v'] = 'Visual',
	['V'] = 'Visual',
	['^V'] = 'Visual',
	['s'] = 'Select',
	['S'] = 'S·Line',
	['^S'] = 'S·Block',
	['i'] = 'Insert',
	['ic'] = 'Insert',
	['ix'] = 'Insert',
	['R'] = 'Replace',
	['Rv'] = 'V·Replace',
	['c'] = 'Commad',
	['cv'] = 'Vim Ex',
	['ce'] = 'Ex',
	['r'] = 'Prompt',
	['rm'] = 'More',
	['r?'] = 'Confirm',
	['!'] = 'Shell',
	['t'] = 'T',
}, {
	-- fix weird issues
	__index = function(_, _)
		return 'V·Block'
	end,
})
return M
