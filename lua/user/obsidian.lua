require("obsidian").setup({
  dir = "~/logseq",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  },
  daily_notes = {
    folder = "000-D",
  },
  notes_subdir = "001-pages",
})
