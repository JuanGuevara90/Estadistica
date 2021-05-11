#Empecemos..... Bienvenidxs!
#¿Como hacemos un comentario en R?, vamos a utilizar el # (numeral)

## Para obtener informacion sobre una funcion
help("mean")
?mean

## Para asignar valores a una variable
x <- 5
x = 5 #esta manera de asignar es muy poco utilizada

#Operadores
a <- 2+4
print(a)

b <- 10-3
print(b)

c <- 5*5
print(c)

d <- 4/2
print(d)

e <- 13%%3 #Modulo o resto
print(e)

d<e
b>=a
c!=d

#Un poco mas....
a <- 1
f <-a+1
print(f)

f1 <- f+3

#¿Cuanto me daria f1?
print(f1)

## Para crear un vector 
v <- c(1, 2, 3, 4, 5) #numérico
b <- c(TRUE, FALSE, TRUE, FALSE, TRUE)#logico
c <- c("a", "b", "c", "d", "e") #de caracteres

z <- c(1,2, "a", "b") #me lo convierte en char

#Otra opcion es a traves del uso de la funcion "assign()"
assign("v1", c(1, 2, 3, 4, 5)) #numérico
print(v1)

assign("b1", c(TRUE, FALSE, TRUE, FALSE, TRUE)) #logico
print(b1)

assign("c1", c("a", "b", "c", "d", "e")) #caracteres
print(c1)

cadena <- c("Hola", "Mundo", "Estoy", "Aprendiendo", "R")
print(cadena)

#Si deseamos agregar un elemento adicional a un vector ya existente...
x <- c(2,3,4,5)
x <- c(x,6,7,8,9)
print(x)

#Combinando dos vectores
mi_vector_1 <- c(1,5,7)
print(mi_vector_1)

mi_vector_2 <- c(6,7,8)
print(mi_vector_2)

mi_vector_3 <- c(mi_vector_1, mi_vector_2)
print(mi_vector_3)

#Si quisiera sumar....
mi_vector <- c(1,5,7)
print(mi_vector+2) 

#Si quisiera multiplicar.....
mi_vector <- c(1,5,7)
print(mi_vector*3) 

#IMPORTANTE!! 
#R es key sensitive es decir es sensible a mayusculas y minusculas
#para R no es lo mismo el objeto "nombre" que "Nombre" o "NOMBRE"

## Funciones por defecto en R, que puedo aplicarlas mis vectores
print(v)

min(v) ## Retorna el valor mimino del vector
max(v) ## Retorna el valor maximo del vector
length(v) ## Retorna el tamano del vector
sum(v) ## Retorna la suma de los elementos del vector
prod(v) ## Retorna el producto de los elementos del vector
sort(v) ## Retorna un nuevo vector ordenado
mode(v) ## Retorna el modo del vector (tipo de dato)

## Factores
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
           "sa",  "nt",  "wa",  "vic", "qld", "nsw", "nsw", "wa",
           "sa",  "act", "nsw", "vic", "vic", "act")
stateFactor <- as.factor(state) ## Define los factores (valores nominales) del vector estado
levels(stateFactor) ## Retorna los niveles (valores nominales) del factor

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)
tapply(incomes, stateFactor, mean) ## Aplica una funcion dada a cada grupo tapply(vector, factor, funcionn)

## Matrices
m <- matrix(c(1,2,3,4), nrow=2, ncol=2) ## Crea una matriz a partir del vector dad con las dimensiones definidas.
m

m <- matrix(c(1,2,3,4), nrow=2, ncol=2, dimnames = list(c("j", "k"), c("l","m")))
m

m[1,2] ## Retorna el elemento de la posicion fila 1 columna 2
m[1,] ## Retorna todos los elementos de la fila 1
m[,1] ## Retorna todos los elementos de la columna 1

m[1,1] <- 9 ## Asigna 9 a elemento de la fila 1 columna 1
m

m[1,] <- 0 ## Assigna 0 a todos los elementos de la fila 1
m

cc<- cbind(c(1,2,3,4), c(9,8,7,6)) ## Crea una matriz combinando los vectores en columnas (cada vector es una columna)
cc

