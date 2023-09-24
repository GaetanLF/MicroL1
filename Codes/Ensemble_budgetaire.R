# Représentation de l'ensemble budgétaire
# Gaëtan LE FLOCH - Université Paris-Dauphine
# Microéconomie - L1 LSO

install.packages('ggplot2')
library(ggplot2)

df <- data.frame(x=c(0,10),
                 y=c(10,0))

chart <- ggplot(data=df, aes(x=x, y=y)) +
  geom_line() +
  coord_cartesian(xlim=c(0,12),
                  ylim=c(0,12),
                  expand=FALSE) +
  xlab('Bien 1') +
  ylab('Bien 2')

chart +
  geom_area(fill='#969799') +
  theme(
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank()) +
  geom_text(aes(x=2,y=2),label = 'A') +
  geom_text(aes(x=5,y=5.5),label='B') +
  geom_text(aes(x=8,y=8),label='C')
