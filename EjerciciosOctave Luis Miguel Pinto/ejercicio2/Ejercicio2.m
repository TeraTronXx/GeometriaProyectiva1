clear all
%datos iniciales para la realizacion del ejercicio
puntoEsfera = [0, -3, 1];
angulo = 45;
vectorTranslacion = [-1, -1, -1];

%rotamos el punto de la esfera los grados especificados anteriormente
puntoEsferaRotado = rotacion(45, puntoEsfera)
%realizamos la translacion del punto
puntoEsferaTrans = translacion(vectorTranslacion, puntoEsferaRotado)
%por ultimo, se hace la reflexion
puntoEsferaRefl = reflexion(puntoEsferaTrans)

%imprimimos los resultados
# Draw sphere with different settings
 figure(1); clf;
 hold on
 drawSphere([puntoEsferaRefl(1) puntoEsferaRefl(2) puntoEsferaRefl(3) 1], 'linestyle', ':', 'facecolor', 'r');
 drawSphere([puntoEsfera(1) puntoEsfera(2) puntoEsfera(3) 1], 'linestyle', ':', 'facecolor', 'g');
 hold off
 axis tight
 axis equal;

 