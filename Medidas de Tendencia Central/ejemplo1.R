# URL de la fuente
#https://bookdown.org/gboccardo/manual-ED-UCH/estadistica-descriptiva-con-rstudio.html

install.packages("modeest") # Instalar Libreria
library(modeest) # Activar Libreria Moda

#Medidas de tendencia Central

#Ejercicio 1
#Los datos corresponden a las edad de unos niños

datos1<-c(1,1,3,1,3,3)


#Calculo de la media
media<-mean(datos1)
media

#Calculo de la mediana
mediana<-median(datos1)
mediana

#Calculo de la moda
moda<-mfv(datos1)
moda