%para 3d
function ret = rotacion(grados, puntoARotar) 
  %convertimos los grados a radianes
  grados = deg2rad (grados);
  %creamos la matriz correspondiente para la rotacion
  matrizRotacion = [cos(grados),-sin(grados),0;sin(grados),cos(grados),0;0,0,1];
  %punto que vamos a rotar
  matrizPunto = [puntoARotar(1), puntoARotar(2), puntoARotar(3)];
  matrizPunto = matrizPunto';
  %realizamos la transformacion
  ret = matrizRotacion*matrizPunto;
  ret = [ret(1), ret(2), ret(3)];

  endfunction
