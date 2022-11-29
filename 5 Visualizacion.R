########################## [1] GRAFICOS BASICOS ##########################

########################## [1.1] GRAFICOS PREDETERMINADOS #####################

########################## [1.1.1] plot() #####################

### Valores Numericos
v <- sample(0:100, 100, replace = TRUE);
head(v);
class(v);
mean(v);
median(v)
sd(v)
plot(v); # Este es un diagrama de dispersion / scatter plot
v <- as.numeric(v);
plot(v); # Este es un diagrama de dispersion / scatter plot

### caracteres
v <- c("a", "b", "c");
plot(v); # Error
v <- c("1", "2", "3");
plot(v); # Este es un diagrama de dispersion / scatter plot

### logicos
v <- c(TRUE, FALSE, TRUE);
plot(v); # Este es un diagrama de dispersion / scatter plot

########################## [1.1.2] plot() personalizado #####################

### ejemplo 1
v <- sample(0:100, 100, replace = TRUE);
head(v);
plot(v); # Este es un diagrama de dispersion / scatter plot

# color elementos (col)
plot(v, col = "red");

# colores ejes (fg)
plot(v, col = "red", fg = "blue");

# formas (pch)
plot(v, col = "red", fg = "blue", pch = 3);
plot(v, col = "red", fg = "blue", pch = 11);

help(par); # que valores son posibles para pch?



# tipo (type)
plot(v, col = "red", fg = "blue", pch = 16, type = "l");
plot(v, col = "red", fg = "blue", pch = 16, type = "b");
#"p" - puntos
#"l" - lineas
#"b" - ambas
#"c" - lineas entrecortadas
#"o" -'sobrepuestas',
#"h" - histograma
#"s" - gradas
#"S" - otras gradas
#"n" - nada
help(plot);

# Titulo (main)
plot(v, col = "red", fg = "blue", pch = 16, type = "l", 
     main = "Mi primer grafico en R");

# titulos ejes (xlab y ylab)
plot(v, col = "red", fg = "blue", pch = 16, type = "l", 
     main = "Mi primer grafico en R", xlab = "x", ylab = "y");

# Rangos de ejes (xlim y ylim)
plot(v, col = "red", fg = "blue", pch = 16, type = "l",
     main = "Mi primer grafico en R", xlab = "x", ylab = "y", 
     xlim = c(10,90), ylim = c(20,100));

# Tipo de linea (lty)
plot(v, col = "red", fg = "blue", pch = 16, type = "l",
     main = "Mi primer grafico en R", xlab = "x", ylab = "y", 
     xlim = c(10,90), ylim = c(20,100),
     lty = 2);
help(par);
#0=blanco, 1=solido (default), 2=entrecortado, 3=puntos, 4=punto linea, 5=linea larga, 6=dos lineas

# Tipo de Fuente (font)
plot(v, col = "red", fg = "blue", pch = 16, type = "l",
     main = "Mi primer grafico en R", xlab = "x", ylab = "y", 
     xlim = c(10,90), ylim = c(20,100),
     lty = 2, font = 2);
help(par);

# Estilo de ejes (las) valores entre 1 y 4
plot(v, col = "red", fg = "blue", pch = 16, type = "l",
     main = "My first plot", xlab = "x", ylab = "y", 
     xlim = c(10,90), ylim = c(20,100),
     lty = 2, font = 2, las = 2);
help(par);

# tamaño del eje (cex.axis)
plot(v, col = "red", fg = "blue", pch = 16, type = "l",
     main = "My first plot", xlab = "x", ylab = "y", 
     xlim = c(10,90), ylim = c(20,100),
     lty = 2, font = 2, las = 1, cex.axis = 0.25); #Cambiemos a 2


### Otros parametros graficos
help(par);


########################## [1.2] barplot() Grafico de Barras #####################

# vector de texto
v <- sample(c("perro", "gato", "raton"), 100, replace = TRUE);
head(v);

