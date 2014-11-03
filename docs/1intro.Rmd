# Trelliscope Tutorial #

## Intro ##

### Background ###

Trelliscope provides a way to flexibly visualize large, complex data in great detail from within the R statistical programming environment.  Trelliscope is a component in the [Tessera](tessera.io) environment.

For those familiar with [Trellis Display](http://cm.bell-labs.com/cm/ms/departments/sia/project/trellis/), [faceting in ggplot](http://docs.ggplot2.org/0.9.3.1/facet_wrap.html), or the notion of [small multiples](http://en.wikipedia.org/wiki/Small_multiple), Trelliscope provides a scalable way to break a set of data into pieces, apply a plot method to each piece, and then arrange those plots in a grid and interactively sort, filter, and query panels of the display based on metrics of interest.  With Trelliscope, we are able to create multipanel displays on data with a very large number of subsets and view them in an interactive and meaningful way.

Another important function of trelliscope is the organization of all of the Trelliscope displays and other visual artifacts we have deemed worthy of presentation into what we call a "visualization database", which can be easily shared with other researchers in a way that they can interact with.

To start getting a feel for Trelliscope, continue to the next section, "Quickstart".


#### Reference

Related projects:
   - [datadr][datadr]: R package providing the D&R framework
   - [RHIPE][rhipe]: the engine that enables D&R to work with large, complex data

References:
   - [tessera.io][tessera.io]
   - [Trelliscope: A System for Detailed Visualization in the Deep Analysis of Large Complex Data][trspaper]
   - [Large complex data: divide and recombine (D&R) with RHIPE][drpaper]
   - [Visualization Databases for the Analysis of Large Complex Datasets][vdbpaper]

[rhipe]: http://github.com/tesseradata/RHIPE
[datadr]: http://github.com/tesseradata/datadr
[tessera.io]: http://tessera.io
[trspaper]: http://ml.stat.purdue.edu/gaby/trelliscope.ldav.2013.pdf
[drpaper]: http://onlinelibrary.wiley.com/doi/10.1002/sta4.7/full
[vdbpaper]: http://jmlr.csail.mit.edu/proceedings/papers/v5/guha09a/guha09a.pdf
[trellis]: http://www.cs.ubc.ca/~tmm/courses/infovis/readings/trellis.jstor.pdf

