
##################################### [3] MATRICES ############################################


##################################### [3.1] CREACION DE MATRICES ########################################
v <- c(1,2,3,4,5,6);
M <- matrix(v, nrow = 3, ncol = 2);
M;
M <- matrix(v, nrow = 3, ncol = 2, byrow = TRUE);
M;

# Revisar el Ambiente >>>>

nrow(M) # numero de filas
ncol(M) # numero de columnas
dim(M) # dimensiones/tamano de la matriz
t(M)	# Trasponer
##################################### [3.2] INDICES Y MATRICES ######################################


##################################### [3.2.1] por entero ########################################
M <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE);
M;
M[1,2];
M[2,3];
M[2,];
M[,3];
M[2, c(1,2)];

##################################### [3.2.2] indices logicos #################################
indice <- c(FALSE, FALSE, TRUE);
M[indice,];
M[indice, indice];

M < 6;
M[M < 6];

##################################### [3.2.3] por nombre #################################
colnames(M) <- c("C1", "C2", "C3");
rownames(M) <- c("fila1", "fila2", "fila3");
M;
M[, "C2"];
M["fila3",];
M["fila3", "C2"];

##################################### [3.3] MODIFICACION DE MATRICES ######################################
M <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE);
M
colnames(M) <- c("V1", "V2", "V3");
M;  
##################################### [3.3.1] utilizando enteros como indices ########################################
M[1,3] <- 23;
M;
M[2,] <- c(10, 11, 12);
M;

##################################### [3.3.2] utilizando logicos como indices ########################################
M[M < 10] <- 0;
M;

##################################### [3.3.3] utilizando nombres como indices ########################################
max(M);
M[,"V3"] <- max(M);
M;


##################################### [3.4] OPERACIONES COMUNES DE MATRICES ######################################

##################################### [3.4.1] max/min/sum ######################################
M;
max(M);
min(M);
M;
which.max(M);
which.min(M);
sum(M);

##################################### [3.4.2] estadisticas ######################################
mean(M);
median(M);
summary(M);
sd(M);
var(M);
rowMeans(M);
colMeans(M);
rowSums(M);
colSums(M);

##################################### [3.4.3] ordenar ######################################
M;
sort(M);
order(M);


##################################### [3.4.4] operaciones entre matrices ######################################

# Arimeticas
M2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE);
"-----M1-----";M;"-----M2-----";M2;
M + M2;
M - M2;
M * M2;
M / M2;
M %*% M2; #Algebraica
cbind(M,M2)	# Combinar matrices(vectores) horizontalmente (mismo numero de filas)
rbind(M,M2)	# Combinar matrices(vectores) verticalmente (mismo numero de columnas)

# Logicas
M == M2;
M[M == M2]
