##################################################
# _build.R
#
# author: arnd.weber@bafg.de
# date:   15.06.2018
#
# purpose: 
#   - build the repository version of pdtest
#
##################################################

# language settings
Sys.setlocale(category = "LC_ALL", locale = "en_US.UTF-8")
Sys.setlocale(category = "LC_PAPER", locale = "en_US.UTF-8")
Sys.setlocale(category = "LC_MEASUREMENT", locale = "en_US.UTF-8")
Sys.setlocale(category = "LC_MESSAGES", locale = "en_US.UTF-8")
sessionInfo()

# load the packages
require(devtools)
require(knitr)
require(rmarkdown)
require(pkgdown)

# build
devtools::load_all(".")
devtools::document(".")
devtools::check(".")
devtools::build(".")

# pkgdown
pkgdown::clean_site(".")
pkgdown::build_site(".", new_process = FALSE)

q("no")

