return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'UiEnter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'cpp' },
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = false, disable = { 'ruby' } },
    },
    -- config = function(_, opts)
    --   require('nvim-treesitter').setup(opts)
    --
    -- INFO: I CAN ACTUALLY ADD CUSTOM FILETYPES TO BE PROCESSED WITH EXISTING CONFIGS
    -- vim.treesitter.language.register(lang, filetype)

    -- end,
  },
}
