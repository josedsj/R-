

##################################### [4] DATA FRAMES ############################################


##################################### [4.1] CREACION ########################################
df <- data.frame(v1 = c(1, 2 ,3), v2 = c(11, 12, 13));
df;
class(df);
head(df)
head(df, 2);

# Miremos el environment/ambiente, podemos filtrar y visulizar la tabla
View(df);



############################## [4.2] DATA FRAME vs MATRIX ####################################
M <- matrix(c("Rex", "Tom", "Jerry", 1 ,2 ,3), nrow = 3, ncol = 2);
M;
class(M[,1]);
class(M[,2]);

df <- data.frame(logico = c(TRUE, FALSE, TRUE),
                 edad = c(3, 15, 2));
df;
df[,1]
df[,2]

class(df[,1]);
class(df[,"logico"]);

class(df[,2]);
class(df[,"edad"]);

############################## [4.3] ESTRUCTURA ####################################
nrow(df) # Número de filas
ncol(df) # Número de columnas
dim(df) # dimensiones de la tabla

# Obtener y modificar nombres de filas y columnas;
colnames(df); 
rownames(df);
colnames(df) <- c("id", "edad");
df;


##################################### [4.4] INDICES ######################################
df;

##################################### [4.4.1] con enteros ########################################
df[1,2];
df[2,3];
df[2,];
df[,3];
df[2, c(1,2)];

##################################### [4.4.2] indices logicos #################################
indice <- c(FALSE, FALSE, TRUE);
df[indice,];
df[indice, indice];



##################################### [4.4.3] por nombre #################################
paises <- c("Peru","Venezuela","Chile","Ecuador","Guatemala");
poblaciones <- c(31.1, 30.6, 18.0, 16.3, 16.2);
poblaciones_paises <- data.frame(pais = paises, pob = poblaciones);
poblaciones_paises;
colnames(poblaciones_paises);
rownames(poblaciones_paises);
poblaciones_paises[, "pais"];
poblaciones_paises["3",];
poblaciones_paises["3", "pais"];

##################################### [4.4.4] $ operador #################################
colnames(df);
df$edad;

##################################### [4.5] MODIFICACION ######################################

##################################### [4.5.1] usando indice enteros ########################################
df[1,3] <- 23;
df;
df[, 1] <- c("Simba", "Timon", "Pumba");
df;

##################################### [4.5.2] indices logicos ########################################
df[df$edad < 10, 3] <- 10;
df;

##################################### [4.5.3] indices de caracter ########################################
df[,"edad"] <- max(df$edad);
df;


############################### [4.5.4] $ operador ###############################
df$edad <- df$edad -7;
df;
df$edad[2] <- -2;
df;


##################################### [4.6] EXPANSION ######################################
df;

############################### [4.6.1] añadir columna ###############################

# usando cbind para añadir una columna
color <- c("amarillo", "azul", "rojo");
df <- cbind(df, color);
df;

# Eliminar la columna nueva
df <- df[, -3];
df;

# añadir columna usando el operador $
df$color <- c("amarillo", "azul", "rojo");
df;

############################### [4.6.2] añadir fila ###############################
# usar rbind para añadir fila
nuevo_animal <- c(FALSE, 20, "negro");
df <- rbind(df, nuevo_animal);
df;

# eliminar fila nueva
df <- df[-nrow(df),];
df;
