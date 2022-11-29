########################## LECTURA DE BASES ##########################

########################## [1] CSV #####################

########################## [1.1] Donde estoy? #####################


getwd()#Consigo donde estoy
list.files()#que hay donde estoy
setwd("C:/Users/jd/Downloads/Lectura y Procesamiento/")#establezco a donde quiero ir
list.files()#que hay donde estoy

#Leer archivos CSV con encabezado
autos <- read.csv("data/auto-mpg.csv", 
                 header = TRUE, 
                 sep = ",",
                 stringsAsFactors = FALSE)
names(autos)

#Resumen de mi base
summary(autos)

#Leer archivos CSV sin encabezado

sin_encabezado <- read.csv("data/auto-mpg-noheader.csv", header = FALSE)
head(sin_encabezado, 3)
names(sin_encabezado)

sin_sentido <- read.csv("data/auto-mpg-noheader.csv")
head(sin_sentido, 4)
names(sin_sentido)

#Agregar encabezados
##Opcion 1, desde lectura

encabezados_personalizados <- 
  read.csv("data/auto-mpg-noheader.csv",
           header = F, 
           col.names = c("numero", "millas_por_galeon", "cilindrada", 
                         "desplazamiento", "caballos_de_potencia", 
                         "peso", "aceleracion", "anio", "modelo"))
names(encabezados_personalizados)

##Opcion 2, después de la lectura
encabezados_personalizados <- 
  read.csv("data/auto-mpg-noheader.csv",
           header = FALSE)
names(encabezados_personalizados)
colnames(encabezados_personalizados)<-c("numero", "millas_por_galeon", "cilindrada", 
                                      "desplazamiento", "caballos_de_potencia", 
                                      "peso", "aceleracion", "anio", "modelo")

names(encabezados_personalizados)


#Ejercicio
#Cargar la data del archivo "2020_EC_Region_Mobility_Report.csv", sin cadenas como factores
EC <- read.csv("data/2020_EC_Region_Mobility_Report.csv", header = TRUE, stringsAsFactors = FALSE)

#Que columnas hay en esta base, usar names()


#Que paises estamos analizando en esta base? unique()


#Que provincias (sub_region_1) estamos analizando en esta base? unique()


#Cuantas ciudades (sub_region_2) estamos analizando en esta base? unique() y length()


#Corregir la codificacion, volver a leer con la codificacion correcta ("UTF-8")


#Revisar cantones 


#corregir Ruminahui (gsub) y asignar el nuevo vector a la base

#trabajar con fechas

EC$date<-as.Date(as.character(EC$date), "%Y-%m-%d", tryFormats = c("%Y-%m-%d", "%Y/%m/%d"))

#Fecha maxima


#Fecha minima


#visualizando Retail


#Escogamos unicamente los datos de Ecuador "", guardemos la data en un nuevo objeto llamado "pais"


#Grafiquemos Retail, tipo linea


#Utilicemos fecha ~ para agregar en el eje x la fecha


#Grafiquemos Parques, agreguemos usando line() en rojo


#Grafiquemos Supermercados, agreguemos usando line() en azul

########################## [2] TXT #####################
carros<-read.delim("data/mtcars.txt", 
           stringsAsFactor = FALSE, sep = " ", header = TRUE)
names(carros)


########################## [3] Excel #####################
install.packages("readxl")
library("readxl")
tlf <- read_excel("data/Arcotel.xlsx")
View(tlf)

bancos <- read_excel("")

#Que columnas tengo en bancos?


#Que banco es el mas grande en activos


#Graficar con barplot los activos, usar banco de leyenda


#Graficar con barplot utilidad
bancos[order(bancos$Utilidad),c("Banco","Utilidad")]


#Graficar el ROA*

########################## [4] Archivo online #####################
vital<-read.csv("https://github.com/josedsj/datasets/blob/master/vital.csv")
#vital <- read.csv("data/vital.csv")
vital
