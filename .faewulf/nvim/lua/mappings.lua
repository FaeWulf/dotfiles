--$HOME/.vim/init/mapping.vimrc

--nvim tree
--More available functions:
--NvimTreeOpen
--NvimTreeClose
--NvimTreeFocus
--NvimTreeFindFileToggle
--NvimTreeResize
--NvimTreeCollapse
--NvimTreeCollapseKeepBuffers 

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-s>", ":w!<cr>", {noremap = true})

