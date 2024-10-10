all: index.qmd
	Rscript -e 'quarto::quarto_render(output_format="html", profile="website"); browseURL("docs/index.html")'

pdf: guide-intro.qmd
  Rscript -e 'quarto::quarto_render("guide-intro.qmd", output_format="pdf", profile="guide");'
