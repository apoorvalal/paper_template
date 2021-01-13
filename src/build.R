# %% ####################################################
rm(list = ls())
library(LalRUtils)
LalRUtils::libreq(tidyverse, data.table, fixest, rio, foreach, magrittr,
                  janitor, tictoc, modelsummary, hablar, rlist)
theme_set(lal_plot_theme())
options(repr.plot.width=12, repr.plot.height=9)
options(ggplot2.discrete.fill = RColorBrewer::brewer.pal(9, "Set1"))
options(ggplot2.discrete.colour = RColorBrewer::brewer.pal(9, "Set1"))
options(ggplot2.continuous.fill = "viridis"); options(ggplot2.continuous.colour = "viridis")
set.seed(42)
# %% ####################################################
