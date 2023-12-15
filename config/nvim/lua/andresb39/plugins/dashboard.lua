return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- config
			theme = "hyper",
			config = {
				header = {
					" ▓█████▄ ▓█████  ██▒   █▓ ▒█████   ██▓███    ██████  ",
					" ▒██▀ ██▌▓█   ▀ ▓██░   █▒▒██▒  ██▒▓██░  ██▒▒██    ▒  ",
					" ░██   █▌▒███    ▓██  █▒░▒██░  ██▒▓██░ ██▓▒░ ▓██▄    ",
					" ░▓█▄   ▌▒▓█  ▄   ▒██ █░░▒██   ██░▒██▄█▓▒ ▒  ▒   ██▒ ",
					" ░▒████▓ ░▒████▒   ▒▀█░  ░ ████▓▒░▒██▒ ░  ░▒██████▒▒ ",
					"  ▒▒▓  ▒ ░░ ▒░ ░   ░ ▐░  ░ ▒░▒░▒░ ▒▓▒░ ░  ░▒ ▒▓▒ ▒ ░ ",
					"  ░ ▒  ▒  ░ ░  ░   ░ ░░    ░ ▒ ▒░ ░▒ ░     ░ ░▒  ░ ░ ",
					"  ░ ░  ░    ░        ░░  ░ ░ ░ ▒  ░░       ░  ░  ░   ",
					"    ░       ░  ░      ░      ░ ░                 ░   ",
					"  ░                  ░                               ",
				},
				shortcut = {
					{
						desc = "󰱼 Find Files",
						group = "DashboardShortCut",
						key = "f",
						action = "Telescope find_files",
					},
					{
						desc = " New File",
						group = "DashboardShortCut",
						key = "n",
						action = "ene | startinsert",
					},
					{
						desc = "⛽︎Toggle NvimTree",
						group = "DashboardShortCut",
						key = "t",
						action = ":NvimTreeToggle<CR>",
					},
					{
						desc = " Find Word",
						group = "DashboardShortCut",
						key = "s",
						action = "Telescope live_grep",
					},
					{
						desc = "󰒲 Lazy",
						group = "DashboardShortCut",
						key = "l",
						action = "Lazy",
					},
					{
						desc = " Config",
						group = "DashboardShortCut",
						key = "c",
						action = ":e ~/.config/nvim",
					},
					{
						desc = " Quit",
						group = "DashboardShortCut",
						key = "q",
						action = "qa",
					},
				},
				footer = { "☢︎ ☯︎ ® DevOps is Ready... " .. os.date() },
				week_header = {
					enabled = true,
				},
				packages = { enable = false },
				project = {
					enable = true,
					limit = 8,
					icon = " ",
					label = "Recent Projects",
					action = "Telescope find_files cwd=",
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
