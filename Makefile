all: index.qmd
	Rscript -e 'quarto::quarto_render(output_format="html"); browseURL("docs/index.html")'

pdf: guide-intro.qmd
  Rscript -e 'quarto::quarto_render(output_format="pdf");'
