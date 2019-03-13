%para 3d
%Esta función me vale para transladar x unidades en 2D
function tra = translacion(trasladar, p)
  %matriz con los valores para la translacion
  matrizTraslacion = [1,0,trasladar(1);0,1,trasladar(2);0,0,1];
  %suma con los valores del punto a trasladar
  res = [p(1)+trasladar(1), p(2)+trasladar(2), p(3)+trasladar(3)];
  tra = res;
  endfunction