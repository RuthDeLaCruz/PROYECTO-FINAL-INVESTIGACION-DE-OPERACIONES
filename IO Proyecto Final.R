


## ROYECTO INVESTIGACION DE OPERACIONES

##ENTIDAD A ESTUDIAR : DataCorp

#En la cocina diponen de 85 piezas de micropocesadores Intel, 
#22 discos duros de marca Dell para elaborar los postres 
# y dispone de 58.5 horas de trabajo.
#que utilizan para reparar computadoras y dispositivos electronicos y 
#tambien estan a la venta.

#Para la reparacion de una computadora o un equipo informatico
#requiere 3 piezas de microprocesadores, 2 disco duro y 4  de trabajo
# y la ganancia corresponde a un beneficio de 120 soles por cada dia de trabajo
# tarea que se realiza con respecto a los procesos de SOPORTE TECNICO.

# y para realizar la VENTA DE LOS PRODUCTOS se da la venta de 6 microprocesadores,
#al menos 1 disco duro por día y 8.5 horas de trabajo al día.
#y su venta corresponde a un beneficio de 200 soles.

# y se debe tomar en cuenta que el giro del negocio es la reparacion de
# equipos informaticos y que es el principal ingreso de la organización,  
#con el que mas ingresos percibe.

#¿cuantas microprocesadores debe vender para  maximize las ganancias, ya que éstos 
#son los mas caros y que se pueda decicar mas a la rema de las ventas?


##
#PLANTEAMOS EL MODELO DE PROGRAMACION LINEAL
##


# Y OBTENEMOS COMO FUNCION OBJETIVO

# Z = 60x1 +80x2

#Y QUE ESTA SUJETO A RESTRICCIONES:

#s.a
# 3x1 + 6x2 <= 85
# 2x1 + 1x2 <= 22
# 4x1 + 8.5x2 <= 58.5

##DECLARAMOS LAS CONICIONES DE NO NEGATIVIDAD

# x1 , x2 =0


library(linprog)

##vector de coeficientes de la funcion objetivo
z<- c(120,200)
z


##matriz de restrcciones

A<-matrix(c(3,2,4,6,1,8.5),ncol=2)
colnames(A) <- c("X1","X2")
rownames(A) <- c("R1=","R2=","R3")
A



##vector solucion, valores enteros de las restricciones.
b<-c(85,22,58.5)
b

##sentido de las restricciones

dir <- rep("<=",3)

##solucion optima, usamos la funcion verbose para que nos muestre las iteraciones del metodo simplex.

solopt <- solveLP (z,b,A, maximum = TRUE,dir, verbose = 4)

###mostrar los resultados, 

summary(solopt)

#####################################

##
#ALUMNA: RUTH DE LA CRU BAUTISTA  27125752
#ASIGNATURA: investigacion de Operaciones I
#DOCENTE: 
####
