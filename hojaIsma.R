library(dplyr)
library(ggplot2)


datosSPOTIFY <- read.csv("C:\\UNIVERSIDAD\\4º\\Minería de datos\\MDAT\\datos\\playlist_2010to2022.csv", sep = ",", dec = ".")
str(datosSPOTIFY)


View(datosSPOTIFY)


# Ejemplo de cadenas
cadenas <- c("Hola, cómo estás", "R es genial", "Separando palabras")

# Inicializa un vector vacío para almacenar las palabras
palabras <- c()


generosPosibles <- c()    # Para almacenar los generos posibles

for (i in datosSPOTIFY$artist_genres) {
  
  # Limpiamos la cadena con los generos, para que sea facil de leer
  cadena_limpia <- gsub("\\[|\\]", "", i)
  
  # Separamos las palabras utilizando la coma como delimitador
  
  generos_separados <- unlist(strsplit(cadena_limpia, ", "))
  
  
  generosPosibles <- c(generosPosibles, generos_separados)
  
}

frecuencia_generos <- table(generosPosibles)


# Ordenar las palabras por frecuencia en orden descendente
frecuencia_generos_orden <- names(sort(frecuencia_generos, decreasing = TRUE))

print(frecuencia_generos_orden)


print(generosPosibles)