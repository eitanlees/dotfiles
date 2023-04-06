vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", vim.lsp.buf.format)

-- I want to add a keymap which inserts the
-- date but I have not been able to figure
-- it out yet. Ugh!
--
-- This is the dream
-- :r!date "+\%F"
-- or
-- :put=system('date +%F')<CR>
