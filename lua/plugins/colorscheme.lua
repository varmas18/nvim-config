return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {"askfiy/visual_studio_code"},

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "visual_studio_code",
    },
  }
}