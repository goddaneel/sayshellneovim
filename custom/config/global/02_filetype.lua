--- vim.api.nvim_create_autocmd
-- global
vim.api.nvim_create_autocmd(
"FileType",
{
        callback = function()
                vim.o.formatoptions = "tcqj"
        end
}
)

