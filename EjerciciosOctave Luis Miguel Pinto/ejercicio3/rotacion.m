function ret = rotacion(grados, v) 
  grados = deg2rad (grados);
  z = [cos(grados),0,sin(grados);0,1,0;-sin(grados),0,cos(grados)];
  aux = [v(1), v(2),v(3)];
  
  
  aux = aux';
  
  ret = z*aux;
  ret = [ret(1), ret(2), ret(3)];

  endfunction
 
