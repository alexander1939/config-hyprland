local map = vim.keymap.set

map("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- Ejemplo: abrir explorador con <leader>e
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Abrir árbol de archivos" })

-- Guarda con Ctrl+s
map("n", "<C-s>", ":w<CR>", { desc = "Guardar" })
map("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Guardar (insert mode)" })

