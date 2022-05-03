vim.cmd([[packadd packer.nvim]])
require('packer').startup(function()
    use {
        'wbthomason/packer.nvim',
        event = 'VimEnter',
    }

    use {
        'projekt0n/github-nvim-theme',
        config = function() require('github-theme').setup() end
    }
end)
