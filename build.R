## if you haven't installed buildDocs or staticdocs:
# library(devtools)
# install_github("hafen/buildDocs")
# install_github("hadley/staticdocs")

library(buildDocs)
library(staticdocs)

# make sure your working directory is set to repo base directory

brand <- "<a class='navbar-brand' href='http://tessera.io'>
  <img src='figures/icon.png' alt='tessera icon' width='30px' height='30px' style='margin-top: -6px;'>
  Tessera
</a>"
pill1 <- packageNavPill("https://github.com/tesseradata/trelliscope", docsActive = FALSE)
pill2 <- packageNavPill("https://github.com/tesseradata/trelliscope", docsActive = TRUE)

buildFunctionRef(
   packageLoc = "~/Documents/Code/Tessera/hafen/trelliscope",
   outLoc = ".",
   optTemplates = list(navpills = pill1, brand = brand),
   copyrightText = "Tessera"
)

buildDocs(
   docsLoc = "docs",
   outLoc = ".",
   pageList = c("1intro.Rmd", "2quickstart.Rmd", "3fundamentals.Rmd", "4displays.Rmd", "5viewer.Rmd", "6misc.Rmd"),
   optTemplates = list(navpills = pill2, brand = brand),
   copyrightText = "Tessera",
   root.dir = "."
)

