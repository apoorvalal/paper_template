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


mtcars %>% glimpse

mtcars %>%
  ggplot(aes(wt, mpg)) +
  geom_point() + geom_smooth() +
  facet_wrap( ~ as.factor(cyl), nrow = 2)  ->
  p0

p0 %>% ggsave("../output/figures/fig.pdf", .,  device = cairo_pdf)
