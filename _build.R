#!/usr/bin/env Rscript

rmarkdown::render(
    input = "index.Rmd", 
    output_format = "html_document", 
    output_file = "index.html"
)

