require("bookmarks"):setup({
	last_directory = { enable = true, persist = true },
	persist = "all",
	desc_format = "full",
	file_pick_mode = "hover",
	notify = {
		enable = true,
		timeout = 2,
		message = {
			new = "New bookmark 'm' -> '<folder>'",
			delete = "Deleted bookmark in '<key>'",
			delete_all = "Deleted all bookmarks",
		},
	},
})
require("projects"):setup({
	save = {
		method = "yazi", -- yazi | lua
		lua_save_path = "~/.config/yazi/state/projects.json", -- windows: "%APPDATA%/yazi/state/projects.json", unix: "~/.config/yazi/state/projects.json"
	},
	last = {
		update_after_save = true,
		update_after_load = true,
	},
	merge = {
		quit_after_merge = false,
	},
	notify = {
		enable = true,
		title = "Tabs Save",
		timeout = 3,
		level = "info",
	},
})
--NOTE:Tagging
-----------------
require("simple-tag"):setup({
	-- UI display mode (icon, text, hidden)
	ui_mode = "icon", -- (Optional)

	-- Disable tag key hints (popup in bottom right corner)
	hints_disabled = false, -- (Optional)

	-- linemode order: adjusts icon/text position. Fo example, if you want icon to be on the mose left of linemode then set linemode_order larger than 1000.
	-- More info: https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-plugin/preset/components/linemode.lua#L4-L5
	linemode_order = 500, -- (Optional)

	-- You can backup/restore this folder within the same OS (Linux, windows, or MacOS).
	-- But you can't restore backed up folder in the different OS because they use difference absolute path.
	-- save_path =  -- full path to save tags folder (Optional)
	--       - Linux/MacOS: os.getenv("HOME") .. "/.config/yazi/tags"
	--       - Windows: os.getenv("APPDATA") .. "\\yazi\\config\\tags"

	-- Set tag colors
	colors = { -- (Optional)
		-- Set this same value with `theme.toml` > [mgr] > hovered > reversed
		-- Default theme use "reversed = true".
		-- More info: https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-config/preset/theme-dark.toml#L25
		reversed = true, -- (Optional)

		-- More colors: https://yazi-rs.github.io/docs/configuration/theme#types.color
		-- format: [tag key] = "color"
		["*"] = "#bf68d9", -- (Optional)
		["$"] = "green",
		["!"] = "#cc9057",
		["1"] = "cyan",
		["p"] = "red",
	},

	-- Set tag icons. Only show when ui_mode = "icon".
	-- Any text or nerdfont icons should work as long as you use nerdfont to render yazi.
	-- Default icon from mactag.yazi: ●; Some generic icons: , , 󱈤
	-- More icon from nerd fonts: https://www.nerdfonts.com/cheat-sheet
	icons = { -- (Optional)
		-- default icon
		default = "󰚋",

		-- format: [tag key] = "tag icon"
		["*"] = "*",
		["$"] = "",
		["!"] = "",
		["p"] = "",
	},
})
require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})
--require("relative-motions"):setup({ show_numbers = "relative_absolute", show_motion = true })
--require("eza-preview"):setup()