cr<- rbind(c(1,2,3,4), c(9,8,7,6)) ## Crea una matriz combinando los vectores en filas (cada vector es una fila)
cr

## Attributos sobre matices
nrow(m) ## Cantidad de filas
ncol(m) ## Cantidad de columnas
dim(m) ## Dimension de la matriz
length(m) ## Largo de la matriz (cantidad de elementos)
mode(m) ## Tipo de dato de la matriz

## Mas Operaciones sobre matrices
a <- matrix(c(1,2,3,4), c(2,2))
a

b <- matrix(c(9,8,7,6), c(2,2))
b

t(a) ## Retorna la traspuesta de la matriz

a * b ## Retorna una matriz con el producto elemento a elemento

a %*% b ## Retorna el producto matricial

print(a)
diag(a) ## Retorna una matriz con la diagonal de la matriz original

##############################################################
#Funciones
potencia <- function(x,y){
  result<-x^y
  paste(x, "elevado a la potencia de ", y , "es", result)
}
potencia (4,2)

#Importante! La funcioon paste(),
#une todos los vectores de caracteres 
#que se le suministran y construye una sola cadena de caracteres

cuadrado <- function(x){
  resultado <- x*x
  paste("El cuadrado de", x, "es:", resultado)
}
cuadrado(7)

cuadrado1 <- function(x){
  return (x*x)
}
cuadrado1(7)

#¿cual es la diferencia entre la funcion cuadrado y cuadrado1?
#en una guardo el resultado del calculo y lo muestro por pantalla

## For
for (i in 1:10){
  print(i)
}

fin <-20
for (i in 1:fin){
  print(i)
}

##While
k <-1
while(k<10){
  print(k)
  k<-k+1
}

##Repeat
i = 0 
repeat{
  print(i)
  i<-i+1
  if (i == 5) break
}

###Importando archivos y paquetes

#El comando que se utiliza por defecto para instalar archivos es
#install.packages("nombrePaquete")

#Por ejemplo: install.packages("ggplot2")

#Luego siempre debemos hacer uso del comando: library(nombrePaquete)
#para llamar a nuestra libreria.

#Para acceder a la descripcion de un paquete:
packageDescription("ggplot2")

#Para ver la ayuda del paquete
help(package = "ggplot2")

#Paquetes mas populares para carga de datos:
#SQLdf, RODBC, RPostgresSQL, RSQLite, readxl

#Para manipulacion de datos:
#plyr, reshape2, stringr

#Para visualizacion de datos e informacion:
#ggplot2, rgl, shiny

#Para modelizacion:
#caret, car, forecast

#Ahora si, empecemos a importar algunos archivos! Lo primero 
#que tenemos que tener en cuenta es nuestro directorio. 

getwd()

dir() #me muestra los archivos del directorio

setwd("C:/Users/Layla Scheli/Desktop")

getwd() ## verifico si me modifico la ruta

setwd("C:/Users/Layla Scheli/Desktop/Docencia/IoT y Big Data/Taller")

getwd()

#Otros comandos importantes

#objects() me lista los objetivos que tengo en memoria
#rm("nombreObjeto") elimina un objeto

#Leemos nuestro primer archivo
DatosEPH <- read.csv2("DatosEPH2016.csv", 
                      header = T)
View(DatosEPH)

#Si quisiera eliminar:
#rm(DatosEPH)

#Leemos nuestro segundo archivo
empleados <- read.csv2("empleados.csv", sep = ",")

#Leemos nuestro tercer archivo
#install.packages("readxl")
#library(readxl)
clientes <- readxl::read_excel("Clientes.xlsx")

#Leemos nuestro cuarto archivo
customerProfitability <- readxl::read_excel("Customer Profitability Sample.xlsx")

#Leemos nuestro quinto archivo
precioAvisos <- read.csv(file = 'https://raw.githubusercontent.com/martintinch0/CienciaDeDatosParaCuriosos/master/data/precioBarrios.csv',
                         sep=';',
                         stringsAsFactors = FALSE)
View(precioAvisos)

#Con stringsAsFactors = FALSE estamos indicandole a R que no
#queremos que convierta nuestros datos en factores

#Por ultimo y no menos importante, como creamos un proyecto en R?