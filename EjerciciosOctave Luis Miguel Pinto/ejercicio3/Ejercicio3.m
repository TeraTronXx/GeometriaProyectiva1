clear all
%ApartadoA y B
% Se rotan los puntos proporcionados en el enunciado. Luego se genera el octaedro y se pinta.
%se declaran las variables
angulo=90;
%Se calcula la rotación de los 3 puntos iniciales(por la rotación pedida solo genera puntos b) ya que a y c
%no generan nuevos puntos
a = [0,1,0];
b = [1,0,0];
c = rotacion(angulo, b);
d = rotacion(angulo, c);
e = rotacion(angulo, d);
f = [0,-1,0]';
%%%%%%%%%%%%%%%%%%%%%%% Descomentar las llaves de debajo para los apartados a y b %%%%%%%%%%%%%%%%%%%
%{
%Obtenido el octadreo se añade la vista al punto pedido
vista=[10,2,1];
vistaPrima=[0,0,0];
movimiento=[0,1,4];
view(vista)
%Se especifican los vertices del octaedro, sus caras y se dibuja con el método patch
vertices = [a(1),a(2),a(3);b(1),b(2),b(3);c(1),c(2),c(3);d(1),d(2),d(3);e(1),e(2),e(3);f(1),f(2),f(3)];
caras =[1,2,5; 2,5,6;4,5,6;1,4,5;1,3,4;1,2,3;2,3,6;3,4,6]
patch ('Vertices',vertices,'Faces',caras, ...
       "FaceVertexCData", jet (8),"FaceColor","flat");
%}


%ApartadoC y Apartado D 
%%%%%%%%%%%%%%%%%%%%%%% Descomentar las llaves de debajo para los apartados c y d %%%%%%%%%%%%%%%%%%%
%{
%se genera un plano en z=1, luego se realiza la proyeccion y se pasan los puntos visibles

%Se traslada el octaedro sobre el vector (0,1,4)
aPrima = traslacion(movimiento,a);
bPrima = traslacion(movimiento,b);
cPrima = traslacion(movimiento,c);
dPrima = traslacion(movimiento,d);
ePrima = traslacion(movimiento,e);
fPrima = traslacion(movimiento,f);
verticesPrima = [aPrima(1),aPrima(2),aPrima(3);bPrima(1),bPrima(2),bPrima(3);cPrima(1),cPrima(2),cPrima(3);dPrima(1),dPrima(2),dPrima(3);ePrima(1),ePrima(2),ePrima(3);fPrima(1),fPrima(2),fPrima(3)];
planoE=[0,0,1,0,0,0];
posicionCamara=[0,0,0];
grados=deg2rad (0);

%Se calcula la matriz de proyeccion de la cámara.
K=[1,0,0;0,1,0;0,0,1];
Rot=[cos(grados),0,-sin(grados);0,1,0;sin(grados),0,cos(grados)];
ITRESC=[1,0,0,-posicionCamara(1);0,1,0,-posicionCamara(2);0,0,1,-posicionCamara(3)];

%Generamos el plano z = 1 y lo mostramos en la grafica final
plano=createPlane([0,0,1],[2,0,1],[0,2,1])
drawPlane3d(plano)
carasPrima =[1,2,5; 2,5,6;4,5,6;1,4,5;1,3,4;1,2,3;2,3,6;3,4,6]
patch ('Vertices',verticesPrima,'Faces',carasPrima, ...
        "FaceVertexCData", jet (8),"FaceColor","flat");
hold on

%llevamos a cabo la ecuacion definida por K R [I3|-C]
ab=K*Rot*ITRESC*aPrima';
bb=K*Rot*ITRESC*bPrima';
cb=K*Rot*ITRESC*cPrima';
db=K*Rot*ITRESC*dPrima';
fb=K*Rot*ITRESC*fPrima';

%puesto que los puntos deben estar distribuidos a lo largo del plano, la z sera = 1
%y el resto de las coordenadas no cambian ya que se dividen entre 1

%Se dibujan los puntos sobre el plano z
plot3(ab(1),ab(2),1,"o")
plot3(bb(1),bb(2),1,"o")
plot3(cb(1),cb(2),1,"o")
plot3(db(1),db(2),1,"o")
plot3(fb(1),fb(2),1,"o")


%Realizamos el mismo procedimiento que en el caso anterior pero cambiamos el centro de la camara
%y el plano de proyeccion
posicionCamaraD=[0,0,1]
planoD=createPlane([1,0,0],[1,0,6],[1,6,0])
drawPlane3d(planoD)

%Se calcula la matriz de proyeccion de la cámara.
K=[1,0,0;0,1,0;0,0,1];
Rot=[cos(grados),-sin(grados),0;sin(grados),cos(grados),0;0,0,1];
ITRESC=[1,0,0,-posicionCamaraD(1);0,1,0,-posicionCamaraD(2);0,0,1,-posicionCamaraD(3)];
ab=K*Rot*ITRESC*aPrima';
bb=K*Rot*ITRESC*bPrima';
cb=K*Rot*ITRESC*cPrima';
db=K*Rot*ITRESC*dPrima';
fb=K*Rot*ITRESC*fPrima';

%puesto que los puntos deben estar distribuidos a lo largo del plano, la x sera = 1
%y el resto de las coordenadas no cambian ya que se dividen entre 1
%Se dibujan los puntos sobre el plano x
plot3(1,ab(2),ab(3),"o")
plot3(1,bb(2),bb(3),"o")
plot3(1,cb(2),cb(3),"o")
plot3(1,db(2),db(3),"o")
plot3(1,fb(2),fb(3),"o")
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%% Descomentar las llaves para el Apartado E %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%ApartadoE
%hemos utilizado el plano y la camara del apartado D

%{
posicionCamaraE=[0,0,1]
planoE=createPlane([1,0,0],[1,0,6],[1,6,0])
drawPlane3d(planoE)

%Se calcula la matriz de proyeccion de la cámara.
K=[1,0,0;0,1,0;0,0,1];
Rot=[cos(grados),-sin(grados),0;sin(grados),cos(grados),0;0,0,1];
ITRESC=[1,0,0,-posicionCamaraE(1);0,1,0,-posicionCamaraE(2);0,0,1,-posicionCamaraE(3)];
vectorE=[6,2,0]

%Translacion del octaedro por el vector vectorE y se aplica la formula definida: K R [I3|-C]
ae=traslacion(vectorE,a);
be=traslacion(vectorE,b);
ce=traslacion(vectorE,c);
de=traslacion(vectorE,d);
ee=traslacion(vectorE,e);
fe=traslacion(vectorE,f);
ae=K*Rot*ITRESC*ae';
be=K*Rot*ITRESC*be';
ce=K*Rot*ITRESC*ce';
de=K*Rot*ITRESC*de';
ee=K/Rot*ITRESC*ee';
fe=K*Rot*ITRESC*fe';

%puesto que los puntos deben estar distribuidos a lo largo del plano, la x sera = 1
%y el resto de las coordenadas no cambian ya que se dividen entre 1
plot3(1,ae(2),ae(3),"o")
plot3(1,be(2),be(3),"o")
plot3(1,ce(2),ce(3),"o")
plot3(1,de(2),de(3),"o")
plot3(1,ee(2),ee(3),"o")
plot3(1,fe(2),fe(3),"o")
%}