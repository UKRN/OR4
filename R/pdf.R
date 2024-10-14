# pages <- list.files(pattern = "(case-study|guide)-.*\\.qmd") |>
#   setdiff("guide-contents.qmd")
#
# for (page in pages) {
#   quarto::quarto_render(page, output_format = "pdf", profile = "guide")
# }

quarto::quarto_render(output_format = "pdf", profile = "guide")
