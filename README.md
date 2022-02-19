# RUTAS TRASNPORTE

## DISEÑO DE BASE DE DATOS
El sistema gestiona información de una red de transporte con los siguientes elementos:
- PARADAS, que representan paradas en una red de transporte, con código corto, descripción, latitud y longitud.
- TRAMOS, que representan la forma de llegar de una parada a otra, tienen código corto, parada origen, parada destino, longitud y duración (al ser recorridos en autobús). Se considera que tienen sentido (A-B es distinto de B-A) y puede haber múltiples tramos con el mismo origen-destino.
- RUTAS, que representan un posible recorrido de una línea de autobús (sin horario de salida), tienen un código corto, una descripción y una secuencia ordenada de múltiples TRAMOS.

Dada esta definición, el modelo relacional generado es el siguiente:
![imagen](https://user-images.githubusercontent.com/37666654/154796768-dcaa2036-5013-4806-bf46-448934b14273.png)

Puntos a tener en cuenta:
- Dado que un tramo puede estar en varias rutas y tener distancias y tiempos distintos, creamos una entidad "RutasTramos" para representar ese requisito.
- El código corto se ha rellenado mediante un identificador autonumérico.
- Las paradas son:
  - 1 Pinar de Chamartin
  - 2 Bambú
  - 3 Chamartín
  - 4 Plaza castilla
  - 5 Valdeacederas
  - 6 Tetuán
  - 7 Estrecho
  - 8 Alvarado
  - 9 Cuatro Caminos
  - 10 Ríos Rosas




