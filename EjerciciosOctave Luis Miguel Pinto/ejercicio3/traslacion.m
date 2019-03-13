%Esta función me vale para transladar x unidades en 2D
function tra = traslacion(v, w)
  aux = [1,0,0,v(1);0,1,0,v(2);0,0,0,v(3)];
  res = [w(1)+v(1), w(2)+v(2),w(3)+v(3),1];
  tra = res;
  
  
  endfunction