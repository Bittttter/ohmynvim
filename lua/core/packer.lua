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
		requires = { {'nvim-lua/plenary.nvim'} }
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
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "palenight",
					disabled_filetypes = {},
					component_separators = "|",
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { { "branch" }, { "diff" } },
					lualine_c = {
						{ "lsp_progress" },
					},
					lualine_x = {
						{
							"diagnostics",
							sources = { "nvim_diagnostic" },
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
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				extensions = {
					"quickfix",
					"nvim-tree",
					"toggleterm",
					"fugitive",
					minimap,
					aerial,
					dapui_scopes,
					dapui_breakpoints,
					dapui_stacks,
					dapui_watches,
				},
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

	use {
		"neovim/nvim-lspconfig",
		config = function()
			require('lsp.config')
		end
	}

	-- 自动安装 LSP
	use {
		"williamboman/nvim-lsp-installer",
		config = function()
			require('lsp.installer')
		end
	}

	use {
		"tami5/lspsaga.nvim",
		config = function()
			require("lsp.saga")
		end
	}

	use {
    "j-hui/fidget.nvim",
    config = function()
	    require("fidget").setup()
    end
}
end)

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost packer.lua so <afile> | PackerCompile
augroup end
]])
