USE [appacdm]
GO
/****** Object:  Table [dbo].[CATEGPROFISSIONAL]    Script Date: 23/05/2019 22:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGPROFISSIONAL](
	[Categoria Profissional] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISTRITO]    Script Date: 23/05/2019 22:18:10 ******/
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
/****** Object:  Table [dbo].[FUNCIONARIO]    Script Date: 23/05/2019 22:18:10 ******/
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
/****** Object:  Table [dbo].[LAR]    Script Date: 23/05/2019 22:18:10 ******/
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
/****** Object:  Table [dbo].[REG_TENSAOARTERIAL]    Script Date: 23/05/2019 22:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REG_TENSAOARTERIAL](
	[ID_REGISTO] [int] IDENTITY(1,1) NOT NULL,
	[NUM_UTENTE] [int] NOT NULL,
	[NOME_UTENTE] [nvarchar](50) NOT NULL,
	[DATA_REG] [date] NOT NULL,
	[MIN] [nchar](10) NOT NULL,
	[MAX] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_REGISTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEXO]    Script Date: 23/05/2019 22:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEXO](
	[Sexo] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTENTE]    Script Date: 23/05/2019 22:18:10 ******/
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
