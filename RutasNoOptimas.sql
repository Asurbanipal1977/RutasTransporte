-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Miguel Ángel
-- Create date: 21/02/2022
-- Description:	Procedimiento para obtener las rutas no óptimas
-- =============================================
CREATE PROCEDURE RutasNoOptimas
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Parada nvarchar(100);
	DECLARE CursorParadas1 CURSOR FOR select Descripcion from Paradas;

	OPEN CursorParadas1;
	FETCH NEXT FROM CursorParadas1 INTO @Parada;

	WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT @Parada
        FETCH NEXT FROM cursor_product INTO @Parada;
    END;
	CLOSE CursorParadas1;
	DEALLOCATE CursorParadas1;
END
GO
