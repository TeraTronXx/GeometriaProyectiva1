%Función de rotación sobre 1 punto.
function ret = shear(she, v) 
  %se crea la matriz sobre la que se hara el shear
  matrixToShear = [v(1), v(3) v(5), v(7); v(2), v(4) v(6), v(8)];
  %se crea la matriz con el valor del shear respecto al eje X que se necesita
  shearMatrix = [1,she;0,1];
  ret = shearMatrix*matrixToShear; 

  endfunction
 
