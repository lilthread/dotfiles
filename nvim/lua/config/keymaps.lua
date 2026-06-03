vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = true })

-- C++ CMAKE 
vim.api.nvim_set_keymap("i", "sd", "std::", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>cg", "<cmd>CMakeGenerate<CR>")
vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild   <CR>")
vim.keymap.set("n", "<leader>cr", "<cmd>CMakeRun     <CR>")

