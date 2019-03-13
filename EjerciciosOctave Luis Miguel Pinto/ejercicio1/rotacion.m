%Función de rotación sobre 1 punto.
function ret = rotacion(grados, aRotar) 
  %pasamos el angulo de grados a radianes
  grados = deg2rad (grados);
  %creamos la matriz de rotacion con los datos necesarios
  matrizRotacion = [cos(grados),sin(grados);-sin(grados),cos(grados)];
  %creamos el vector del punto a rotar
  vectorARotar = [aRotar(1), aRotar(2)];
  vectorARotar = vectorARotar';
  %se hace la multiplicacion
  ret = matrizRotacion*vectorARotar;
  %se devuelve el resultado de la rotacion
  ret = [ret(1), ret(2), 1];

  endfunction
 
