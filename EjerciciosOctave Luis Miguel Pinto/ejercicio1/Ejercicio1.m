clear all

%parametros iniciales para la realizacion del ejercicio.
vectorTraslacion=[2,1];
angulo=45;
puntoCuadrado1 = [0,0];
puntoCuadrado2 = [0,1];
puntoCuadrado3 = [1,0];
puntoCuadrado4 = [1,1];
translacion2=[-1,-1];
shearValue = 2;

%trasladamos los puntos un vector -vectorTraslacion para posicionarlos en el 0,0 y que el resto de 
%transformaciones sean efectivas
a = translacion(-vectorTraslacion, puntoCuadrado1);
b = translacion(-vectorTraslacion, puntoCuadrado2);
c = translacion(-vectorTraslacion, puntoCuadrado3);
d = translacion(-vectorTraslacion, puntoCuadrado4);

%rotamos los puntos 45 grados
aRotacion = rotacion(45, a);
bRotacion = rotacion(45, b);
cRotacion = rotacion(45, c);
dRotacion = rotacion(45, d);

%hacemos la traslacion de los resultados anteriores. Traslacion de translacion2
aTranslation = translacion(translacion2, aRotacion);
bTranslation = translacion(translacion2, bRotacion);
cTranslation = translacion(translacion2, cRotacion);
dTranslation = translacion(translacion2, dRotacion);

%creamos el cuadrado resultante
aCuadrado = [aTranslation(1), aTranslation(2)];
bCuadrado = [bTranslation(1), bTranslation(2)];
cCuadrado = [cTranslation(1), cTranslation(2)];
dCuadrado = [dTranslation(1), dTranslation(2)];

%variables para poder imprimir el cuadrado si se desea. Descomentar las 4 lineas inferiores
x = [aCuadrado(1), bCuadrado(1), dCuadrado(1), cCuadrado(1), aCuadrado(1)];%muestra el cuadrado antes del shear
y = [aCuadrado(2), bCuadrado(2), dCuadrado(2), cCuadrado(2), aCuadrado(2)];
%figure (1); 
%plot (x,y);
%axis ([-5,5, -5,5])
%axis equal

shearMatrix = [aCuadrado(1), bCuadrado(1), dCuadrado(1), cCuadrado(1)];%matriz para hacer el shear
shearMatrix2 = [aCuadrado(2), bCuadrado(2), dCuadrado(2), cCuadrado(2)];
toshear = [shearMatrix;shearMatrix2];

shearResult = shear(2,toshear);%realizamos el shear
ashearResult = [shearResult(1), shearResult(2)];
bshearResult = [shearResult(3), shearResult(4)];
cshearResult = [shearResult(5), shearResult(6)];
dshearResult = [shearResult(7), shearResult(8)];

aFin = translacion(vectorTraslacion, ashearResult);%trasladamos los puntos tras el shear
bFin = translacion(vectorTraslacion, bshearResult);
cFin = translacion(vectorTraslacion, cshearResult);
dFin = translacion(vectorTraslacion, dshearResult);

finX= [aFin(1), bFin(1), cFin(1), dFin(1), aFin(1)];%imprimimos la solucion
finY= [aFin(2), bFin(2), cFin(2), dFin(2), aFin(2)];

figure (2);
plot (finX,finY);

axis ([-5,5, -5,5])
axis equal

