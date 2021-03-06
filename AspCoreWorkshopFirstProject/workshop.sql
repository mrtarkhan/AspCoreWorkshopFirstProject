USE [master]
GO
/****** Object:  Database [dbAspCoreWorkshopFirstProjectDb]    Script Date: 5/5/2019 12:16:39 AM ******/
CREATE DATABASE [dbAspCoreWorkshopFirstProjectDb] ON  PRIMARY 
( NAME = N'dbAspCoreWorkshopFirstProjectDb', FILENAME = N'/var/opt/mssql/data/dbAspCoreWorkshopFirstProjectDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbAspCoreWorkshopFirstProjectDb_log', FILENAME = N'/var/opt/mssql/data/dbAspCoreWorkshopFirstProjectDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbAspCoreWorkshopFirstProjectDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET RECOVERY FULL 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET  MULTI_USER 
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbAspCoreWorkshopFirstProjectDb', N'ON'
GO
USE [dbAspCoreWorkshopFirstProjectDb]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/5/2019 12:16:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Family] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [dbAspCoreWorkshopFirstProjectDb] SET  READ_WRITE 
GO
