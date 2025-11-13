return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = 'markdown',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      heading = {
        -- icons = { '󰲡  ', '󰲣  ', '󰲥  ', '󰲧  ', '󰲩  ', '󰲫  ' },
        border = true,
        -- border_virtual = true,
      },
      bullet = {
        -- icons = { '● ', '○ ', '◆ ', '◇ ' },
      },
      pipe_table = {
        -- border_enabled = true,
        -- border_virtual = true,
        cell = 'padded',
        filler = '',
        -- alignment_indicator = '─',
        style = 'full',
      },
      indent = {
        enabled = true,
        icon = '',
      },
      latex = { enabled = false },
    },
    config = function()
      vim.keymap.set('n', '<leader>tr', require('render-markdown').toggle, { desc = '[T]oggle [R]ender' })
    end,
  },
}
