vim.cmd([[packadd packer.nvim]])
require('packer').startup(function(use)
	-- required
	use {
		'wbthomason/packer.nvim',
		event = 'VimEnter',
	}

	-- 英语不好，但熟悉了帮助文档之后要卸掉哦:)
	use {
		'yianwillis/vimcdoc'
	}

	-- theme
	use {
		'shaunsingh/nord.nvim',
		config = function()
			vim.cmd[[colorscheme nord]]
		end,
	}

	-- theme github
	-- use {
	--	'projekt0n/github-nvim-theme',
	--	config = function()
	--		require('github-theme').setup()
	--	end
	--}

	-- search
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'},
		{ "nvim-lua/popup.nvim", opt = true },},
		config = function()	
			vim.cmd([[packadd sqlite.lua]])
			vim.cmd([[packadd telescope-fzf-native.nvim]])
			vim.cmd([[packadd telescope-project.nvim]])
			vim.cmd([[packadd telescope-frecency.nvim]])
			vim.cmd([[packadd telescope-zoxide]])

			require("telescope").setup({
				defaults = {
					prompt_prefix = "🔭 ",
					selection_caret = " ",
					layout_config = {
						horizontal = { prompt_position = "bottom", results_width = 0.6 },
						vertical = { mirror = false },
					},
					file_previewer = require("telescope.previewers").vim_buffer_cat.new,
					grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
					qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
					file_sorter = require("telescope.sorters").get_fuzzy_file,
					file_ignore_patterns = {},
					generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
					path_display = { "absolute" },
					winblend = 0,
					border = {},
					borderchars = {
						"─",
						"│",
						"─",
						"│",
						"╭",
						"╮",
						"╯",
						"╰",
					},
					color_devicons = true,
					use_less = true,
					set_env = { ["COLORTERM"] = "truecolor" },
				},
				extensions = {
					fzf = {
						fuzzy = false, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
						case_mode = "smart_case", -- or "ignore_case" or "respect_case"
						-- the default case_mode is "smart_case"
					},
					frecency = {
						show_scores = true,
						show_unindexed = true,
						ignore_patterns = { "*.git/*", "*/tmp/*" },
					},
				},
			})

			require("telescope").load_extension("fzf")
			require("telescope").load_extension("project")
			require("telescope").load_extension("zoxide")
			require("telescope").load_extension("frecency")
		end
	}

	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		after='telescope.nvim',
		run='make'
	}

	use {
		'nvim-telescope/telescope-project.nvim',
		opt = true,
		after = "telescope-fzf-native.nvim",
	}

	use {
		'nvim-telescope/telescope-frecency.nvim',
		opt = true,
		after = "telescope-project.nvim",
		requires = { { "tami5/sqlite.lua", opt = true } },
	}

	use {
		'jvgrootveld/telescope-zoxide',
		opt = true, after = "telescope-frecency.nvim"
	}


	-- file tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		config = function()
			require("nvim-tree").setup()
		end
	}

	-- bottom bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			{
				"SmiteshP/nvim-gps",
				requires = { "nvim-treesitter/nvim-treesitter" } 
			},
			{ 'kyazdani42/nvim-web-devicons', opt = true },
		},
		config = function()
			local gps = require("nvim-gps")

			local function gps_content()
				if gps.is_available() then
					return gps.get_location()
				else
					return ""
				end
			end

			require('lualine').setup({
				options = {
					component_separators = "|",
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { { "branch" }, { "diff" } },
					lualine_c = {
						{ "lsp_progress" },
						{ gps_content, cond = gps.is_available },
					},
					lualine_x = {
						{
							"diagnostics",
							sources = { "coc" },
							symbols = { error = " ", warn = " ", info = " " },
						},
					},
					lualine_y = {
						{
							"filetype",
							"encoding",
						},
						{
							"fileformat",
							icons_enabled = true,
							symbols = {
								unix = "LF",
								dos = "CRLF",
								mac = "CR",
							},
						},
					},
					lualine_z = { "progress", "location" },
				}
			})
		end
	}

	-- close tag
	use {
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end
	}

	-- lsp
	use {
		'neoclide/coc.nvim',
		branch = 'release',
		config = function()
		end
	}

	use {
		'iamcco/markdown-preview.nvim',
		run = "cd app && pnpm install",
	}
end)

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua so <afile> | PackerCompile
augroup end
]])
