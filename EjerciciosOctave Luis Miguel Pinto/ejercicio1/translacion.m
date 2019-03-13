%Esta función me vale para transladar x unidades en 2D
function tra = translacion(trasladar, p)
  %se crea la matriz de traslacion
  matrizTraslacion = [1,0,trasladar(1);0,1,trasladar(2);0,0,1];
  %se realiza la suma, que es el resultado de la transformacion
  res = [p(1)+trasladar(1), p(2)+trasladar(2), 1];
  tra = res;
  endfunction