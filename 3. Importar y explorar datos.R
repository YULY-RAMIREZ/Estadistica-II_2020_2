install.packages("readxl")
library(readxl)

#Cargar datos desde excel
datos <- read_xlsx("")

#Verificar el tipo de datos que se han cargado a R
str(datos)

#Verificar nombres de filas
rownames(datos)

#Verificar el tipo de base de datos
class(datos)

#Comprobar que las variables son num�ricas segun corresponda
str(datos)

#Verificar el tipo de datos
class(datos)

#Convertir variables caracter a num�ricas
#datos[,2:13] <- sapply(datos[, 2:13], as.numeric)

#COnfigurar el nombre de las filas del conjunto de datos
datos <- data.frame(datos, row.names = datos$Hospital)

#Eliminar la columna que se pasa como nombre de filas
datos <- datos[,-3]

#Cambiar el nombre de columnas del dataframe

#colnames(datos) <- c(2010:2018,"Trim. 1-2019", "Trim.2-2019", "Trim.3-2019")

#Calcular la media de solo una columna de datos num�ricos

promedio <- mean(datos[,1]) #promedio del Indicador seguridad
promedio

##Calcular la media de todas las columnas de datos num�ricos
promedio <- apply(as.matrix(datos), 2, mean) ###el 2 �ndica que calcule lo que se le solicita por columnas,
                                              #y en la mean, se puede colocar la funci�n para calcular desviaci�n,
                                              #     y otros descriptivos
promedio <- as.data.frame(promedio) #convertir la informaci�n de promedio a data frame


######Pueden aplicar la funci�n anterior para calcular desviaci�n, m�ximo, m�nimo, entre otros.


#Guardar las tablas en excel
write.table(promedio,"promedio.txt") ##guarda en formato txt
write.csv2(promedio,"promedio.csv") ##guarda en formato csv2 y lo abre en excel desde la carpeta en donde que da guardado

###Verificar en d�nde guarda los datos
getwd() #Aqu� muestra la ruta en d�nde guarda los datos

2/3
