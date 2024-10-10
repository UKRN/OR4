pages <- list.files(pattern = "(case-study|guide)-.*\\.qmd") |>
  setdiff("guide-contents.qmd")

for (page in pages) {
  quarto::quarto_render(page, output_format = "pdf", profile = "guide")
}

# quarto::quarto_render(output_format = "pdf", profile = "guide")
# pdfs <- list.files("docs", "\\.pdf", full.names = TRUE)
#
# for (pdf in pdfs) {
#   file.rename(pdf, gsub("docs/", "resources/", pdf))
# }
