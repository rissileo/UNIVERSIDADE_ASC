USE [master]
GO
/****** Object:  Database [UNIVERSIDADE_ASC]    Script Date: 02/05/2020 14:05:27 ******/
CREATE DATABASE [UNIVERSIDADE_ASC] ON  PRIMARY 
( NAME = N'UNIVERSIDADE_ASC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.RISSI\MSSQL\DATA\UNIVERSIDADE_ASC.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UNIVERSIDADE_ASC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.RISSI\MSSQL\DATA\UNIVERSIDADE_ASC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UNIVERSIDADE_ASC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET ARITHABORT OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET  MULTI_USER 
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET DB_CHAINING OFF 
GO
USE [UNIVERSIDADE_ASC]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/05/2020 14:05:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_resultado_periodo]    Script Date: 02/05/2020 14:05:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_resultado_periodo](
	[idResultadoPeriodo] [int] IDENTITY(1,1) NOT NULL,
	[idAluno] [int] NULL,
	[idMateria] [int] NULL,
	[notaAV1] [float] NULL,
	[notaAV2] [decimal](18, 1) NULL,
	[notaAV3] [decimal](18, 1) NULL,
	[notaFinal] [decimal](18, 1) NULL,
	[resultado] [varchar](50) NULL,
	[dtInsert] [datetime] NULL,
 CONSTRAINT [PK_tbResultadoPeriodo] PRIMARY KEY CLUSTERED 
(
	[idResultadoPeriodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_aluno]    Script Date: 02/05/2020 14:05:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_aluno](
	[idAluno] [int] IDENTITY(1,1) NOT NULL,
	[nmAluno] [varchar](50) NULL,
	[idTurma] [int] NULL,
	[dtInsert] [datetime] NULL,
 CONSTRAINT [PK_tbl_aluno] PRIMARY KEY CLUSTERED 
(
	[idAluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_materia]    Script Date: 02/05/2020 14:05:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_materia](
	[idMateria] [int] IDENTITY(1,1) NOT NULL,
	[dcMateria] [varchar](50) NULL,
	[pesoAV1] [int] NULL,
	[pesoAV2] [int] NULL,
	[pesoAV3] [int] NULL,
 CONSTRAINT [PK_tbl_materia] PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_turma]    Script Date: 02/05/2020 14:05:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_turma](
	[idTurma] [int] IDENTITY(1,1) NOT NULL,
	[dcTurma] [varchar](50) NULL,
	[dtInsert] [datetime] NULL,
 CONSTRAINT [PK_tbl_turma] PRIMARY KEY CLUSTERED 
(
	[idTurma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_resultado_periodo] ON 

GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (1, 1, 1, 87, CAST(76.0 AS Decimal(18, 1)), CAST(33.0 AS Decimal(18, 1)), CAST(56.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (2, 2, 1, 14, CAST(96.0 AS Decimal(18, 1)), CAST(34.0 AS Decimal(18, 1)), CAST(51.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (3, 3, 1, 87, CAST(95.0 AS Decimal(18, 1)), CAST(2.0 AS Decimal(18, 1)), CAST(47.2 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (4, 4, 1, 80, CAST(76.0 AS Decimal(18, 1)), CAST(65.0 AS Decimal(18, 1)), CAST(71.2 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (5, 5, 1, 97, CAST(85.0 AS Decimal(18, 1)), CAST(61.0 AS Decimal(18, 1)), CAST(75.0 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (6, 6, 1, 55, CAST(8.0 AS Decimal(18, 1)), CAST(54.0 AS Decimal(18, 1)), CAST(38.8 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (7, 7, 1, 58, CAST(11.0 AS Decimal(18, 1)), CAST(65.0 AS Decimal(18, 1)), CAST(45.8 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (8, 8, 1, 7, CAST(70.0 AS Decimal(18, 1)), CAST(72.0 AS Decimal(18, 1)), CAST(60.5 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (9, 9, 1, 91, CAST(31.0 AS Decimal(18, 1)), CAST(83.0 AS Decimal(18, 1)), CAST(67.0 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (10, 10, 1, 34, CAST(52.0 AS Decimal(18, 1)), CAST(26.0 AS Decimal(18, 1)), CAST(36.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (11, 11, 1, 72, CAST(90.0 AS Decimal(18, 1)), CAST(45.0 AS Decimal(18, 1)), CAST(64.5 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (12, 12, 1, 39, CAST(95.0 AS Decimal(18, 1)), CAST(33.0 AS Decimal(18, 1)), CAST(54.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (13, 13, 1, 49, CAST(11.0 AS Decimal(18, 1)), CAST(16.0 AS Decimal(18, 1)), CAST(19.8 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (14, 14, 1, 85, CAST(76.0 AS Decimal(18, 1)), CAST(37.0 AS Decimal(18, 1)), CAST(58.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (15, 15, 1, 50, CAST(19.0 AS Decimal(18, 1)), CAST(31.0 AS Decimal(18, 1)), CAST(30.2 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (16, 16, 1, 19, CAST(12.0 AS Decimal(18, 1)), CAST(5.0 AS Decimal(18, 1)), CAST(9.7 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (17, 17, 1, 48, CAST(93.0 AS Decimal(18, 1)), CAST(73.0 AS Decimal(18, 1)), CAST(75.5 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (18, 18, 1, 98, CAST(42.0 AS Decimal(18, 1)), CAST(28.0 AS Decimal(18, 1)), CAST(44.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (19, 19, 1, 72, CAST(94.0 AS Decimal(18, 1)), CAST(71.0 AS Decimal(18, 1)), CAST(78.8 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (20, 20, 1, 81, CAST(29.0 AS Decimal(18, 1)), CAST(31.0 AS Decimal(18, 1)), CAST(38.7 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (21, 21, 1, 11, CAST(38.0 AS Decimal(18, 1)), CAST(31.0 AS Decimal(18, 1)), CAST(30.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (22, 22, 1, 25, CAST(36.0 AS Decimal(18, 1)), CAST(79.0 AS Decimal(18, 1)), CAST(55.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (23, 23, 1, 13, CAST(26.0 AS Decimal(18, 1)), CAST(95.0 AS Decimal(18, 1)), CAST(58.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (24, 24, 1, 2, CAST(5.0 AS Decimal(18, 1)), CAST(62.0 AS Decimal(18, 1)), CAST(33.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (25, 25, 1, 69, CAST(8.0 AS Decimal(18, 1)), CAST(4.0 AS Decimal(18, 1)), CAST(16.2 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (26, 26, 1, 43, CAST(98.0 AS Decimal(18, 1)), CAST(71.0 AS Decimal(18, 1)), CAST(75.3 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (27, 27, 1, 78, CAST(82.0 AS Decimal(18, 1)), CAST(0.0 AS Decimal(18, 1)), CAST(40.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (28, 28, 1, 23, CAST(52.0 AS Decimal(18, 1)), CAST(59.0 AS Decimal(18, 1)), CAST(50.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (29, 29, 1, 65, CAST(19.0 AS Decimal(18, 1)), CAST(78.0 AS Decimal(18, 1)), CAST(56.2 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (30, 30, 1, 16, CAST(34.0 AS Decimal(18, 1)), CAST(34.0 AS Decimal(18, 1)), CAST(31.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (31, 1, 2, 55, CAST(17.0 AS Decimal(18, 1)), CAST(85.0 AS Decimal(18, 1)), CAST(47.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (32, 2, 2, 8, CAST(40.0 AS Decimal(18, 1)), CAST(47.0 AS Decimal(18, 1)), CAST(25.2 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (33, 3, 2, 36, CAST(24.0 AS Decimal(18, 1)), CAST(95.0 AS Decimal(18, 1)), CAST(41.8 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (34, 4, 2, 35, CAST(41.0 AS Decimal(18, 1)), CAST(81.0 AS Decimal(18, 1)), CAST(44.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (35, 5, 2, 86, CAST(25.0 AS Decimal(18, 1)), CAST(30.0 AS Decimal(18, 1)), CAST(56.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (36, 6, 2, 56, CAST(71.0 AS Decimal(18, 1)), CAST(77.0 AS Decimal(18, 1)), CAST(64.5 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (37, 7, 2, 87, CAST(80.0 AS Decimal(18, 1)), CAST(35.0 AS Decimal(18, 1)), CAST(76.0 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (38, 8, 2, 39, CAST(97.0 AS Decimal(18, 1)), CAST(16.0 AS Decimal(18, 1)), CAST(54.5 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (39, 9, 2, 61, CAST(60.0 AS Decimal(18, 1)), CAST(37.0 AS Decimal(18, 1)), CAST(56.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (40, 10, 2, 67, CAST(55.0 AS Decimal(18, 1)), CAST(23.0 AS Decimal(18, 1)), CAST(55.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (41, 11, 2, 50, CAST(43.0 AS Decimal(18, 1)), CAST(85.0 AS Decimal(18, 1)), CAST(53.5 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (42, 12, 2, 25, CAST(60.0 AS Decimal(18, 1)), CAST(70.0 AS Decimal(18, 1)), CAST(44.2 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (43, 13, 2, 40, CAST(23.0 AS Decimal(18, 1)), CAST(70.0 AS Decimal(18, 1)), CAST(39.3 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (44, 14, 2, 82, CAST(17.0 AS Decimal(18, 1)), CAST(27.0 AS Decimal(18, 1)), CAST(51.2 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (45, 15, 2, 71, CAST(21.0 AS Decimal(18, 1)), CAST(94.0 AS Decimal(18, 1)), CAST(58.2 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (46, 16, 2, 75, CAST(52.0 AS Decimal(18, 1)), CAST(94.0 AS Decimal(18, 1)), CAST(70.5 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (47, 17, 2, 21, CAST(29.0 AS Decimal(18, 1)), CAST(36.0 AS Decimal(18, 1)), CAST(26.2 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (48, 18, 2, 72, CAST(79.0 AS Decimal(18, 1)), CAST(66.0 AS Decimal(18, 1)), CAST(73.3 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (49, 19, 2, 68, CAST(80.0 AS Decimal(18, 1)), CAST(72.0 AS Decimal(18, 1)), CAST(72.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (50, 20, 2, 65, CAST(76.0 AS Decimal(18, 1)), CAST(59.0 AS Decimal(18, 1)), CAST(67.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (51, 21, 2, 69, CAST(25.0 AS Decimal(18, 1)), CAST(76.0 AS Decimal(18, 1)), CAST(55.5 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (52, 22, 2, 47, CAST(8.0 AS Decimal(18, 1)), CAST(44.0 AS Decimal(18, 1)), CAST(33.5 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (53, 23, 2, 8, CAST(84.0 AS Decimal(18, 1)), CAST(73.0 AS Decimal(18, 1)), CAST(44.2 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (54, 24, 2, 32, CAST(19.0 AS Decimal(18, 1)), CAST(29.0 AS Decimal(18, 1)), CAST(27.2 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (55, 25, 2, 92, CAST(98.0 AS Decimal(18, 1)), CAST(37.0 AS Decimal(18, 1)), CAST(84.8 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (56, 26, 2, 62, CAST(22.0 AS Decimal(18, 1)), CAST(47.0 AS Decimal(18, 1)), CAST(46.2 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (57, 27, 2, 3, CAST(11.0 AS Decimal(18, 1)), CAST(24.0 AS Decimal(18, 1)), CAST(9.2 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (58, 28, 2, 84, CAST(44.0 AS Decimal(18, 1)), CAST(36.0 AS Decimal(18, 1)), CAST(62.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (59, 29, 2, 41, CAST(63.0 AS Decimal(18, 1)), CAST(71.0 AS Decimal(18, 1)), CAST(53.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (60, 30, 2, 91, CAST(20.0 AS Decimal(18, 1)), CAST(39.0 AS Decimal(18, 1)), CAST(58.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (61, 1, 3, 38, CAST(93.0 AS Decimal(18, 1)), CAST(28.0 AS Decimal(18, 1)), CAST(49.4 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (62, 2, 3, 95, CAST(93.0 AS Decimal(18, 1)), CAST(82.0 AS Decimal(18, 1)), CAST(88.9 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (63, 3, 3, 11, CAST(94.0 AS Decimal(18, 1)), CAST(79.0 AS Decimal(18, 1)), CAST(63.9 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (64, 4, 3, 67, CAST(62.0 AS Decimal(18, 1)), CAST(23.0 AS Decimal(18, 1)), CAST(46.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (65, 5, 3, 95, CAST(75.0 AS Decimal(18, 1)), CAST(5.0 AS Decimal(18, 1)), CAST(50.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (66, 6, 3, 1, CAST(2.0 AS Decimal(18, 1)), CAST(97.0 AS Decimal(18, 1)), CAST(42.4 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (67, 7, 3, 39, CAST(78.0 AS Decimal(18, 1)), CAST(91.0 AS Decimal(18, 1)), CAST(72.4 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (68, 8, 3, 59, CAST(62.0 AS Decimal(18, 1)), CAST(18.0 AS Decimal(18, 1)), CAST(42.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (69, 9, 3, 28, CAST(53.0 AS Decimal(18, 1)), CAST(59.0 AS Decimal(18, 1)), CAST(48.4 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (70, 10, 3, 94, CAST(7.0 AS Decimal(18, 1)), CAST(68.0 AS Decimal(18, 1)), CAST(58.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (71, 11, 3, 54, CAST(81.0 AS Decimal(18, 1)), CAST(5.0 AS Decimal(18, 1)), CAST(40.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (72, 12, 3, 97, CAST(81.0 AS Decimal(18, 1)), CAST(21.0 AS Decimal(18, 1)), CAST(59.9 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (73, 13, 3, 11, CAST(3.0 AS Decimal(18, 1)), CAST(26.0 AS Decimal(18, 1)), CAST(15.1 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (74, 14, 3, 31, CAST(58.0 AS Decimal(18, 1)), CAST(58.0 AS Decimal(18, 1)), CAST(50.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (75, 15, 3, 76, CAST(86.0 AS Decimal(18, 1)), CAST(7.0 AS Decimal(18, 1)), CAST(49.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (76, 16, 3, 16, CAST(87.0 AS Decimal(18, 1)), CAST(23.0 AS Decimal(18, 1)), CAST(39.3 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (77, 17, 3, 12, CAST(83.0 AS Decimal(18, 1)), CAST(20.0 AS Decimal(18, 1)), CAST(35.7 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (78, 18, 3, 13, CAST(95.0 AS Decimal(18, 1)), CAST(47.0 AS Decimal(18, 1)), CAST(51.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (79, 19, 3, 31, CAST(7.0 AS Decimal(18, 1)), CAST(40.0 AS Decimal(18, 1)), CAST(28.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (80, 20, 3, 6, CAST(64.0 AS Decimal(18, 1)), CAST(61.0 AS Decimal(18, 1)), CAST(46.1 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (81, 21, 3, 32, CAST(86.0 AS Decimal(18, 1)), CAST(98.0 AS Decimal(18, 1)), CAST(75.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (82, 22, 3, 69, CAST(81.0 AS Decimal(18, 1)), CAST(17.0 AS Decimal(18, 1)), CAST(50.1 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (83, 23, 3, 68, CAST(7.0 AS Decimal(18, 1)), CAST(89.0 AS Decimal(18, 1)), CAST(59.6 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (84, 24, 3, 83, CAST(91.0 AS Decimal(18, 1)), CAST(75.0 AS Decimal(18, 1)), CAST(81.9 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (85, 25, 3, 45, CAST(18.0 AS Decimal(18, 1)), CAST(73.0 AS Decimal(18, 1)), CAST(49.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (86, 26, 3, 41, CAST(66.0 AS Decimal(18, 1)), CAST(7.0 AS Decimal(18, 1)), CAST(33.6 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (87, 27, 3, 84, CAST(34.0 AS Decimal(18, 1)), CAST(71.0 AS Decimal(18, 1)), CAST(64.1 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (88, 28, 3, 30, CAST(98.0 AS Decimal(18, 1)), CAST(62.0 AS Decimal(18, 1)), CAST(63.1 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (89, 29, 3, 51, CAST(76.0 AS Decimal(18, 1)), CAST(39.0 AS Decimal(18, 1)), CAST(53.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (90, 30, 3, 63, CAST(58.0 AS Decimal(18, 1)), CAST(92.0 AS Decimal(18, 1)), CAST(74.0 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (91, 1, 4, 59, CAST(3.0 AS Decimal(18, 1)), CAST(68.0 AS Decimal(18, 1)), CAST(43.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (92, 2, 4, 39, CAST(91.0 AS Decimal(18, 1)), CAST(38.0 AS Decimal(18, 1)), CAST(56.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (93, 3, 4, 85, CAST(2.0 AS Decimal(18, 1)), CAST(3.0 AS Decimal(18, 1)), CAST(30.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (94, 4, 4, 35, CAST(53.0 AS Decimal(18, 1)), CAST(82.0 AS Decimal(18, 1)), CAST(56.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (95, 5, 4, 41, CAST(30.0 AS Decimal(18, 1)), CAST(67.0 AS Decimal(18, 1)), CAST(46.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (96, 6, 4, 17, CAST(79.0 AS Decimal(18, 1)), CAST(53.0 AS Decimal(18, 1)), CAST(49.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (97, 7, 4, 99, CAST(56.0 AS Decimal(18, 1)), CAST(6.0 AS Decimal(18, 1)), CAST(53.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (98, 8, 4, 77, CAST(43.0 AS Decimal(18, 1)), CAST(80.0 AS Decimal(18, 1)), CAST(66.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (99, 9, 4, 18, CAST(56.0 AS Decimal(18, 1)), CAST(11.0 AS Decimal(18, 1)), CAST(28.3 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (100, 10, 4, 82, CAST(50.0 AS Decimal(18, 1)), CAST(8.0 AS Decimal(18, 1)), CAST(46.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (101, 11, 4, 83, CAST(1.0 AS Decimal(18, 1)), CAST(4.0 AS Decimal(18, 1)), CAST(29.3 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (102, 12, 4, 43, CAST(17.0 AS Decimal(18, 1)), CAST(76.0 AS Decimal(18, 1)), CAST(45.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (103, 13, 4, 20, CAST(92.0 AS Decimal(18, 1)), CAST(25.0 AS Decimal(18, 1)), CAST(45.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (104, 14, 4, 89, CAST(89.0 AS Decimal(18, 1)), CAST(88.0 AS Decimal(18, 1)), CAST(88.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (105, 15, 4, 48, CAST(78.0 AS Decimal(18, 1)), CAST(80.0 AS Decimal(18, 1)), CAST(68.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (106, 16, 4, 67, CAST(48.0 AS Decimal(18, 1)), CAST(86.0 AS Decimal(18, 1)), CAST(67.0 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (107, 17, 4, 62, CAST(60.0 AS Decimal(18, 1)), CAST(68.0 AS Decimal(18, 1)), CAST(63.3 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (108, 18, 4, 83, CAST(41.0 AS Decimal(18, 1)), CAST(27.0 AS Decimal(18, 1)), CAST(50.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (109, 19, 4, 36, CAST(90.0 AS Decimal(18, 1)), CAST(42.0 AS Decimal(18, 1)), CAST(56.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (110, 20, 4, 83, CAST(41.0 AS Decimal(18, 1)), CAST(76.0 AS Decimal(18, 1)), CAST(66.7 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (111, 21, 4, 21, CAST(79.0 AS Decimal(18, 1)), CAST(51.0 AS Decimal(18, 1)), CAST(50.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (112, 22, 4, 59, CAST(81.0 AS Decimal(18, 1)), CAST(56.0 AS Decimal(18, 1)), CAST(65.3 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (113, 23, 4, 25, CAST(9.0 AS Decimal(18, 1)), CAST(86.0 AS Decimal(18, 1)), CAST(40.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (114, 24, 4, 63, CAST(4.0 AS Decimal(18, 1)), CAST(23.0 AS Decimal(18, 1)), CAST(30.0 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (115, 25, 4, 51, CAST(17.0 AS Decimal(18, 1)), CAST(47.0 AS Decimal(18, 1)), CAST(38.3 AS Decimal(18, 1)), N'REPROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (116, 26, 4, 82, CAST(33.0 AS Decimal(18, 1)), CAST(19.0 AS Decimal(18, 1)), CAST(44.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (117, 27, 4, 63, CAST(17.0 AS Decimal(18, 1)), CAST(75.0 AS Decimal(18, 1)), CAST(51.7 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (118, 28, 4, 75, CAST(72.0 AS Decimal(18, 1)), CAST(39.0 AS Decimal(18, 1)), CAST(62.0 AS Decimal(18, 1)), N'APROVADO', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (119, 29, 4, 82, CAST(28.0 AS Decimal(18, 1)), CAST(35.0 AS Decimal(18, 1)), CAST(48.3 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
INSERT [dbo].[tb_resultado_periodo] ([idResultadoPeriodo], [idAluno], [idMateria], [notaAV1], [notaAV2], [notaAV3], [notaFinal], [resultado], [dtInsert]) VALUES (120, 30, 4, 82, CAST(43.0 AS Decimal(18, 1)), CAST(37.0 AS Decimal(18, 1)), CAST(54.0 AS Decimal(18, 1)), N'PARA PROVA FINAL', CAST(N'2020-05-02 13:47:21.207' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tb_resultado_periodo] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_aluno] ON 

GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (1, N'ALUNO 1', 1, CAST(N'2020-05-02 13:47:10.270' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (2, N'ALUNO 2', 1, CAST(N'2020-05-02 13:47:10.270' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (3, N'ALUNO 3', 1, CAST(N'2020-05-02 13:47:10.270' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (4, N'ALUNO 4', 1, CAST(N'2020-05-02 13:47:10.270' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (5, N'ALUNO 5', 1, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (6, N'ALUNO 6', 1, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (7, N'ALUNO 7', 1, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (8, N'ALUNO 8', 1, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (9, N'ALUNO 9', 1, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (10, N'ALUNO 10', 1, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (11, N'ALUNO 1', 2, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (12, N'ALUNO 2', 2, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (13, N'ALUNO 3', 2, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (14, N'ALUNO 4', 2, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (15, N'ALUNO 5', 2, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (16, N'ALUNO 6', 2, CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (17, N'ALUNO 7', 2, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (18, N'ALUNO 8', 2, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (19, N'ALUNO 9', 2, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (20, N'ALUNO 10', 2, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (21, N'ALUNO 1', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (22, N'ALUNO 2', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (23, N'ALUNO 3', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (24, N'ALUNO 4', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (25, N'ALUNO 5', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (26, N'ALUNO 6', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (27, N'ALUNO 7', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (28, N'ALUNO 8', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (29, N'ALUNO 9', 3, CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
INSERT [dbo].[tbl_aluno] ([idAluno], [nmAluno], [idTurma], [dtInsert]) VALUES (30, N'ALUNO 10', 3, CAST(N'2020-05-02 13:47:10.280' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_aluno] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_materia] ON 

GO
INSERT [dbo].[tbl_materia] ([idMateria], [dcMateria], [pesoAV1], [pesoAV2], [pesoAV3]) VALUES (1, N'Matemática', 1, 2, 3)
GO
INSERT [dbo].[tbl_materia] ([idMateria], [dcMateria], [pesoAV1], [pesoAV2], [pesoAV3]) VALUES (2, N'Português', 3, 2, 1)
GO
INSERT [dbo].[tbl_materia] ([idMateria], [dcMateria], [pesoAV1], [pesoAV2], [pesoAV3]) VALUES (3, N'História', 2, 2, 3)
GO
INSERT [dbo].[tbl_materia] ([idMateria], [dcMateria], [pesoAV1], [pesoAV2], [pesoAV3]) VALUES (4, N'Geografia', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_materia] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_turma] ON 

GO
INSERT [dbo].[tbl_turma] ([idTurma], [dcTurma], [dtInsert]) VALUES (1, N'TURMA 1', CAST(N'2020-05-02 13:47:10.270' AS DateTime))
GO
INSERT [dbo].[tbl_turma] ([idTurma], [dcTurma], [dtInsert]) VALUES (2, N'TURMA 2', CAST(N'2020-05-02 13:47:10.273' AS DateTime))
GO
INSERT [dbo].[tbl_turma] ([idTurma], [dcTurma], [dtInsert]) VALUES (3, N'TURMA 3', CAST(N'2020-05-02 13:47:10.277' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_turma] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Cadastra_Materiais]    Script Date: 02/05/2020 14:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_Cadastra_Materiais]
	@idMateria int,
	@dcMateria varchar(100),
	@pesoAV1 int,
	@pesoAV2 int,
	@pesoAV3 int
AS
BEGIN

	BEGIN TRY
		IF @idMateria > 0
		BEGIN
			UPDATE tbl_materia 
			set dcMateria = @dcMateria,
			@pesoAV1 = @pesoAV1,
			@pesoAV2 = @pesoAV2,
			@pesoAV3 = @pesoAV3
			where idMateria = @idMateria

		END
		ELSE
		BEGIN
			insert into tbl_materia
			(dcMateria,		pesoAV1,	pesoAV2,	pesoAV3)
			values
			(@dcMateria,	@pesoAV1,	@pesoAV2,	@pesoAV3)
		END

		SELECT 100 AS RETORNO, '' as RETORNO_MESSAGE
	END TRY
	BEGIN CATCH
		SELECT 99 AS RETORNO, ERROR_MESSAGE() AS RETORNO_MESSAGE
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[sp_Robotic_Cadastra_Turmas]    Script Date: 02/05/2020 14:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Robotic_Cadastra_Turmas]
	@qtdTurmas int,
	@qtdAlunosPorTurmas int
AS
BEGIN

	BEGIN TRY

		TRUNCATE TABLE [dbo].[tbl_aluno]
		TRUNCATE TABLE [dbo].[tbl_turma]

		SET NOCOUNT ON; 

		DECLARE @COUNTTURMAS AS INT = 1
		DECLARE @COUNTALUNOS AS INT = 1

		WHILE @COUNTTURMAS <=  @qtdTurmas
		BEGIN

			INSERT INTO TBL_TURMA 
			(DCTURMA, DTINSERT)
			VALUES
			('TURMA ' + CONVERT(VARCHAR(20),@COUNTTURMAS), GETDATE())

			WHILE @COUNTALUNOS <=  @qtdAlunosPorTurmas
			BEGIN

				INSERT INTO TBL_ALUNO
				(NMALUNO,	IDTURMA,	DTINSERT)
				VALUES
				('ALUNO ' + CONVERT(VARCHAR(20), @COUNTALUNOS), IDENT_CURRENT('TBL_TURMA'), GETDATE())


				SET @COUNTALUNOS = @COUNTALUNOS + 1
			END

			SET @COUNTALUNOS = 1
			SET @COUNTTURMAS = @COUNTTURMAS + 1
		END

		SELECT 100 AS RETORNO, '' as RETORNO_MESSAGE
	END TRY
	BEGIN CATCH
		SELECT 99 AS RETORNO, ERROR_MESSAGE() AS RETORNO_MESSAGE
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[sp_Simula_Periodo]    Script Date: 02/05/2020 14:05:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Simula_Periodo]
AS
BEGIN

	BEGIN TRY

		BEGIN TRANSACTION

		--DROP TABLE #TEMP1
		--DROP TABLE #TEMP2
		truncate table tb_resultado_periodo

		SELECT AL.NMALUNO, AL.IDALUNO, MAT.IDMATERIA, 
		ROUND(((100 - 0 -1) * Rand(checksum(newid()))+ 0), 0) AS NOTAAV1, 
		ROUND(((100 - 0 -1) * Rand(checksum(newid()))+ 0), 0) AS NOTAAV2, 
		ROUND(((100 - 0 -1) * Rand(checksum(newid()))+ 0), 0) AS NOTAAV3
		INTO #TEMP1
		FROM TBL_ALUNO AL, TBL_MATERIA MAT


		SELECT A.IDALUNO, A.IDMATERIA, NOTAAV1, NOTAAV2, NOTAAV3,
		(NOTAAV1 * MAT.pesoAV1 + NOTAAV2 * MAT.pesoAV2 + NOTAAV3 * MAT.pesoAV3) /
		(MAT.pesoAV1 + MAT.pesoAV2 + MAT.pesoAV3) as notaFinal
		INTO #TEMP2 
		FROM #TEMP1 A
		INNER JOIN TBL_ALUNO AL ON A.IDALUNO = AL.IDALUNO
		INNER JOIN TBL_MATERIA MAT ON A.idMateria = MAT.idMateria 

		INSERT INTO [dbo].[tb_resultado_periodo]
		(IDALUNO, IDMATERIA, NOTAAV1, NOTAAV2, NOTAAV3, NOTAFINAL, RESULTADO, DTINSERT)
		SELECT IDALUNO, IDMATERIA, NOTAAV1, NOTAAV2, NOTAAV3, notaFinal,
		case when notaFinal >= 60 then 'APROVADO' ELSE 
		CASE WHEN notaFinal <= 40 THEN 'REPROVADO' ELSE 'PARA PROVA FINAL' END END AS resultado,
		GETDATE()
		FROM #TEMP2

		COMMIT

		SELECT 100 AS RETORNO, '' as RETORNO_MESSAGE
	END TRY
	BEGIN CATCH
		ROLLBACK

		SELECT 99 AS RETORNO, ERROR_MESSAGE() AS RETORNO_MESSAGE
	END CATCH
END


GO
USE [master]
GO
ALTER DATABASE [UNIVERSIDADE_ASC] SET  READ_WRITE 
GO
