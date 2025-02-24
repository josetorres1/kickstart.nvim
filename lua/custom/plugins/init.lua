-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'lbrayner/vim-rzip' },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require('noice').setup {
        lsp = {
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true,
          },
        },
        presets = {
          command_palette = true,
          bottom_search = true,
          long_message_to_split = true,
          -- inc_rename = true,
          lsp_doc_border = true,
        },
      }
    end,
  },
  { 'f-person/auto-dark-mode.nvim' },
  { 'f-person/git-blame.nvim', event = 'VeryLazy' },
}
