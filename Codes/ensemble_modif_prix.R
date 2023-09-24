# Représentation de l'ensemble budgétaire avec effet de variation
# des prix relatifs
# Gaëtan LE FLOCH - Université Paris-Dauphine
# Microéconomie - L1 LSO

install.packages(c('ggplot2','latex2exp'))
library(ggplot2)
library(latex2exp)

df <- data.frame(x=c(0,10),
                 y=c(10,0))

chart <- ggplot(data=df, aes(x=x, y=y)) +
  geom_line(linetype='dashed') +
  coord_cartesian(xlim=c(0,12),
                  ylim=c(0,12),
                  expand=FALSE) +
  xlab('Bien 1') +
  ylab('Bien 2')

chart +
  theme(
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank()) +
  geom_text(aes(x=10,y=1),label=TeX('$\\frac{R}{p_{1}}$')) +
  geom_segment(aes(x=0,y=10,xend=6,yend=0)) +
  geom_text(aes(x=6.3,y=1),label=TeX('$\\frac{R}{p_{1}^{new}}$'))

