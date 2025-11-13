return {
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'UiEnter',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      indent = { char = '┆' },
    },
  },
}
