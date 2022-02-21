# RUTAS TRANSPORTE

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

Los datos de Prueba de las rutas y tramos creados están en este insert:
[Insert datos de prueba](https://github.com/Asurbanipal1977/RutasTransporte/blob/main/Insert.sql)

Las rutas que vamos a tener son:

- Ruta ázul:


![imagen](https://user-images.githubusercontent.com/37666654/155022029-6ab2d620-920a-43b1-a592-10f2d5065649.png)


- Ruta Amarilla:


 ![imagen](https://user-images.githubusercontent.com/37666654/155022090-cb8a7e62-1c86-4907-a16e-98bff2a957e0.png)

- Ruta Verde:


![imagen](https://user-images.githubusercontent.com/37666654/155022129-51f8a89e-d83e-4121-bc09-2884dafc2505.png)

- Ruta Naranja:


![imagen](https://user-images.githubusercontent.com/37666654/155022154-4ffb791e-f199-4dcc-8b51-f6c05b943a01.png)

- Ruta Roja:


![imagen](https://user-images.githubusercontent.com/37666654/155022215-59542041-fb1f-4c67-9b9a-a004c45e0a9c.png)

La distancia viene expresada en kilómetros.





