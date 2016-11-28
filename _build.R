#!/usr/bin/env Rscript

checkpoint::setSnapshot('2016-11-28')

rmarkdown::render(
    input = "index.Rmd", 
    output_format = "html_document", 
    output_file = "index.html"
)

