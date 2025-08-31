local markdown_renders = {
  h1bg = { fg = '#ffdfb3', bg = '#404044', bold = true },
  h2bg = { fg = '#d5ff80', bg = '#3a453c', bold = true },
  h3bg = { fg = '#73d0ff', bg = '#2b3e4f', bold = true },
  h4bg = { fg = '#ffd173', bg = '#403e3a', bold = true },
  h5bg = { fg = '#ffad66', bg = '#403938', bold = true },
  h6bg = { fg = '#f28779', bg = '#3e333b', bold = true },

  mdTableHead = { fg = '#c28c59', bold = true },
  mdTableRow = { fg = '#c55058' },
}

return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('onedark').setup {
        style = 'cool',
        highlights = {
          RenderMarkdownH1Bg = markdown_renders.h1bg,
          RenderMarkdownH2Bg = markdown_renders.h2bg,
          RenderMarkdownH3Bg = markdown_renders.h3bg,
          RenderMarkdownH4Bg = markdown_renders.h4bg,
          RenderMarkdownH5Bg = markdown_renders.h5bg,
          RenderMarkdownH6Bg = markdown_renders.h6bg,

          RenderMarkdownH1 = markdown_renders.h1bg,
          RenderMarkdownH2 = markdown_renders.h2bg,
          RenderMarkdownH3 = markdown_renders.h3bg,
          RenderMarkdownH4 = markdown_renders.h4bg,
          RenderMarkdownH5 = markdown_renders.h5bg,
          RenderMarkdownH6 = markdown_renders.h6bg,

          RenderMarkdownTableHead = markdown_renders.mdTableHead,
          RenderMarkdownTableRow = markdown_renders.mdTableRow,
        },
      }
      require('onedark').load()
    end,
  },
}
