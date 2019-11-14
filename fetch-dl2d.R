# This script is to prepare some sample data for comparison
# It is included in the repository for information 
# but cannot be run without the traces.rds object 

# these are the skeletons shared immediately after the 2012 PLoS Comp Biol
# https://journals.plos.org/ploscompbiol/article/authors?id=10.1371/journal.pcbi.1002658
# these have extra small branches compared with some
fctraces=readRDS('/GD/projects/ChiangReanalysis/data/traces.rds')
library(flycircuit)
library(natverse)
plot3d(sample(fctraces, 50))
plot3d(FCWB)


# choose some neurons that should be similar
# Pick DL2d projection neurons which are very numerous
gloms=flycircuit::fc_glom()
table(gloms)

# note we are still using "gene_name" as the default id
# e.g. FruMARCM-F001624_seg001
dl2dgns=names(which(gloms=='DL2d'))
# this converts into "neuron id" which is the preferred flycircuit id now
# e.g. fru-F-300093
dl2dids=fc_neuron(dl2dgns)

# these are the neurons on the right hand side
# just selected using 
# plot3d(dl2dgns, db=fctraces)
# find.neuron(db=fctraces[dl2dgns])
dl2.rhs = c(
  "FruMARCM-F001637_seg001",
  "DvGlutMARCM-F003868_seg001",
  "DvGlutMARCM-F004319_seg001",
  "DvGlutMARCM-F1987_seg1",
  "DvGlutMARCM-F003154_seg001",
  "DvGlutMARCM-F126_seg1",
  "DvGlutMARCM-F886_seg1",
  "DvGlutMARCM-F938_seg1",
  "DvGlutMARCM-F1876_seg1",
  "DvGlutMARCM-F002425_seg001",
  "DvGlutMARCM-F002447_seg001",
  "DvGlutMARCM-F144_seg3",
  "DvGlutMARCM-F1500_seg1",
  "DvGlutMARCM-F1571_seg1",
  "DvGlutMARCM-F1781_seg1",
  "DvGlutMARCM-F1885_seg1",
  "DvGlutMARCM-F003053_seg001",
  "DvGlutMARCM-F003077_seg001",
  "DvGlutMARCM-F003133_seg001",
  "DvGlutMARCM-F003332_seg001",
  "DvGlutMARCM-F003379_seg001",
  "DvGlutMARCM-F003784_seg001",
  "DvGlutMARCM-F004501_seg001",
  "DvGlutMARCM-F004521_seg001",
  "DvGlutMARCM-F224-L_seg1",
  "DvGlutMARCM-F281-X2_seg2",
  "DvGlutMARCM-F1761_seg2",
  "DvGlutMARCM-F2175_seg1",
  "DvGlutMARCM-F002676_seg001",
  "DvGlutMARCM-F003005_seg001",
  "DvGlutMARCM-F003022_seg001",
  "DvGlutMARCM-F004062_seg001",
  "DvGlutMARCM-F002591_seg001",
  "DvGlutMARCM-F002640_seg001",
  "DvGlutMARCM-F002641_seg001",
  "DvGlutMARCM-F002711_seg002",
  "DvGlutMARCM-F002775_seg002",
  "DvGlutMARCM-F002837_seg001",
  "DvGlutMARCM-F002841_seg001",
  "DvGlutMARCM-F003032_seg001",
  "DvGlutMARCM-F002366_seg001",
  "DvGlutMARCM-F003065_seg001",
  "DvGlutMARCM-F003101_seg001",
  "DvGlutMARCM-F003480_seg002",
  "DvGlutMARCM-F003854_seg001",
  "DvGlutMARCM-F003866_seg001",
  "DvGlutMARCM-F1457_seg1",
  "DvGlutMARCM-F002583_seg001",
  "DvGlutMARCM-F002605_seg001",
  "DvGlutMARCM-F002623_seg001",
  "DvGlutMARCM-F002968_seg001",
  "DvGlutMARCM-F002992_seg001",
  "DvGlutMARCM-F003037_seg001",
  "DvGlutMARCM-F003582_seg001",
  "DvGlutMARCM-F003730_seg001",
  "FruMARCM-M000636_seg001",
  "FruMARCM-M000600_seg002",
  "FruMARCM-M001574_seg002",
  "FruMARCM-M001833_seg001",
  "DvGlutMARCM-F004485_seg001",
  "DvGlutMARCM-F003151_seg001"
)

dl2d.cam=fctraces[dl2.rhs]
dl2d.fc <- fc_read_neurons(fc_neuron(dl2.rhs))
dl2d.fc.orig <- fc_read_neurons(fc_neuron(dl2.rhs), xform = F)

save(dl2d.cam, dl2d.fc, dl2d.fc.orig, file = 'dl2d.rda')
