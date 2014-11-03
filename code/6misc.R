

# convert byCounty to a localDiskConn object
byCountyLD <- convert(byCounty, 
   localDiskConn(file.path(tempdir(), "byCounty")))



# make display using local disk connection as input
makeDisplay(byCountyLD, ...)



# convert byCounty to hdfsConn
byCountyHDFS <- convert(byCounty, 
   hdfsConn("/tmp/byCounty"))



# make byCountyHDFS subsets extractable by key
byCountyHDFS <- makeExtractable(byCountyHDFS)



# make display using local disk connection as input
makeDisplay(byCountyHDFS, ...)


