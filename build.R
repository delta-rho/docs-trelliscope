## if you haven't installed buildDocs:
# library(devtools)
# install_github("buildDocs", "hafen")

library(buildDocs)
library(staticdocs)

# make sure your working directory is set to repo base directory

buildFunctionRef(
   packageLoc = "~/Documents/Code/Tessera/tesseradata/trelliscope",
   outLoc = ".",
   navPill = packageNavPill("https://github.com/tesseradata/trelliscope", docsActive = FALSE),
   copyrightText = "Tessera"
)

buildDocs(
   docsLoc = "docs",
   outLoc = ".",
   pageList = c("1intro.Rmd", "2displays.Rmd", "3viewer.Rmd", "5misc.Rmd"),
   navPill = packageNavPill("https://github.com/tesseradata/datadr"),
   copyrightText = "Tessera",
   root.dir = "."
)
