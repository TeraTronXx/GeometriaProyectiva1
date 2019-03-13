%para 3d
function ret = reflexion(puntoARefl)
  %especificamos la matriz del plano x-y=0
  XminusYplane = [-1,0,0;0,-1,0;0,0,1];
  %especificamos el punto que queremos reflejar
  matrizPunto = [puntoARefl(1), puntoARefl(2), puntoARefl(3)];
  matrizPunto = matrizPunto';
  %realizamos la transformacion
  ret = XminusYplane*matrizPunto;
  ret = [ret(1), ret(2), ret(3)];
  endfunction