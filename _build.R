#!/usr/bin/env Rscript

devtools::install_github('ukgovdatascience/eesectors')
rmarkdown::render(
    input = "index.Rmd", 
    output_format = "html_document", 
    output_file = "index.html"
)

