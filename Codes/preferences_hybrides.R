# Représentation d'une courbe d'indifférence traduisant des préférences hybrides
# Gaëtan LE FLOCH - Université Paris-Dauphine
# Microéconomie - L1 LSO

x = 0:5
y = c(4,3.5,3,2.7,2.5,2.45)

df <- data.frame(x=x,
                 y=y)

chart <- ggplot(data=df, aes(x=x, y=y))  +
  geom_line() +
  coord_cartesian(xlim=c(0,5),
                  ylim=c(0,5),
                  expand=FALSE) +
  xlab('Bien 1') +
  ylab('Bien 2')

chart
