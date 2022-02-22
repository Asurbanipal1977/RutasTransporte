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

La exportación de la base de datos se puede ver en esta ruta:
[Base de datos](https://github.com/Asurbanipal1977/RutasTransporte/edit/main/RedTransporte.sql)

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


### 1.1. GRIDS CATÁLOGO

Se implementa en el código el acceso a la base de datos SQL Server. Para mostrar la información usamos dos DataGridView:


![imagen](https://user-images.githubusercontent.com/37666654/155023014-6f9806fb-1841-42fe-ba74-2071065f85b3.png)

El primer grid nos muestra las rutas y, el segundo grid, nos muestra los tramos de la ruta seleccionada. En este último grid se hace un join entre las tablas Rutas, Tramos y TramosRutas(una ruta puede tener varios tramos y, un tramo, estar en varias rutas)

### 1.2. GRID CAMINOS MÍNIMOS

Para obtener el camino mínimo entre dos paradas, se aplica el algoritmo de Floyd Warshall. Para este algoritmo hay que generar una matriz con todas las paradas como filas y columnas. 
El proceso busca si existe un tramo intermedio cuya longitud sea menor que la distancia entre el inicio y el fin. Para realizar este proceso tenemos que usar tres bucles:
- Con todas las paradas de la red como intermedias.
- Con todas las paradas de la red como inicio.
- Con todas las paradas de la red como fin.

Además de calcular las distancias mínimas, también se obtiene las paradas para esa ruta más corta. La ruta más corta con las paradas está almacenada en un List<RutasTramos> que, a su vez, tiene una lista de List<Tramos>. Esta sería la estructura:
```
    public class Tramos
    {
        public int IdOrigen { get; set; }
        public string Origen { get; set; }
        public int IdDestino { get; set; }
        public string Destino { get; set; }
        public string Ruta { get; set; }
    }

    public class RutasTramos
    {
        public List<Tramos> lstRutasTramos { get; set; }
    } 
  
    public class DistanciaTramos
    {
        public List<RutasTramos> lstTramos { get; set; }
        public double DistanciaMinima { get; set; }
    }
 ```
Desde el formulario principal FrRutasTransporte, se ha puesto un botón para que llame al procedimiento almacenado FrRutaMinima, que mostrará un DataGridView con las distancias mínimas. Al dar doble click sobre una las distancias, se abrirá un emergente con la ruta para esa distancia mínima

### 1.3 PROCEDIMIENTO DE RUTAS NO ÓPTIMAS

Para calcular las rutas no óptimas, usamos dos procedimientos almacenados. 
- **RutaMasCorta**: Este procedimiento busca la ruta más corta entre dos paradas cuyos índices se pasan como parámtero. Para ello:
  - Obtenemos todos los tramos de todas las rutas mediante un select con join a las tablas Rutas, RutasTramos y Tramos -> DistanciasTramos
  - Se obtiene los tramos que empiezan por la parada que pasamos como parámetro y se concatenan a los tramos que finalizan en la parada que pasamos como parámetro.
  - Se ordenan por la distancia y nos quedamos con el de menor distancia, que es el que devolvemos.
- **RutasNoOptimas**: Se recorre todos los tramos de todas las rutas mediante un cursor y, para cada tramo, llama al procedimiento **RutaMasCorta**. Se comprueba si el resultado de esa llamada es una ruta con una distancia menor que la distancia directa entre las paradas, y se devuelve aquellos tramos en el que se ha encontrado una ruta de menor distancia.
  
Desde el formulario principal FrRutasTransporte, se ha puesto un botón para que abra el formulario FrTramosNoOptimos y llame al procedimiento almacenado RutasNoOptimas.
  
 ### EJECUCIÓN
 Para ejecutar la aplicación hay que bajarse el repositorio, que incluye la base de datos. 
  - Se debe crear la base de datos RedTransporte y ejecutar el script que se encuentra en el archivo RedTransporte.sql: 
  [Base de datos](https://github.com/Asurbanipal1977/RutasTransporte/edit/main/RedTransporte.sql)
  
  
  
  - Una vez creada la base de datos, se debe cambiar la cadena de conexión de la aplicación, que se encuentra en la clase RutasTransporteCD, por la cadena de conexión de nuestro equipo. En mi caso es:
  ```
  private static readonly string cadenaConexion = @"Data Source=GIGABYTE-SABRE\SQLEXPRESS;Initial Catalog=RedTransporte;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
```
  
 - En la aplicación de consola, el proyecto de inicio es "CapaPresentacion" que arranca el formulario FrRutasTransporte
