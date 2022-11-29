##################################### [1] CLASES DE VARIABLES ############################################

####################################### [1.1] Numericas ##########################################

# Asignamiento de Variables
x <- 5;
y <- 2;
class(x);
class(y);


# Operaciones Simples
x + y; # Suma
x - y; # Resta
x * y; # Multiplicacion
x / y; # Division
x %/% y; # Division Enteros
x ^ y; # Exponentes
x %% y; # Modulo

# Operaciones Logicas
x < y; # Menor a
x <= y; # Menor o igual a
x > y; # Mayor a 
x >= y; # Mayor o igual a
x == y; #	Exactamente igual a 
x != y; #	No igual a


#######################################  [1.2] Enteros ####################################### 

# Asignacion de Variables
x <- 5;
class(x);
x <- as.integer(5);
class(x);
y <- 2L;
class(y);

identical(as.integer(5), 5L);
identical(as.integer(5), 5);

x + y; # Suma
x - y; # Resta
x * y; # Multiplicacion
x / y; # Division
x %/% y; # Division Enteros
x ^ y; # Exponentes
x %% y; # Modulo

# Operaciones Logicas
x < y; # Menor a
x <= y; # Menor o igual a
x > y; # Mayor a 
x >= y; # Mayor o igual a
x == y; #	Exactamente igual a 
x != y; #	No igual a

# Operaciones entre valores numericas y enteros
z <- 3.5;
class(z);
x + z;
class(x + z);
class(x + y);





#######################################  [1.3] Caracter ####################################### 

# Asignacion de Variables
x <- "Jose";
y <- "De Souza";
class(x);
class(y);

# Operaciones Basicas
nchar(x); # Nº de caracteres en una cadena/string
substr(x, 1, 2); # Obtener subcadena
substr(x, 3, 4); # Obtener subcadena
gsub("e", "é", x); # Reemplazar caracter
grepl("so", y); # Buscar un Patrón
grepl("So", y); # Buscar un Patrón
paste('a','b','c') # Pegar diferentes cadenas con un delimitador especifico
paste('a','b','c',sep='-') # Pegar diferentes cadenas con un delimitador especifico


#######################################  [1.4] Logico ####################################### 

# Asignacion de Variables
x <- TRUE;
y <- FALSE;
class(x);
class(y);

# Operaciones Basicas
!x; # Not x, Negacion X
!y; # Not y, Negacion Y
x | y; # x "O" y
x | x; # x "O" x
y | y; # y "O" y
x & y; # x "Y" y
x & x; # x "Y" x
y & y; # y "Y" y


# Condiciones logicas con numeros
5 == 3;
class(5 == 3);
log_var <- 5 == 3;


#######################################  [1.5] Conversion de Variables ####################################### 

# [1 -> 2] Numerica a Entero
x <- 12.3;
class(x);
x <- as.integer(x);
x;
class(x);
x <- 7.6;
as.integer(x);
as.integer(round(x));
as.integer(floor(x));
as.integer(ceiling(x));

# [1 -> 3] Numerica a caracter
x <- 12.3;
x <- as.character(x);
x;
class(x);

# [1 -> 4] Numerica a logico
x <- 12.3;
x <- as.logical(x);
x;
class(x);
x <- 0;
as.logical(x);


# [2 -> 1] Entero a numerica
x <- as.integer(7);
class(x);
x <- as.numeric(x);
x;
class(x);

# [2 -> 3] Entero a caracter
x <- as.integer(7);
x <- as.character(x);
x;
class(x);

# [2 -> 4] Entero a logico
x <- as.integer(7);
x <- as.logical(x);
x;
class(x);
x <- as.integer(0);
as.logical(x);

# [3 -> 1] Caracter a numerica
x <- "12.7";
class(x);
x <- as.numeric(x);
x;
class(x);
x <- "Hola Mundo";
as.numeric(x);

# [3 -> 2] Caracter a entero
x <- "12.7";
x <- as.integer(x);
x;

# [3 -> 4] Caracter a logico
x <- "12.7";
x <- as.logical(x);
x;
class(x);
x <- "TRUE";
as.logical(x);



# [4 -> 1] Logico a numerica
x <- TRUE;
class(x);
x <- as.numeric(x);
x;
class(x);
x <- FALSE;
as.numeric(x);

# [4 -> 2] Logico a entero
x <- TRUE;
x <- as.integer(x);
x;

# [4 -> 3] Logico a caracter
x <- TRUE;
x <- as.character(x);
x;
class(x)