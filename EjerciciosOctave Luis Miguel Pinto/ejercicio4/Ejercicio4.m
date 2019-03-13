%{
  para ejecutar esta funcion, es necesario crear antes un angulo, expecificar el vector director del eje
  deseado y un punto que rotar. En los siguientes formatos:
  eje = [0,0,1] Z o [1,0,0] X o [0,1,0] Y
  angulo = pi o pi/2 o pi/4... siempre en radianes
  punto = [x, y, z] pudiendo ser x,y,z cualquier numero entero.
%}
function Ejercicio4(angulo, eje, punto)
  %recogemos los datos introducidos por parametros
  if (eje == [0,0,1] || eje == [1,0,0] || eje == [0,1,0])
    angle = angulo
    axis = eje;
    %creamos un quaternion para rotar a partir del eje y el angulo
    quaternionRotator = rot2q (axis, angle)
    %creamos un quaternion con los valores del punto introducido por parametro
    quaternionPunto = quaternion (punto(1), punto(2), punto(3))
    %realizamos la rotacion multiplicando el quaternion de rotacion, por el quaternion con el punto
    %por la conjugada del primer quaternion
    vr = quaternionRotator * quaternionPunto * conj (quaternionRotator)
    %imprimimos la solucion de los dos puntos
    hold on
    plot3 (punto(1), punto(2), punto(3), "o") 
    plot3 (vr.i, vr.y, vr.z, "o") 
    hold off
    clear all
  else 
    disp("El eje que ha introducido no es valido");
    clear all
  endif
 endfunction
  