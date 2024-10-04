guides <- list.files(pattern = "guide-\\d+.*\\.qmd")

for (guide in guides) {
  #guide <- "case-study-bristol.qmd"
  quarto::quarto_render(guide, output_format="pdf");
  file.rename(
    paste0("docs/", sub("\\.qmd", "\\.pdf", guide)),
    paste0("resources/", sub("\\.qmd", "\\.pdf", guide))
  )
}

