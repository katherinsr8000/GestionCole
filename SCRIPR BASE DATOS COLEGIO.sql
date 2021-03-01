/****** Object:  Schema [colegio]    Script Date: 28/02/2021 9:41:47 p. m. ******/
CREATE SCHEMA [colegio]
GO
/****** Object:  Table [colegio].[Alumno]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [colegio].[Alumno](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[NumeroIdentificacion] [varchar](23) NULL,
	[Nombres] [varchar](40) NULL,
	[Apellidos] [varchar](40) NULL,
	[direccion] [varchar](50) NULL,
	[Telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [colegio].[Asignatura]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [colegio].[Asignatura](
	[IdAsignatura] [int] IDENTITY(1,1) NOT NULL,
	[NombreMateria] [varchar](100) NULL,
	[EstadoMateria] [bit] NULL,
	[IdAlumno] [int] NULL,
	[IdProfesor] [int] NULL,
	[FechaAccion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [colegio].[notas]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [colegio].[notas](
	[Idnotas] [int] IDENTITY(1,1) NOT NULL,
	[Calificacion_final] [decimal](18, 0) NULL,
	[AnoAcademico] [int] NULL,
	[idasignatura] [int] NULL,
	[IdAlumno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Idnotas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [colegio].[Profesor]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [colegio].[Profesor](
	[IdProfesor] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](40) NULL,
	[Apellidos] [varchar](40) NULL,
	[direccion] [varchar](50) NULL,
	[Telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [colegio].[Alumno] ON 
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (1, N'12345', N'Maria Paula', N'Perez', N'Calle 12', 1545454)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (2, N'55884', N'Andres ', N'Espinosa', N'Calle 15', 4454545)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (3, N'55878', N'Nicolas', N'Rojas', N'Calle 101', 5577877)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (4, N'88524', N'Melissa', N'Salazar', N'Calle 144', 154545)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (5, N'74147', N'Julie', N'Cardenas', N'Calle 587', 744111)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (6, N'1001045160', N'Angie ', N'Santa', N'Calle 555 # 555', 555555)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (7, N'100025429', N'Halison', N'Santa', N'calle 5458 # 966', 310254785)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (8, N'1002596355', N'Nicolas', N'Moreno', N'calle prueba 695', 320158)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (9, N'21002525', N'andres', N'castañeda', N'sasss22', 121265465)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (12, N'1111566', N'sofia maria', N'gomez', N'callee 555 ', 45445222)
GO
INSERT [colegio].[Alumno] ([IdAlumno], [NumeroIdentificacion], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (13, N'114777', N'Paula', N'Velasco', N'Calle 366 # 77', 3224415)
GO
SET IDENTITY_INSERT [colegio].[Alumno] OFF
GO
SET IDENTITY_INSERT [colegio].[Asignatura] ON 
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (1, N'Español', 1, 2, 4, CAST(N'2021-02-25T13:01:27.477' AS DateTime))
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (2, N'Matematicas', 1, 3, 1, CAST(N'2021-02-25T13:01:27.477' AS DateTime))
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (3, N'Ingles', NULL, NULL, NULL, NULL)
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (5, N'Sociales', 1, NULL, NULL, CAST(N'2021-02-25T18:43:53.837' AS DateTime))
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (6, N'Ciencias Natuales', 1, NULL, NULL, CAST(N'2021-02-25T18:45:04.717' AS DateTime))
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (7, N'Biologia', 1, NULL, NULL, CAST(N'2021-02-27T14:10:08.700' AS DateTime))
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (8, N'Algebra', 1, NULL, NULL, CAST(N'2021-02-27T14:14:01.990' AS DateTime))
GO
INSERT [colegio].[Asignatura] ([IdAsignatura], [NombreMateria], [EstadoMateria], [IdAlumno], [IdProfesor], [FechaAccion]) VALUES (9, N'Educación física', 1, NULL, NULL, CAST(N'2021-02-27T14:30:27.800' AS DateTime))
GO
SET IDENTITY_INSERT [colegio].[Asignatura] OFF
GO
SET IDENTITY_INSERT [colegio].[notas] ON 
GO
INSERT [colegio].[notas] ([Idnotas], [Calificacion_final], [AnoAcademico], [idasignatura], [IdAlumno]) VALUES (1, CAST(3 AS Decimal(18, 0)), 2020, 1, NULL)
GO
INSERT [colegio].[notas] ([Idnotas], [Calificacion_final], [AnoAcademico], [idasignatura], [IdAlumno]) VALUES (2, CAST(32 AS Decimal(18, 0)), 2021, 7, 9)
GO
SET IDENTITY_INSERT [colegio].[notas] OFF
GO
SET IDENTITY_INSERT [colegio].[Profesor] ON 
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (1, N'Javier', N'Moreno ', N'Calle 19', 112238)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (2, N'Jonnathan', N'Pabon', N'Calle 744', 225559)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (3, N'Maria', N'Pedraza', N'Calle 74 255', 225574)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (4, N'Beatriz', N'Castro', N'Calle7 55', 536963)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (5, N'Carolina', N'Villamil', N'calle 5120 prueba', 33222)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (6, N'edgar ', N'bernal', N'4855 calle 5', 55553)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (7, N'Luz', N'Cardenas', N'Calle 555', 5262)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (8, N'Luz', N'Cardenas', N'Calle 555', 5262)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (9, N'pruebas', N'pruebas 2', N'calle55', 515151)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (10, N'Javier', N'Montano', N'calle 22 # 55', 6543363)
GO
INSERT [colegio].[Profesor] ([IdProfesor], [Nombres], [Apellidos], [direccion], [Telefono]) VALUES (11, N'Paula Maria', N'Jara Molina ', N'cll 6#54-25', 2115)
GO
SET IDENTITY_INSERT [colegio].[Profesor] OFF
GO
ALTER TABLE [colegio].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [colegio].[Alumno] ([IdAlumno])
GO
ALTER TABLE [colegio].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Alumno]
GO
ALTER TABLE [colegio].[Asignatura]  WITH CHECK ADD  CONSTRAINT [FK_Asignatura_Profesor] FOREIGN KEY([IdProfesor])
REFERENCES [colegio].[Profesor] ([IdProfesor])
GO
ALTER TABLE [colegio].[Asignatura] CHECK CONSTRAINT [FK_Asignatura_Profesor]
GO
ALTER TABLE [colegio].[notas]  WITH CHECK ADD  CONSTRAINT [FK_notas_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [colegio].[Alumno] ([IdAlumno])
GO
ALTER TABLE [colegio].[notas] CHECK CONSTRAINT [FK_notas_Alumno]
GO
ALTER TABLE [colegio].[notas]  WITH CHECK ADD  CONSTRAINT [FK_notas_Asignatura] FOREIGN KEY([idasignatura])
REFERENCES [colegio].[Asignatura] ([IdAsignatura])
GO
ALTER TABLE [colegio].[notas] CHECK CONSTRAINT [FK_notas_Asignatura]
GO
/****** Object:  StoredProcedure [colegio].[Add_Alumno]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [colegio].[Add_Alumno]
@NumeroIdentificacion VARCHAR (23),
@Nombres	VARCHAR (40),
@Apellidos  VARCHAR (40),
@direccion  VARCHAR (50),
@Telefono INT 

AS
BEGIN

	INSERT INTO [colegio].[Alumno] (NumeroIdentificacion,Nombres,Apellidos,direccion,Telefono)
	VALUES (@NumeroIdentificacion,@Nombres,@Apellidos,@direccion,@Telefono)

END 

GO
/****** Object:  StoredProcedure [colegio].[Add_Asignatura]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROC [colegio].[Add_Asignatura]
@NombreMateria VARCHAR (150),
@IdAlumno INT ,
@IdProfesor INT 
AS
BEGIN

	INSERT INTO [colegio].[Asignatura] (NombreMateria,EstadoMateria,IdAlumno,IdProfesor,FechaAccion)
	VALUES  (@NombreMateria,1,@IdAlumno,@IdProfesor,GETDATE())

END 

GO
/****** Object:  StoredProcedure [colegio].[Add_CrearAsignatura]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROC [colegio].[Add_CrearAsignatura]
@NombreMateria VARCHAR (150)

AS
BEGIN

	INSERT INTO [colegio].[Asignatura] (NombreMateria,EstadoMateria,FechaAccion)
	VALUES  (@NombreMateria,1,GETDATE())

END 
GO
/****** Object:  StoredProcedure [colegio].[Add_NotasAlumno]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [colegio].[Add_NotasAlumno]
@Calificacion_final DECIMAL , @idasignatura INT , @IdAlumno INT 
AS
BEGIN

	Declare  @Fecha Datetime = GETDATE(),@Ano int 
	Set @Ano = Datepart(yy,convert(datetime,@Fecha,103))
	
	INSERT INTO [colegio].[notas] (Calificacion_final ,AnoAcademico , idasignatura , IdAlumno)
	VALUES (@Calificacion_final  ,@Ano  , @idasignatura  , @IdAlumno  )

END 



GO
/****** Object:  StoredProcedure [colegio].[Add_Profesor]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [colegio].[Add_Profesor]
@Nombres varchar (40),
@Apellidos  varchar (40),
@direccion varchar (40),
@Telefono int 

AS
BEGIN

	INSERT INTO [colegio].[Profesor] (Nombres,Apellidos,direccion,Telefono)
	VALUES (@Nombres,@Apellidos,@direccion,@Telefono)

END 
GO
/****** Object:  StoredProcedure [colegio].[Get_Alumno]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [colegio].[Get_Alumno]

as
Begin 

	SELECT 
	IdAlumno , 
	Nombres + ' ' +Apellidos as Nombre
	FROM [colegio].[Alumno] WITH (NOLOCK)
	ORDER BY Nombres ASC
end 
GO
/****** Object:  StoredProcedure [colegio].[Get_Profesor]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [colegio].[Get_Profesor]

as
Begin 

	SELECT 
	IdProfesor , 
	Nombres + ' ' +Apellidos as Nombre
	FROM [colegio].[Profesor] WITH (NOLOCK)
	ORDER BY Nombres ASC
end 
GO
/****** Object:  StoredProcedure [colegio].[Get_ReporteNotas]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [colegio].[Get_ReporteNotas]

AS
BEGIN 
	
	SELECT 
		n.AnoAcademico , 
		a.NumeroIdentificacion, 
		a.Nombres +' '+ Apellidos AS NombreAlumno, 
		asi.IdAsignatura as CodigoMateria, 
		asi.NombreMateria , 
		'' as Identificacionprofesor, 
		'' as NombreProfesor , 
		convert (varchar (20), n.Calificacion_final) , 
		'' as Aprobo
	FROM [colegio].[Alumno] a with (nolock)
	INNER JOIN colegio.notas n with (nolock) on a.IdAlumno = n.IdAlumno
	INNER JOIN colegio.Asignatura asi with (nolock) on asi.IdAsignatura = n.idasignatura

END
GO
/****** Object:  StoredProcedure [colegio].[lst_Alumno]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC [colegio].[lst_Alumno]

AS
BEGIN 

	SELECT 
		a.IdAlumno ,
		a.NumeroIdentificacion,
		a.Nombres,
		a.Apellidos,
		a.direccion,
		a.Telefono
	FROM [colegio].[Alumno] a WITH (NOLOCK)
	ORDER BY IdAlumno desc
end
GO
/****** Object:  StoredProcedure [colegio].[lst_Asignatura]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [colegio].[lst_Asignatura]

as
Begin 

	SELECT IdAsignatura , NombreMateria
	FROM [colegio].[Asignatura] WITH (NOLOCK)
	ORDER BY IdAsignatura DESC
end 

GO
/****** Object:  StoredProcedure [colegio].[lst_Profesor]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [colegio].[lst_Profesor]

AS
BEGIN 

	SELECT 
		IdProfesor ,
		Nombres		,
		Apellidos	,
		direccion	,
		Telefono
	FROM [colegio].[Profesor] WITH (NOLOCK)
	ORDER BY IdProfesor DESC
END 
GO
/****** Object:  StoredProcedure [colegio].[upd_Alumno]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [colegio].[upd_Alumno]
@IdAlumno INT ,
@Nombres	VARCHAR (40),
@Apellidos  VARCHAR (40),
@direccion  VARCHAR (50),
@Telefono INT 

AS
BEGIN

IF EXISTS (SELECT IdAlumno FROM [colegio].[Alumno] WHERE IdAlumno = @IdAlumno )
BEGIN 
	UPDATE [colegio].[Alumno]
	SET 
		Nombres		= @Nombres	,
		Apellidos	= @Apellidos,
		direccion	= @direccion,
		Telefono	= @Telefono
	WHERE IdAlumno = @IdAlumno
end 
ELSE 
BEGIN 
	SELECT 'No existe el alumno!'
END

END 

GO
/****** Object:  StoredProcedure [colegio].[upd_profesor]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [colegio].[upd_profesor]
@IdProfesor INT ,
@Nombres	VARCHAR (40),
@Apellidos  VARCHAR (40),
@direccion  VARCHAR (50),
@Telefono INT 

AS
BEGIN

IF EXISTS (SELECT IdProfesor FROM [colegio].[Profesor] WHERE IdProfesor = @IdProfesor )
BEGIN 
	UPDATE [colegio].[Profesor]
	SET 
		Nombres		= @Nombres	,
		Apellidos	= @Apellidos,
		direccion	= @direccion,
		Telefono	= @Telefono
	WHERE IdProfesor = @IdProfesor
end 
ELSE 
BEGIN 
	SELECT 'No existe el profesor!'
END
END 

GO
/****** Object:  StoredProcedure [dbo].[Get_ConversionXml]    Script Date: 28/02/2021 9:41:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Get_ConversionXml] 
@xml_usuarios XML, 
@xml_compras XML, 
@xml_itemsIva XML

AS
BEGIN 

	SELECT @xml_usuarios = CAST(CAST(@xml_usuarios AS VARBINARY(MAX)) AS XML) 
	SELECT @xml_compras = CAST(CAST(@xml_compras AS VARBINARY(MAX)) AS XML) 
	SELECT @xml_itemsIva= CAST(CAST(@xml_itemsIva AS VARBINARY(MAX)) AS XML) 
	
	SELECT DISTINCT 
		x.Rec.query('./Id').value('.', 'nvarchar(2000)') AS 'Id',
		x.Rec.query('./Nombre').value('.', 'nvarchar(2000)') AS 'Nombre',
		C.COMPRAS.query('./Valor').value('.', 'nvarchar(2000)') AS 'Valor',
		I.IVA.query('./Porcentaje').value('.', 'nvarchar(2000)') AS 'Porcentaje'
	FROM @xml_usuarios.nodes('//Data//Usuario') as x(Rec)
	CROSS APPLY @xml_compras.nodes('Data//Item,') C(COMPRAS)
	CROSS APPLY @xml_itemsIva.nodes('Data//Producto') I(IVA)

END
GO
