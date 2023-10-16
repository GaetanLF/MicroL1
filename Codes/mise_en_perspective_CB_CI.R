# Mise en perspective de la courbe d'indifférence et de la contrainte budgétaire
# Gaëtan LE FLOCH - Université Paris-Dauphine
# Microéconomie - L1 LSO

library(ggplot2)

x = c(1:20,0)
y = 10*(1/x)
y1 = 20*(1/x)
y2 = 30*(1/x)
y3 = 40*(1/x)
contrainte = -(20/(5**2))*(x - 5) + 4 # Equation de la tangente pour x=5

df <- data.frame(x=x,
                 y=y,y1=y1,y2=y2,y3=y3,contrainte=contrainte)

chart <- ggplot(data=df, aes(x=x))  +
  geom_line(aes(y=y),color='purple') +
  geom_line(aes(y=y1)) +
  geom_line(aes(y=y2),color='red') +
  geom_line(aes(y=y3),color='red') +
  geom_line(aes(y=contrainte)) +
  coord_cartesian(xlim=c(0,17),
                  ylim=c(0,9),
                  expand=FALSE) +
  xlab('Bien 1') +
  ylab('Bien 2')

chart