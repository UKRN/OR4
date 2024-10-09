pages <- list.files(pattern = "(case-study|guide)-.*\\.qmd") |>
  setdiff("guide-contents.qmd")

for (page in pages) {
  quarto::quarto_render(page, output_format = "pdf")
  pdf <- sub("\\.qmd", "\\.pdf", page)
  file.rename(
    file.path("docs", pdf),
    file.path("resources", pdf)
  )
}

