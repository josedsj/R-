#Código Para inferir el género según el nombre
df=data.frame(nombres=c("Ana","Andrea","Julián","Christian","Paula"),
              edad=c(15,21,42,8,35));df
install.packages("genero")
library(genero)
genero("paul")
genero(c("Ximena","Arturo"))
genero(df["nombres"])
