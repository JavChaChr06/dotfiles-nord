return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
  		'chomosuke/typst-preview.nvim',
  		tag = 'v1.*',
  		config = function()
    		require 'typst-preview'.setup {}
  		end,
	}

end)

