# individual guideand case study pages
pages <- list.files(pattern = "(case-study|guide)-.*\\.qmd") |>
  setdiff("guide-contents.qmd")

for (page in pages) {
  quarto::quarto_render(page, output_format = "pdf", profile = "guide")
}



# full guide
file.rename("guide/index.md", "index.md")
quarto::quarto_render(output_format = "pdf",
                      profile = "guidebook",
                      output_file = "or4-guide.pdf")
file.rename("index.md", "guide/index.md")
