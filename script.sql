USE [appacdm]
GO
/****** Object:  Table [dbo].[CATEGPROFISSIONAL]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGPROFISSIONAL](
	[Categoria Profissional] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISTRITO]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRITO](
	[Distrito] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Distrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONARIO]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONARIO](
	[Numero_Funcionário] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Funcionário] [nvarchar](50) NOT NULL,
	[Numero_Contribuinte] [int] NOT NULL,
	[Categoria_Profissional] [nvarchar](50) NOT NULL,
	[Senha] [int] NOT NULL,
	[Lar] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Numero_Funcionário] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LAR]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAR](
	[Nome do Lar] [nvarchar](50) NOT NULL,
	[Morada] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nome do Lar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REG_TENSAOARTERIAL]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REG_TENSAOARTERIAL](
	[ID_REGISTO] [int] NOT NULL,
	[NUM_UTENTE] [int] NOT NULL,
	[NOME_UTENTE] [nvarchar](50) NOT NULL,
	[DATA_REG] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_REGISTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEXO]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEXO](
	[Sexo] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINAIS_VITAIS]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINAIS_VITAIS](
	[Temperatura Corporal] [decimal](2, 1) NOT NULL,
	[Tensão Arterial] [decimal](2, 2) NOT NULL,
	[Crise Epilepsia] [nchar](3) NOT NULL,
	[Controlo dos Esfíncteres] [nchar](3) NOT NULL,
	[Observações] [nvarchar](300) NOT NULL,
	[Número de Registo] [int] NOT NULL,
	[Número de Utente] [int] NOT NULL,
	[Data de Registo] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_SINAIS_VITAIS] PRIMARY KEY CLUSTERED 
(
	[Número de Registo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTENTE]    Script Date: 23/05/2019 15:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTENTE](
	[NUMERO_UTENTE] [int] IDENTITY(1,1) NOT NULL,
	[NOME_UTENTE] [nvarchar](50) NOT NULL,
	[NUM_CONTR] [int] NOT NULL,
	[DATA_NASC] [smalldatetime] NOT NULL,
	[Sexo] [nchar](10) NOT NULL,
	[Distrito] [nchar](20) NOT NULL,
	[Lar] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMERO_UTENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CATEGPROFISSIONAL] ([Categoria Profissional]) VALUES (N'Administrador')
INSERT [dbo].[CATEGPROFISSIONAL] ([Categoria Profissional]) VALUES (N'Assistente de Saúde')
INSERT [dbo].[CATEGPROFISSIONAL] ([Categoria Profissional]) VALUES (N'Assistente Social')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Aveiro              ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Beja                ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Braga               ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Bragança            ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Castelo Branco      ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Coimbra             ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Évora               ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Faro                ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Guarda              ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Leiria              ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Lisboa              ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Portalegre          ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Porto               ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Santarém            ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Setúbal             ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Viana do Castelo    ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Vila Real           ')
INSERT [dbo].[DISTRITO] ([Distrito]) VALUES (N'Viseu               ')
SET IDENTITY_INSERT [dbo].[FUNCIONARIO] ON 

INSERT [dbo].[FUNCIONARIO] ([Numero_Funcionário], [Nome_Funcionário], [Numero_Contribuinte], [Categoria_Profissional], [Senha], [Lar]) VALUES (1, N'Sandra Rodrigues', 213497678, N'Assistente de Saúde', 1234, N'Costa do Valado')
INSERT [dbo].[FUNCIONARIO] ([Numero_Funcionário], [Nome_Funcionário], [Numero_Contribuinte], [Categoria_Profissional], [Senha], [Lar]) VALUES (2, N'Susana Alves', 234567891, N'Assistente Social', 2345, N'S.Bernardo')
INSERT [dbo].[FUNCIONARIO] ([Numero_Funcionário], [Nome_Funcionário], [Numero_Contribuinte], [Categoria_Profissional], [Senha], [Lar]) VALUES (3, N'José Pereira', 234165478, N'Administrador', 3456, N'Santiago')
SET IDENTITY_INSERT [dbo].[FUNCIONARIO] OFF
INSERT [dbo].[LAR] ([Nome do Lar], [Morada]) VALUES (N'Costa do Valado', N'Aveiro')
INSERT [dbo].[LAR] ([Nome do Lar], [Morada]) VALUES (N'S.Bernardo', N'Aveiro')
INSERT [dbo].[LAR] ([Nome do Lar], [Morada]) VALUES (N'Santiago', N'Aveiro')
INSERT [dbo].[SEXO] ([Sexo]) VALUES (N'F         ')
INSERT [dbo].[SEXO] ([Sexo]) VALUES (N'M         ')
SET IDENTITY_INSERT [dbo].[UTENTE] ON 

INSERT [dbo].[UTENTE] ([NUMERO_UTENTE], [NOME_UTENTE], [NUM_CONTR], [DATA_NASC], [Sexo], [Distrito], [Lar]) VALUES (1, N'Maria Costa', 432345678, CAST(N'1970-05-29T00:00:00' AS SmallDateTime), N'F         ', N'Aveiro              ', N'Costa do Valado     ')
INSERT [dbo].[UTENTE] ([NUMERO_UTENTE], [NOME_UTENTE], [NUM_CONTR], [DATA_NASC], [Sexo], [Distrito], [Lar]) VALUES (2, N'Duarte Afonso', 341876543, CAST(N'1945-07-04T00:00:00' AS SmallDateTime), N'M         ', N'Coimbra             ', N'Santiago            ')
INSERT [dbo].[UTENTE] ([NUMERO_UTENTE], [NOME_UTENTE], [NUM_CONTR], [DATA_NASC], [Sexo], [Distrito], [Lar]) VALUES (3, N'João Pires', 123456789, CAST(N'1947-05-04T00:00:00' AS SmallDateTime), N'M         ', N'Braga               ', N'Santiago            ')
INSERT [dbo].[UTENTE] ([NUMERO_UTENTE], [NOME_UTENTE], [NUM_CONTR], [DATA_NASC], [Sexo], [Distrito], [Lar]) VALUES (4, N'Paula Rodrigues', 342567987, CAST(N'1965-06-27T00:00:00' AS SmallDateTime), N'F         ', N'Castelo Branco      ', N'S.Bernardo          ')
SET IDENTITY_INSERT [dbo].[UTENTE] OFF
