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
		requires = { 'nvim-lua/plenary.nvim' }
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
end)

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua so <afile> | PackerCompile
augroup end
]])
