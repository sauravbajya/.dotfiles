
vim.pack.add({
	-- -- Fuzzy picker
	'https://github.com/ibhagwan/fzf-lua',
})

require('fzf-lua').setup({
  "fzf-native", -- Uses the fzf-native interface style
  winopts = {
    preview = {
      default = 'bat', -- Uses 'bat' for colored previews if you have it installed
    }
  },
})
