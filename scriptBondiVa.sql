USE [master]
GO
/****** Object:  Database [bondiVa_borrador]    Script Date: 08/09/2021 0:16:50 ******/
CREATE DATABASE [bondiVa_borrador]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bondiVa_borrador', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bondiVa_borrador.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bondiVa_borrador_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bondiVa_borrador_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bondiVa_borrador] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bondiVa_borrador].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bondiVa_borrador] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET ARITHABORT OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bondiVa_borrador] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bondiVa_borrador] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bondiVa_borrador] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bondiVa_borrador] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET RECOVERY FULL 
GO
ALTER DATABASE [bondiVa_borrador] SET  MULTI_USER 
GO
ALTER DATABASE [bondiVa_borrador] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bondiVa_borrador] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bondiVa_borrador] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bondiVa_borrador] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bondiVa_borrador] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bondiVa_borrador] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bondiVa_borrador', N'ON'
GO
ALTER DATABASE [bondiVa_borrador] SET QUERY_STORE = OFF
GO
USE [bondiVa_borrador]
GO
/****** Object:  Table [dbo].[publicaciones]    Script Date: 08/09/2021 0:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publicaciones](
	[id_publicacion] [int] IDENTITY(1,1) NOT NULL,
	[publicacion] [varchar](300) NULL,
	[id_usuario] [int] NULL,
 CONSTRAINT [pk_publicacion] PRIMARY KEY CLUSTERED 
(
	[id_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 08/09/2021 0:16:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[nom_usuario] [varchar](100) NULL,
	[email] [varchar](50) NULL,
	[contraseña] [varchar](20) NULL,
	[telefono] [varchar](50) NULL,
	[baja] [bit] NULL,
 CONSTRAINT [pk_id_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[publicaciones] ON 

INSERT [dbo].[publicaciones] ([id_publicacion], [publicacion], [id_usuario]) VALUES (1, N'Hola Mundo!Esta es la primera publicacion en Bondi Va!!', 1)
SET IDENTITY_INSERT [dbo].[publicaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellido], [nom_usuario], [email], [contraseña], [telefono], [baja]) VALUES (1, N'Iván', N'Romero', N'IRom', NULL, NULL, N'0351-4614957', 0)
INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellido], [nom_usuario], [email], [contraseña], [telefono], [baja]) VALUES (2, N'a', N'b', N'c', N'd', NULL, N'123', NULL)
INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellido], [nom_usuario], [email], [contraseña], [telefono], [baja]) VALUES (3, N'Silvana', N'Burgos', N'Sil', N'silburgos@gmail.com', NULL, N'1234', NULL)
INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellido], [nom_usuario], [email], [contraseña], [telefono], [baja]) VALUES (4, N'José', N'Sánchez', N'JS', N'js@hotmail.com', NULL, N'03511234', NULL)
INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellido], [nom_usuario], [email], [contraseña], [telefono], [baja]) VALUES (5, N'F', N'G', N'FG', N'aaaa', NULL, N'1234', 1)
INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellido], [nom_usuario], [email], [contraseña], [telefono], [baja]) VALUES (6, N'Emir', N'SamSam', N'emi', N'aka', NULL, N'23', 0)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
ALTER TABLE [dbo].[publicaciones]  WITH CHECK ADD  CONSTRAINT [fk_id_usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[publicaciones] CHECK CONSTRAINT [fk_id_usuario]
GO
USE [master]
GO
ALTER DATABASE [bondiVa_borrador] SET  READ_WRITE 
GO
