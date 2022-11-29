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
max(sin_encabezado$V1)
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
View(encabezados_personalizados)
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
colnames(EC)

#Que paises estamos analizando en esta base? unique()
unique(EC$country_region)

#Que provincias (sub_region_1) estamos analizando en esta base? unique()
unique(EC$sub_region_1)

#Cuantas ciudades (sub_region_2) estamos analizando en esta base? unique() y length()
length(unique(EC$sub_region_2))
length((1:20))
#Corregir la codificacion, volver a leer con la codificacion correcta ("UTF-8")
EC <- read.csv("data/2020_EC_Region_Mobility_Report.csv", header = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")

#Revisar cantones 
unique(EC$sub_region_2)

#corregir Ruminahui (gsub) y asignar el nuevo vector a la base
EC$sub_region_2<-gsub(" Canton","",EC$sub_region_2)
#trabajar con fechas

EC$date<-as.Date(as.character(EC$date), "%Y-%m-%d", tryFormats = c("%Y-%m-%d", "%Y/%m/%d"))

#Fecha maxima
max(EC$date)

#Fecha minima
min(EC$date)

#visualizando Retail
plot(EC$retail_and_recreation_percent_change_from_baseline)

#Escogamos unicamente los datos de Ecuador "", guardemos la data en un nuevo objeto llamado "pais"
pais<-EC[EC$sub_region_1=="",]

#Grafiquemos Retail, tipo linea
plot(pais$retail_and_recreation_percent_change_from_baseline, type="l")
help(plot)
#Utilicemos fecha ~ para agregar en el eje x la fecha
plot(pais$retail_and_recreation_percent_change_from_baseline~pais$date, type="l")

#Grafiquemos Parques, agreguemos usando lines() en rojo
lines(pais$parks_percent_change_from_baseline~pais$date, type="l", col="red")

#Grafiquemos Supermercados, agreguemos usando line() en azul
lines(pais$grocery_and_pharmacy_percent_change_from_baseline~pais$date, type="l", col="blue")
########################## [2] TXT #####################
carros<-read.delim("data/mtcars.txt", 
           stringsAsFactor = FALSE, sep = " ", header = TRUE)
names(carros)


########################## [3] Excel #####################
install.packages("readxl")
library("readxl")
tlf <- read_excel("data/Arcotel.xlsx")
View(tlf)
tlf[tlf$Fecha==max(tlf$Fecha),7]
bancos <- read_excel("data/Balances Bancos.xlsx")

#Que columnas tengo en bancos?
names(bancos)
unique(bancos$Banco)
#Que banco es el mas grande en activos
bancos[bancos$`Activos (Act)`==max(bancos$`Activos (Act)`),"Banco"]

#Graficar con barplot los activos, usar banco de leyenda
barplot(bancos$`Activos (Act)`~bancos$Banco,las=2)

#Graficar con barplot utilidad
df<-bancos[order(bancos$Utilidad),c("Banco","Activos (Act)","Utilidad")]
help(barplot)
barplot(df$Utilidad~df$Banco,las=2)
#Graficar el ROA*
df$ROA<-df$Utilidad/df$`Activos (Act)`*100
barplot(df$ROA~df$Banco,las=2,xlab = "Banco",ylab = "ROA en porcentajes")
View(df)
########################## [4] Archivo online #####################
vital<-read.csv("https://github.com/josedsj/datasets/blob/master/vital.csv",skip = 11, sep=",",header = FALSE)
vital <- read.csv("data/vital.csv")
View(vital)
