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
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require('nvim-tree').setup() end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function() require('lualine').setup() end
	}

	use {
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require('indent_blankline').setup({
				-- 显示当前所在区域
				show_current_context = true,
				-- 显示当前所在区域的开始位置
				show_current_context_start = true,
				-- 显示行尾符
				show_end_of_line = true
			})
		end
	}

	use {
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end
	}
end)

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost ~/.config/nvim/lua/config/pack.lua so <afile> | PackerCompile
augroup end
]])
