vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = true })

-- C++ CMAKE 
vim.api.nvim_set_keymap("i", "sd", "std::", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "qq", "<insert>::", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ccm", "<cmd>CMakeGenerate<CR>")
vim.keymap.set("n", "<leader>ccb", "<cmd>CMakeBuild   <CR>")
vim.keymap.set("n", "<leader>ccr", "<cmd>CMakeRun     <CR>")

-- RANDOM 
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>fms", "<cmd>CellularAutomaton scramble<CR>")
