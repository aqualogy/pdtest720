##################################################
# _install.R
#
# author: arnd.weber@bafg.de
# date:   15.06.2018
#
# purpose: 
#   - install R packages required for the CI jobs
#
##################################################

# install dependencies
packages <- c("Rdpack", "knitr", "rmarkdown", "stringr", "devtools", "pkgdown", 
              "roxygen2")

for (a_package in packages) {
    if (! (a_package %in% installed.packages()[, "Package"])) {
        install.packages(a_package, 
                         repos = "https://ftp.gwdg.de/pub/misc/cran/", 
                         dependencies = TRUE, quiet = FALSE)
    }
}

# exit
q("no")
