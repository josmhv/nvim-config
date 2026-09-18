local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sw', function()
    builtin.live_grep({
        search_dirs = { vim.fn.expand("%:p") },
    })
end, {desc = "Search current buffer live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('telescope').load_extension('luasnip')

local lst = require('telescope').extensions.luasnip
local luasnip = require('luasnip')