# tabla de frecuencias
dummy <- c("a", "b", "a", "b", "c", "b");
dummy;
table(dummy);
table(v)
frequencies <- table(v);

# Grafico de barras
barplot(frequencies);

# color barras
barplot(frequencies, col = "green");

### otros parametros graficos
help(par);

# color eje
barplot(frequencies, col = "green", fg = "blue");

########################## [1.3] hist() histograma #####################

# vector numerico
v <- sample(0:100, 100, replace = TRUE);
head(v);

# histograma
hist(v);

# color
hist(v, col = "red" );

# bins personalizados
hist(v, col = "blue", breaks = 40);

# otros parametros
help(hist);

########################## [1.4] boxplot() Caja y Bigotes #####################

# Caja y Bigotes
boxplot(v);

# Agreguemos un outlier/valor atípico
v <- c(v, 1000);

# Graficar Caja y Bigotes
boxplot(v);

# Retirar Outliers (Outline es un parametro/funcion exclusiva de boxplot())
boxplot(v, outline = FALSE);

# mas paramentros de boxplot
help(boxplot);

########################## [1.5] density() #####################

# Vector numerico
v <- sample(0:100, 100, replace = TRUE);
head(v);
plot(density(v), type = "l", col = "blue"); #cambiemos el titulo


########################## [1.6] ecdf() #####################

# Graficar la Funcion de Distribucion Acumulada
plot(ecdf(v), col = "blue");
#E - Empirica
#C - aCumulativa
#D - Distribución
#F - Funcion

########################## [1.7] Multiples vectores en un grafico #####################
# Vectores numericos
v1 <- sample(0:100, 100, replace = TRUE);
v2 <- sample(0:25, 100, replace = TRUE);
v3 <- sample(50:75, 100, replace = TRUE);

# Plot v1
plot(v1, type = "l", col = "red");

# Añadir V2
lines(v2, type = "l", col = "blue");

# Añadir v3
lines(v3, type = "b", col = "black");

# Añadir leyenda
legend("bottomright", legend=c("vector1", "v2", "v3"),
       col=c("red", "blue", "green"), lty = c(1,2,1), cex=1)

#"bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right", "center"

# Leyenda fuera del grafico
legend("topright",  legend=c("vector1", "v2", "v3"),
       col=c("red", "blue", "green"), lty = c(1,2,1), cex=0.8,
       xpd = TRUE, inset=c(0,-0.2))


########################## [1.8] Multiples Graficos #####################
# Vectores Numericos
v1 <- sample(0:100, 100, replace = TRUE);
v2 <- sample(0:25, 100, replace = TRUE);
v3 <- sample(50:75, 100, replace = TRUE);
v4 <- sample(25:50, 100, replace = TRUE);

# Alistemos nuestro "canvas", nuestro espacio de trabajo
par(mfrow=c(2,2)) 

# Graficar
plot(v1, col = "red", ylim = c(0, 100));
plot(v2, col = "blue", ylim = c(0, 100));
plot(v3, col = "green", ylim = c(0, 100));
plot(v4, col = "black", ylim = c(0, 100));

# Alistemos nuestro "canvas", nuestro espacio de trabajo
par(mfrow=c(2,2), mai = c(0.1, 0.1, 0.1, 0.1))  #mai - margen (abajo, izquierda, arriba, derecha)
help(par)
# Graficar
plot(v1, col = "red", ylim = c(0, 100));
plot(v2, col = "blue", ylim = c(0, 100));
plot(v3, col = "green", ylim = c(0, 100));
plot(v4, col = "black", ylim = c(0, 100));

# Alistemos nuestro "canvas", nuestro espacio de trabajo
par(mfrow=c(4,1)) 

# Graficar verticalmente
plot(v1, col = "red", ylim = c(0, 100));
plot(v2, col = "blue", ylim = c(0, 100));
plot(v3, col = "green", ylim = c(0, 100));
plot(v4, col = "black", ylim = c(0, 100));

