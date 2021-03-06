USE [RedTransporte]
GO
/****** Object:  Table [dbo].[Paradas]    Script Date: 22/02/2022 19:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paradas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[Latitud] [decimal](9, 6) NOT NULL,
	[Longitud] [decimal](9, 6) NOT NULL,
 CONSTRAINT [PK_Paradas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rutas]    Script Date: 22/02/2022 19:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rutas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Rutas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RutasTramos]    Script Date: 22/02/2022 19:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RutasTramos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodTramo] [int] NOT NULL,
	[CodRuta] [int] NOT NULL,
	[Orden] [int] NOT NULL,
	[Longitud] [decimal](9, 2) NOT NULL,
	[Duracion] [decimal](9, 2) NOT NULL,
 CONSTRAINT [PK_RutasTramos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tramos]    Script Date: 22/02/2022 19:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tramos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origen] [int] NOT NULL,
	[Destino] [int] NOT NULL,
 CONSTRAINT [PK_Tramos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Paradas] ON 

INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (1, N'Pinar de Chamartín', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (2, N'Bambú', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (3, N'Chamartín', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (4, N'Plaza Castilla', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (5, N'Valdeacederas', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (6, N'Tetuán', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (7, N'Estrecho', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (8, N'Alvarado', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (9, N'Cuatro Caminos', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
INSERT [dbo].[Paradas] ([Id], [Descripcion], [Latitud], [Longitud]) VALUES (10, N'Ríos Rosas', CAST(40.479030 AS Decimal(9, 6)), CAST(-3.668360 AS Decimal(9, 6)))
SET IDENTITY_INSERT [dbo].[Paradas] OFF
SET IDENTITY_INSERT [dbo].[Rutas] ON 

INSERT [dbo].[Rutas] ([Id], [Descripcion]) VALUES (1, N'Ruta Ázul')
INSERT [dbo].[Rutas] ([Id], [Descripcion]) VALUES (2, N'Ruta Amarilla')
INSERT [dbo].[Rutas] ([Id], [Descripcion]) VALUES (3, N'Ruta Verde')
INSERT [dbo].[Rutas] ([Id], [Descripcion]) VALUES (4, N'Ruta Naranja')
INSERT [dbo].[Rutas] ([Id], [Descripcion]) VALUES (5, N'Ruta Rojo')
INSERT [dbo].[Rutas] ([Id], [Descripcion]) VALUES (6, N'Ruta Rosa')
SET IDENTITY_INSERT [dbo].[Rutas] OFF
SET IDENTITY_INSERT [dbo].[RutasTramos] ON 

INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (1, 2, 1, 1, CAST(1.55 AS Decimal(9, 2)), CAST(1.55 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (2, 6, 1, 2, CAST(10.05 AS Decimal(9, 2)), CAST(1.05 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (3, 11, 1, 3, CAST(1.15 AS Decimal(9, 2)), CAST(1.15 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (4, 17, 1, 4, CAST(1.30 AS Decimal(9, 2)), CAST(1.30 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (5, 21, 1, 5, CAST(1.22 AS Decimal(9, 2)), CAST(1.22 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (6, 1, 2, 1, CAST(1.32 AS Decimal(9, 2)), CAST(1.32 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (7, 4, 2, 2, CAST(1.17 AS Decimal(9, 2)), CAST(1.17 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (8, 8, 2, 3, CAST(1.23 AS Decimal(9, 2)), CAST(1.23 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (9, 12, 2, 4, CAST(2.01 AS Decimal(9, 2)), CAST(2.01 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (10, 19, 2, 5, CAST(1.03 AS Decimal(9, 2)), CAST(1.03 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (11, 5, 3, 1, CAST(1.21 AS Decimal(9, 2)), CAST(1.32 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (12, 8, 3, 2, CAST(1.56 AS Decimal(9, 2)), CAST(1.17 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (13, 9, 3, 3, CAST(1.32 AS Decimal(9, 2)), CAST(1.23 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (14, 14, 3, 4, CAST(2.34 AS Decimal(9, 2)), CAST(2.01 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (15, 16, 3, 5, CAST(1.33 AS Decimal(9, 2)), CAST(1.03 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (16, 23, 4, 1, CAST(1.14 AS Decimal(9, 2)), CAST(1.32 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (17, 20, 4, 2, CAST(1.13 AS Decimal(9, 2)), CAST(1.17 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (18, 15, 4, 3, CAST(1.57 AS Decimal(9, 2)), CAST(1.23 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (19, 10, 4, 4, CAST(2.45 AS Decimal(9, 2)), CAST(2.01 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (20, 3, 4, 5, CAST(1.24 AS Decimal(9, 2)), CAST(1.03 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (21, 22, 5, 1, CAST(1.26 AS Decimal(9, 2)), CAST(1.32 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (22, 18, 5, 2, CAST(1.33 AS Decimal(9, 2)), CAST(1.17 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (23, 13, 5, 3, CAST(1.21 AS Decimal(9, 2)), CAST(1.23 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (24, 7, 5, 4, CAST(2.21 AS Decimal(9, 2)), CAST(2.01 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (25, 3, 5, 5, CAST(1.28 AS Decimal(9, 2)), CAST(1.03 AS Decimal(9, 2)))
INSERT [dbo].[RutasTramos] ([Id], [CodTramo], [CodRuta], [Orden], [Longitud], [Duracion]) VALUES (26, 24, 6, 1, CAST(5.00 AS Decimal(9, 2)), CAST(1.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[RutasTramos] OFF
SET IDENTITY_INSERT [dbo].[Tramos] ON 

INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (1, 1, 2)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (2, 1, 3)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (3, 2, 1)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (4, 2, 4)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (5, 3, 4)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (6, 3, 5)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (7, 4, 2)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (8, 4, 5)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (10, 5, 2)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (9, 5, 6)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (11, 5, 7)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (12, 5, 8)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (13, 6, 4)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (14, 6, 7)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (15, 7, 5)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (16, 7, 8)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (17, 7, 9)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (18, 8, 6)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (19, 8, 10)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (20, 9, 7)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (21, 9, 10)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (24, 10, 7)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (22, 10, 8)
INSERT [dbo].[Tramos] ([Id], [Origen], [Destino]) VALUES (23, 10, 9)
SET IDENTITY_INSERT [dbo].[Tramos] OFF
/****** Object:  Index [UN_Tramos]    Script Date: 22/02/2022 19:52:19 ******/
ALTER TABLE [dbo].[Tramos] ADD  CONSTRAINT [UN_Tramos] UNIQUE NONCLUSTERED 
(
	[Origen] ASC,
	[Destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RutasTramos]  WITH CHECK ADD  CONSTRAINT [FK_RutasTramos_Rutas] FOREIGN KEY([CodRuta])
REFERENCES [dbo].[Rutas] ([Id])
GO
ALTER TABLE [dbo].[RutasTramos] CHECK CONSTRAINT [FK_RutasTramos_Rutas]
GO
ALTER TABLE [dbo].[RutasTramos]  WITH CHECK ADD  CONSTRAINT [FK_RutasTramos_Tramos] FOREIGN KEY([CodTramo])
REFERENCES [dbo].[Tramos] ([Id])
GO
ALTER TABLE [dbo].[RutasTramos] CHECK CONSTRAINT [FK_RutasTramos_Tramos]
GO
ALTER TABLE [dbo].[Tramos]  WITH CHECK ADD  CONSTRAINT [FK_Tramos_Paradas_Destino] FOREIGN KEY([Destino])
REFERENCES [dbo].[Paradas] ([Id])
GO
ALTER TABLE [dbo].[Tramos] CHECK CONSTRAINT [FK_Tramos_Paradas_Destino]
GO
ALTER TABLE [dbo].[Tramos]  WITH CHECK ADD  CONSTRAINT [FK_Tramos_Paradas_Origen] FOREIGN KEY([Origen])
REFERENCES [dbo].[Paradas] ([Id])
GO
ALTER TABLE [dbo].[Tramos] CHECK CONSTRAINT [FK_Tramos_Paradas_Origen]
GO
/****** Object:  StoredProcedure [dbo].[RutaMasCorta]    Script Date: 22/02/2022 19:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RutaMasCorta] 
(@origen int, @destino int, @longitudMinima DECIMAL(9,2) OUT) 
AS
BEGIN
   SET NOCOUNT ON;
   WITH DistanciasTramos AS
	   (select aux.Origen IdOrigen, aux.DesOrigen Origen,
			aux.Destino IdDestino, aux.DesDestino Destino, r.Id IdRuta, r.Descripcion Ruta, 
			Longitud LongitudMinima from RutasTramos rt, 
			(select t.Id, t.Origen, pOrigen.Descripcion DesOrigen, t.Destino, pDestino.Descripcion DesDestino 
			from Tramos t, Paradas pOrigen, Paradas pDestino 
			where pOrigen.Id = t.Origen and pDestino.Id = t.Destino) aux, Rutas r 
			where rt.CodTramo = aux.Id 
			and rt.CodRuta = r.Id),
   RutaOrigen
   AS (
	SELECT IdOrigen, IdDestino,
         CASE 
            WHEN IdOrigen IS NULL
               THEN CAST ('-' + ISNULL (IdOrigen, IdDestino) + '-' AS VARCHAR (MAX))
            WHEN IdOrigen IS NOT NULL
               THEN CAST ('-' + CONVERT(varchar(10),IdOrigen) + '-' + CONVERT(varchar(10),IdDestino) + '-' AS VARCHAR (MAX))
            END RutaMinima,
         LongitudMinima LongitudTotalMinima
      FROM DistanciasTramos
      WHERE (IdOrigen = @origen)
   ),
   Aux1
   AS (SELECT * FROM RutaOrigen
      UNION ALL
      SELECT a.IdOrigen, a.IdDestino,
         c.RutaMinima + '-' + CONVERT(varchar(10), a.IdDestino) + '-' RutaMinima,
         CONVERT(DECIMAL(9,2), LongitudTotalMinima + a.LongitudMinima) LongitudTotalMinima
      FROM DistanciasTramos a, RutaOrigen c
      WHERE a.IdOrigen = c.IdDestino
      ),
  Aux2
  AS (SELECT *, RANK () OVER (ORDER BY LongitudTotalMinima) MenorRuta
      FROM Aux1
      WHERE IdDestino = @destino)
	
   SELECT @longitudMinima = LongitudTotalMinima
   FROM Aux2
   WHERE MenorRuta = 1;

   SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[RutasNoOptimas]    Script Date: 22/02/2022 19:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Ángel
-- Create date: 21/02/2022
-- Description:	Procedimiento para obtener las rutas no óptimas
-- =============================================
CREATE PROCEDURE [dbo].[RutasNoOptimas]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @IdOrigen int;
	DECLARE @IdDestino int;
	DECLARE @IdRuta int = 0;
	DECLARE @Longitud DECIMAL(9,2);
	DECLARE @LongitudMinima DECIMAL(9,2);

	DECLARE @T TABLE(
		IdOrigen INT,
		Origen NVARCHAR(100),
		IdDestino INT,
		Destino NVARCHAR(100),
		IdRuta INT,
		Ruta NVARCHAR(100),
		Optima BIT
	)

	--Se crea una tabla
	insert INTO @T (IdOrigen, Origen, IdDestino, Destino, IdRuta, Ruta, Optima)
	(select aux.Origen IdOrigen, aux.DesOrigen Origen,
		aux.Destino IdDestino, aux.DesDestino Destino, r.Id IdRuta, r.Descripcion Ruta,
		1 Optima from RutasTramos rt, 
		(select t.Id, t.Origen, pOrigen.Descripcion DesOrigen, t.Destino, pDestino.Descripcion DesDestino 
		from Tramos t, Paradas pOrigen, Paradas pDestino 
		where pOrigen.Id = t.Origen and pDestino.Id = t.Destino) aux, Rutas r 
		where rt.CodTramo = aux.Id 
		and rt.CodRuta = r.Id)
	
	--Se declara el cursor
	DECLARE CursorTramos CURSOR
		FOR
		(select aux.Origen IdOrigen, aux.Destino IdDestino, r.Id IdRuta, 
		Longitud from RutasTramos rt, 
		(select t.Id, t.Origen, pOrigen.Descripcion DesOrigen, t.Destino, pDestino.Descripcion DesDestino 
		from Tramos t, Paradas pOrigen, Paradas pDestino 
		where pOrigen.Id = t.Origen and pDestino.Id = t.Destino) aux, Rutas r 
		where rt.CodTramo = aux.Id 
		and rt.CodRuta = r.Id)
 
	OPEN CursorTramos
 
	FETCH NEXT FROM CursorTramos INTO @IdOrigen, @IdDestino, @IdRuta, @Longitud
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXEC RutaMasCorta @origen = @IdOrigen,
			@destino = @IdDestino,
			@longitudMinima = @longitudMinima OUTPUT
		IF (@longitudMinima < @longitud)
			UPDATE @T SET Optima = 0 WHERE 
			IdOrigen=@IdOrigen AND IdDestino=@IdDestino AND IdRuta=@IdRuta
 
		FETCH NEXT FROM CursorTramos INTO @IdOrigen, @IdDestino, @IdRuta, @Longitud
	END	
	CLOSE CursorTramos  
	DEALLOCATE CursorTramos
	
	SELECT Origen, Destino, Ruta FROM @T WHERE Optima = 0;

	SET NOCOUNT OFF;
END
GO
