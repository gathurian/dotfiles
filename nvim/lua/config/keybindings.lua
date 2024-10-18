--[[
vim.keymap.set({mode}, {lhs}, {rhs}, {opts})
    {mode} (string or table) mode short-name
        '': Normal, Visual, Select, Operator-pending mode
        'n': Normal mode
        'v': Visual and Select mode
        's': Select mode
        'x': Visual mode
        'o': Operator-pending mode
        'i': Insert mode
        't': Terminal mode
        '!': Insert Insert and Command-line mode
    {lhs}: (string) left-hand side of the mapping, the keys we want to map
    {rhs}: (string or function) right-hand side of the mapping, the keys or function we want to execute after pressing {lhs}
    {opts}: (table) optional parameters
        silent: define a mapping that will not be echoed on the command line
        noremap: disable recursive mapping

--]]

vim.g.mapleader ="," 
vim.g.maplocalleader = ","

-- clear search results
vim.keymap.set("n", "<Leader><Space>", ":nohlsearch<CR>", {})

vim.keymap.set('n', '<Leader>w', ':write<CR>', {})
vim.keymap.set('n', '<Leader>s', ':source %<CR>', {})

vim.keymap.set('n', '<C-l>','<C-w>l',{})
vim.keymap.set('n', '<C-h>','<C-w>h',{})
vim.keymap.set('n', '<C-j>','<C-w>j',{})
vim.keymap.set('n', '<C-k>','<C-w>k',{})

-- system clipboard
vim.keymap.set({ "n", "v" }, "<Leader>y", '"+y', {})
vim.keymap.set({ "n" }, "<Leader>Y", '"+y$', {})

vim.keymap.set({ "n", "v" }, "<Leader>p", '"+p', {})
vim.keymap.set({ "n", "v" }, "<Leader>P", '"+P', {})