########################## [1.9] Reescribir eje #####################
# Alistemos nuestro "canvas", nuestro espacio de trabajo
par(mfrow=c(1,1), mai = c(1, 1, 1, 1)) 

# Vector Numerico
v <- sample(0:100, 50, replace = TRUE);

# Grafico Estandar
plot(v, type = "l", col = "red");

# quitar valores de etiqueta x
plot(v, type = "l", col = "red", xaxt = "n");

# Personalizar eje
axis(side=1, at = seq(0, length(v), by = 5), 
     labels = seq(0, length(v), by = 5),
     cex.axis=4)

# Personalizar eje
axis(side=1, at = seq(0, length(v), by = 5), 
     labels = letters[1:11],
     cex.axis=1)


########################## [2] ggplot ##########################

######################## [2.1] Instalar y Cargar #######################
install.packages("ggplot2");
library(ggplot2);

######################## [2.2] Conceptos iniciales #######################

# ggplot no funciona con vectores!
v <- sample(0:100, 100, replace = TRUE);
ggplot(v); 

# Funciona con data frames y tablas
data();
head(mtcars);
help(mtcars);
ggplot(mtcars); # No grafica nada, por que?

# ggplot no imprimio/genero nada. Ggplot funciona en capas, debemos agregar
# cada capa a la vez en lugar de una linea muy larga de plot()


######################## [2.3] Agregando Capas en ggplot #######################

### creacion
grafico <- ggplot(mtcars, 
                  aes(x=1:nrow(mtcars), y = wt));
grafico;
#por que son asi los ejes? mirar nrow y hacer un boxplot de wt
### agregar capas
grafico <- grafico + geom_point();
grafico;

# argumentos especificos de una capa
help(geom_point);
grafico <- grafico + geom_point(colour = "red");
grafico;

#color en funcion de otra variable
unique(mtcars$gear)
table(mtcars$gear)

grafico <- grafico + geom_point(
  aes(colour = as.character(gear)));
grafico;

### agregar capa para establecer la paleta de color
grafico <- grafico + 
  scale_colour_brewer(palette = "Paired") #Dark2, Accent ...
grafico;

#Paletas
#Divergente - Excelente para ver la intensidad de una variable
#BrBG, PiYG, PRGn, PuOr, RdBu, RdGy, RdYlBu, RdYlGn, Spectral

#Cualitativas - Excelente para categorias
#Accent, Dark2, Paired, Pastel1, Pastel2, Set1, Set2, Set3

#Sequential
#Blues, BuGn, BuPu, GnBu, Greens, Greys, Oranges, OrRd, PuBu, PuBuGn, PuRd, Purples, RdPu, Reds, YlGn, YlGnBu, YlOrBr, YlOrRd

#Info sobre paletas https://ggplot2.tidyverse.org/reference/scale_brewer.html

help(scale_colour_brewer)

### Borrar leyenda
grafico <- grafico + theme(legend.position="None")  # retirar leyenda
grafico;

### Ajustar los ejes del grafico
grafico <- grafico + xlim(c(0, 50)) + ylim(c(3, 4))
grafico;



### Agregar capa para poner titulos principales y de ejes
grafico <- grafico + 
  labs(title="Peso del Carro (Toneladas)", subtitle="De mtcars", 
       y="Peso", x="n", caption="Data de Pesos de mtcars");
grafico;


### Agregar capa para establecer valores de eje
grafico <- grafico +  
  scale_x_continuous(breaks=seq(0, nrow(mtcars), 10),
                                         labels = c("c1","c2","c3","c4"));
grafico;

### Agregar capa para invertir ejes
grafico <- grafico +  scale_x_reverse();
grafico;

### Agregar capa para cambiar el tema
grafico <- grafico + theme_classic();
grafico;

grafico <- grafico + theme_linedraw();
grafico;

grafico <- grafico + theme_minimal();
grafico;

grafico <- grafico + theme_gray();
grafico;

grafico <- grafico + theme_dark();
grafico

# Lista de temas: https://ggplot2.tidyverse.org/reference/ggtheme.html