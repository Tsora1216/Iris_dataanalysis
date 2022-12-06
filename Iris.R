df <- iris
str(df)
summary(df)
library(GGally)
# 散布図行列
ggpairs(df,
    columns = 1:4,
    mapping = aes(fill = Species, colour = Species),
    upper = list(continuous = wrap('points', alpha = 0.5)),
    diag = list(continuous = wrap('densityDiag', alpha = 0.5)),
    lower = list(continuous = wrap('points', alpha = 0.5)),
    legend = 2) +
theme(legend.position = 'bottom')