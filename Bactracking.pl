conexion(vancouver,edmonton,16).
conexion(vancouver,calgary,13).
conexion(edmonton,saskatoon,12).
conexion(saskatoon,calgary,9).
conexion(saskatoon,winnipeg,20).
conexion(calgary,edmonton,4).
conexion(calgary,regina,14).
conexion(regina,saskatoon,7).
conexion(regina,winnipeg,4).

ruta(X,Y):-conexion(X,Y,_).
rutacosto(X,Y,Z):-conexion(X,Y,Z).
tienearistas(K):-conexion(K,_,_).
costoviaje(Inicio,Destino,Intermedio,Costo):-
conexion(Inicio,Intermedio,C1),conexion(Intermedio,Destino,C2), Costo is C1+C2.


camino(X,Y):-conexion(X,Y,_).
camino(X,Y):-conexion(X,Z,_),conexion(Z,Y,_).