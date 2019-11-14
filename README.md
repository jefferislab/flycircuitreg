# flycircuitreg

<!-- badges: start -->
<!-- badges: end -->

This repository includes some sample analyses of different registration
approaches for http://flycircuit.tw data.

It is based on the [natverse](http://natverse.org) neuroanatomical data
processing suite. See that website for install details, but in R

```
if(!requireNamespace('remotes', quietly=TRUE))
  install.packages('remotes')
remotes::install_github("natverse/natverse", dependencies=TRUE)
```

should do the trick. See http://natverse.org/install/ for further details.
