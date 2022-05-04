vim.cmd([[packadd packer.nvim]])
require('packer').startup(function(use)
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
		'projekt0n/github-nvim-theme',
		config = function() require('github-theme').setup() end
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- file tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require('nvim-tree').setup() end
	}

	-- bottom bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function() require('lualine').setup() end
	}

	use {
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end
	}

	use {
		"neovim/nvim-lspconfig",
		config = function()
			vim.diagnostic.config(
			{
				-- 诊断的虚拟文本
				virtual_text = {
					-- 显示的前缀，可选项：'●', '▎', 'x'
					-- 默认是一个小方块，不是很好看，所以这里改了
					prefix = "●",
					-- 是否总是显示前缀？是的
					source = "always"
				},
				float = {
					-- 是否显示诊断来源？是的
					source = "always"
				},
				-- 在插入模式下是否显示诊断？不要
				update_in_insert = false
			}
			)
		end
	}

	use {
		"neovim/nvim-lspconfig",
		config = function()
			require('modules.lsp.config')
		end
	}

	-- 自动安装 LSP
	use {
		"williamboman/nvim-lsp-installer",
		config = function()
			require('modules.lsp.installer')
		end
	}

	use {
		"tami5/lspsaga.nvim",
		config = function()
			require("modules.lsp.saga")
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
autocmd BufWritePost ~/.config/nvim/lua/config/pack.lua so <afile> | PackerCompile
augroup end
]])
