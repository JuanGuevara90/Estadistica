#Ejemplo de como usar R para el calculo de medidas de tendencia central y tambien el uso de gráficos "Barras" y Lineas

#Para la primera vez se debe instalar la libreria modeest
install.packages("modeest") # Instalar Libreria

library(readxl)#Libreria para lectura de archivos excel
library(modeest) # Activar Libreria Moda

#Importar los datos 
datos <- read_excel("datos.xlsx")


# 1)  EJERCICIO CON VARIABLES CUANTITATIVAS DISCRETAS USANDO LA EDAD ------------


#Calculo de la media
media_1<-mean(datos$Edades)
media_1

#Calculo de la mediana
mediana_1<-median(datos$Edades)
mediana_1

#Calculo de la moda
moda_1<-mfv(datos$Edades)
moda_1



# 2)  EJERCICIO CON VARIABLES CUANTITATIVAS CONTINUAS USANDO EL PESO  ------------

#Calculo de la media
media_2<-mean(datos$Peso)
media_2

#Calculo de la mediana
mediana_2<-median(datos$Peso)
mediana_2

#Calculo de la moda
moda_2<-mfv(datos$Peso)
moda_2


#******************************** GRAFICOS ***********************************

par(mfrow=c(2,2))# Para unir dos o mas gráficas
#Primer ejercicio -------------------------------------------------------------

#Gráfico de Barras
barplot(datos$Edades,main="Gráfico de Barras",xlab="Numero de Personas",ylab="Edades")
#Gráfico de Lineas
plot(datos$Edades,type = "o",main="Gráfico de Lineas",xlab="Numero de Personas",ylab="Edades")

#Segundo ejercicio -------------------------------------------------------------

#Gráfico de Barras
barplot(datos$Peso,main="Gráfico de Barras",xlab="Numero de Personas",ylab="Peso")
#Gráfico de Lineas
plot(datos$Peso,type = "o",main="Gráfico de Lineas",xlab="Numero de Personas",ylab="Peso")


# ******************************** TABLA DE DISTRIBUCIONES ****************************


#1) EJERCICIO EDADES

#Generamos el de clases mediante la regla de sturges
k<-nclass.Sturges(datos$Edades)
k

#Separamos los valos x en k intervalos de clase
intervalos<-cut(datos$Edades,breaks=k)
FA<-table(intervalos)


#Tabla de frecuencias con datos agrupados
tabla_frecuencia<- as.data.frame(FA)
transform(tabla_frecuencia,
          Frecum=cumsum(tabla_frecuencia$Freq),
          Frel= round(prop.table(tabla_frecuencia$Freq),3),
          Frelacum= round(cumsum(prop.table(tabla_frecuencia$Freq)),3)
          
)