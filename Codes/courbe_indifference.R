# Représentation d'une courbe d'indifférence
# Gaëtan LE FLOCH - Université Paris-Dauphine
# Microéconomie - L1 LSO

library(ggplot2)

x = 1:20
y = 10*(1/x)

df <- data.frame(x=x,
                 y=y)

chart <- ggplot(data=df, aes(x=x, y=y))  +
  geom_line() +
  coord_cartesian(xlim=c(0,17),
                  ylim=c(0,9),
                  expand=FALSE) +
  xlab('Bien 1') +
  ylab('Bien 2')

chart +
  geom_segment(x=2,y=0,xend=2,yend=5,linetype='dashed') +
  geom_text(aes(x=1.5,y=0.5),label='2')+
  geom_segment(x=0,y=5,xend=2,yend=5,linetype='dashed') +
  geom_text(aes(x=0.5,y=5.5),label='5') +
  geom_segment(x=10,y=0,xend=10,yend=1,linetype='dashed') +
  geom_text(aes(x=10.5,y=0.2),label='10')+
  geom_segment(x=0,y=1,xend=10,yend=1,linetype='dashed') +
  geom_text(aes(x=0.5,y=1.2),label='1')

