#Paso 1: Acceder a los datos
directory<-"/Users/juanpi/Documents/INSTITUTO/2021/Abril\ Septiembre/enamorandose_de_r-master"
setwd(directory)

#Descargar los datos de starwars
#data(starwars)
#sw <- starwars

#Importar los datos de starwars filtrados. Estos datos debes descargarlos de GitHub y colocarlos en tu directorio
datasw <-read.csv("datastarwars.csv",row.names = 1)

##############################

#Paso 2: Describir los datos

##############################
#Nombres de los encabezados de la tabla
names(datasw)

as.data.frame(table(datasw$altura))
tabla_frecuencia<- as.data.frame(table(datasw$edad))

transform(tabla_frecuencia,
          Frecum=cumsum(tabla_frecuencia$Freq),
          Frel= round(prop.table(tabla_frecuencia$Freq),3),
          Frelacum= round(cumsum(prop.table(tabla_frecuencia$Freq)),3)
          
)