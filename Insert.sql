ALTER TABLE Tramos  
ADD CONSTRAINT UN_Tramos UNIQUE (Origen, Destino);   

--Insert de rutas
INSERT into rutas (Descripcion) values ('Ruta Ázul');
INSERT into rutas (Descripcion) values ('Ruta Amarilla');
INSERT into rutas (Descripcion) values ('Ruta Verde');
INSERT into rutas (Descripcion) values ('Ruta Naranja');
INSERT into rutas (Descripcion) values ('Ruta Rojo');

insert into Paradas (Descripcion, Latitud, Longitud) values ('Pinar de Chamartín',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Bambú',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Chamartín',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Plaza Castilla',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Valdeacederas',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Tetuán',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Estrecho',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Alvarado',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Cuatro Caminos',40.479030, -3.668360);
insert into Paradas (Descripcion, Latitud, Longitud) values ('Ríos Rosas',40.479030, -3.668360);

--Tramos
insert into tramos (Origen, Destino) Values (1,2);
insert into tramos (Origen, Destino) Values (1,3);
insert into tramos (Origen, Destino) Values (2,1);
insert into tramos (Origen, Destino) Values (2,4);
insert into tramos (Origen, Destino) Values (3,4);
insert into tramos (Origen, Destino) Values (3,5);
insert into tramos (Origen, Destino) Values (4,2);
insert into tramos (Origen, Destino) Values (4,5);
insert into tramos (Origen, Destino) Values (5,6);
insert into tramos (Origen, Destino) Values (5,2);
insert into tramos (Origen, Destino) Values (5,7);
insert into tramos (Origen, Destino) Values (5,8);
insert into tramos (Origen, Destino) Values (6,4);
insert into tramos (Origen, Destino) Values (6,7);
insert into tramos (Origen, Destino) Values (7,5);
insert into tramos (Origen, Destino) Values (7,8);
insert into tramos (Origen, Destino) Values (7,9);
insert into tramos (Origen, Destino) Values (8,6);
insert into tramos (Origen, Destino) Values (8,10);
insert into tramos (Origen, Destino) Values (9,7);
insert into tramos (Origen, Destino) Values (9,10);
insert into tramos (Origen, Destino) Values (10,8);
insert into tramos (Origen, Destino) Values (10,9);

--Rutas Tramos
insert into RutasTramos (CodRuta,CodTramo,Orden,Longitud,Duracion) values
(1,2,1,1.55,1.55),
(1,6,2,1.05,1.05),
(1,11,3,1.15,1.15),
(1,17,4,1.30,1.30),
(1,21,5,1.22,1.22),
(2,1,1,1.32,1.32),
(2,4,2,1.17,1.17),
(2,8,3,1.23,1.23),
(2,12,4,2.01,2.01),
(2,19,5,1.03,1.03),
(3,5,1,1.21,1.32),
(3,8,2,1.56,1.17),
(3,9,3,1.32,1.23),
(3,14,4,2.34,2.01),
(3,16,5,1.33,1.03),
(4,23,1,1.14,1.32),
(4,20,2,1.13,1.17),
(4,15,3,1.57,1.23),
(4,10,4,2.45,2.01),
(4,3,5,1.24,1.03),
(5,22,1,1.26,1.32),
(5,18,2,1.33,1.17),
(5,13,3,1.21,1.23),
(5,7,4,2.21,2.01),
(5,3,5,1.28,1.03)