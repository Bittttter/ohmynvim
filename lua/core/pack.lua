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
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost ~/.config/nvim/lua/config/pack.lua so <afile> | PackerCompile
  augroup end
]])
