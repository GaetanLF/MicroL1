# Mise en perspective de la courbe d'indifférence et de la contrainte budgétaire
# Gaëtan LE FLOCH - Université Paris-Dauphine
# Microéconomie - L1 LSO

library(ggplot2)

x = c(1:20,0)
y = 10*(1/x)
y1 = 20*(1/x)
y2 = 30*(1/x)
y3 = 40*(1/x)
contrainte = -(20/(5**2))*(x - 5) + 4 
c1 = -(10/(4**2))*(x - 4) + (10/4)
c2 = (-30/7**2)*(x-7) + (30/7)
c3 = (-40/8**2)*(x-8) + (40/8)

df <- data.frame(x=x,
                 y=y,y1=y1,y2=y2,y3=y3,contrainte=contrainte,
                 c1=c1,
                 c2=c2,
                 c3=c3)

chart <- ggplot(data=df, aes(x=x))  +
  geom_line(aes(y=y)) +
  geom_line(aes(y=y1)) +
  geom_line(aes(y=y2)) +
  geom_line(aes(y=y3)) +
  geom_line(aes(y=contrainte)) +
  geom_line(aes(y=c1)) +
  geom_line(aes(y=c2)) +
  geom_line(aes(y=c3))+
  geom_point(aes(x=0,y=0),colour='red',size=2) +
  geom_point(aes(x=4,y=10/4),colour='red',size=2) +
  geom_point(aes(x=5,y=20/5),colour='red',size=2) +
  geom_point(aes(x=7,y=30/7),colour='red',size=2) +
  geom_point(aes(x=8, y=40/8),colour='red',size=2) +
  coord_cartesian(xlim=c(0,17),
                  ylim=c(0,9),
                  expand=FALSE) +
  geom_segment(aes(x=0,y=0,xend=4,yend=10/4),linetype='dashed',colour='red') +
  geom_segment(aes(x=4,y=10/4,xend=5,yend=20/5),linetype='dashed',colour='red') +
  geom_segment(aes(x=5,y=20/5,xend=7,yend=30/7),linetype='dashed',colour='red') +
  geom_segment(aes(x=7,y=30/7,xend=8,yend=40/8),linetype='dashed',colour='red') +
  xlab('Bien 1') +
  ylab('Bien 2')

chart