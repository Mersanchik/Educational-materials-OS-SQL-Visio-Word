USE [master]
GO
/****** Object:  Database [is1_ivanovavaTRBD]    Script Date: 24.01.2024 8:57:41 ******/
CREATE DATABASE [is1_ivanovavaTRBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'is1_ivanovavaTRBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\is1_ivanovavaTRBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'is1_ivanovavaTRBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\is1_ivanovavaTRBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [is1_ivanovavaTRBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET  MULTI_USER 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET QUERY_STORE = OFF
GO
USE [is1_ivanovavaTRBD]
GO
/****** Object:  Table [dbo].[AreaOfExpertise]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaOfExpertise](
	[idExpertise] [int] IDENTITY(1,1) NOT NULL,
	[NameExpertise] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idExpertise] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[idAuthor] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Sname] [nvarchar](max) NULL,
	[Birthday] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAuthor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[idBook] [int] IDENTITY(1,1) NOT NULL,
	[NameBook] [nvarchar](max) NULL,
	[id_Author] [int] NULL,
	[id_Ganre] [int] NULL,
	[Pages] [int] NULL,
	[PlacePublication] [nvarchar](max) NULL,
	[id_Publishing] [int] NULL,
	[Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[idClient] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Sname] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Birthday] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[idGanre] [int] IDENTITY(1,1) NOT NULL,
	[NameGenre] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGanre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Library]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Library](
	[idLibrary] [int] IDENTITY(1,1) NOT NULL,
	[id_Room] [int] NULL,
	[id_Book] [int] NULL,
	[id_Expertise] [int] NULL,
	[NumberInstances] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLibrary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublishingHouse]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishingHouse](
	[idPublishing] [int] IDENTITY(1,1) NOT NULL,
	[NamePublishing] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPublishing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReadingRoom]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReadingRoom](
	[idRoom] [int] IDENTITY(1,1) NOT NULL,
	[NameRoom] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRoom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 24.01.2024 8:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[idTicket] [int] IDENTITY(1,1) NOT NULL,
	[id_Client] [int] NULL,
	[id_Book] [int] NULL,
	[DateIssue] [nvarchar](max) NULL,
	[ReturnDate] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AreaOfExpertise] ON 

INSERT [dbo].[AreaOfExpertise] ([idExpertise], [NameExpertise]) VALUES (1, N'Живописные рассказы')
INSERT [dbo].[AreaOfExpertise] ([idExpertise], [NameExpertise]) VALUES (2, N'Программирование')
INSERT [dbo].[AreaOfExpertise] ([idExpertise], [NameExpertise]) VALUES (3, N'Отдых и развлечение')
SET IDENTITY_INSERT [dbo].[AreaOfExpertise] OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([idAuthor], [Fname], [Name], [Sname], [Birthday]) VALUES (1, N'Стеффи', N'Лия', N'Алексеевна', N'15/10/2000')
INSERT [dbo].[Authors] ([idAuthor], [Fname], [Name], [Sname], [Birthday]) VALUES (2, N'Оскар', N'Уился', N'Уайльд', N'30/11/1900')
INSERT [dbo].[Authors] ([idAuthor], [Fname], [Name], [Sname], [Birthday]) VALUES (3, N'Джон', N'Гриффит', N'Чейни', N'12/01/1876')
INSERT [dbo].[Authors] ([idAuthor], [Fname], [Name], [Sname], [Birthday]) VALUES (4, N'Млодик', N'Ирина', N'Юрьевна', N'06/11/1966')
INSERT [dbo].[Authors] ([idAuthor], [Fname], [Name], [Sname], [Birthday]) VALUES (5, N'Бронте', N'Шарлота', N'', N'21/04/1816')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([idBook], [NameBook], [id_Author], [id_Ganre], [Pages], [PlacePublication], [id_Publishing], [Year]) VALUES (1, N'Орлеан', 1, 1, 544, N'Москва', 1, 2021)
INSERT [dbo].[Books] ([idBook], [NameBook], [id_Author], [id_Ganre], [Pages], [PlacePublication], [id_Publishing], [Year]) VALUES (2, N'Портрет Дориана Грея', 2, 3, 320, N'Дублин', 1, 1890)
INSERT [dbo].[Books] ([idBook], [NameBook], [id_Author], [id_Ganre], [Pages], [PlacePublication], [id_Publishing], [Year]) VALUES (3, N'Мартин Иден', 3, 3, 544, N'Лондон', 3, 1909)
INSERT [dbo].[Books] ([idBook], [NameBook], [id_Author], [id_Ganre], [Pages], [PlacePublication], [id_Publishing], [Year]) VALUES (4, N'Девочка на шаре', 4, 4, 208, N'Екатеринбург', 4, 2017)
INSERT [dbo].[Books] ([idBook], [NameBook], [id_Author], [id_Ganre], [Pages], [PlacePublication], [id_Publishing], [Year]) VALUES (5, N'Джейн Эйр', 5, 5, 946, N'Лондон', 5, 1847)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([idClient], [Fname], [Name], [Sname], [Phone], [Address], [Birthday]) VALUES (1, N'Иванов', N'Иван', N'Иванович', N'+7(999)1111111', N'Краснопольская 15', N'03/02/2005')
INSERT [dbo].[Clients] ([idClient], [Fname], [Name], [Sname], [Phone], [Address], [Birthday]) VALUES (2, N'Петров', N'Пётр', N'Петрович', N'+7(999)2222222', N'Праздничная 7', N'12/05/2004')
INSERT [dbo].[Clients] ([idClient], [Fname], [Name], [Sname], [Phone], [Address], [Birthday]) VALUES (3, N'Соловьёв', N'Александр', N'Андреевич', N'+7(999)3333333', N'Тульская 3', N'25/07/2000')
INSERT [dbo].[Clients] ([idClient], [Fname], [Name], [Sname], [Phone], [Address], [Birthday]) VALUES (4, N'Валсов', N'Даниил', N'Сергеевич', N'+7(999)4444444', N'Октябарьская 34', N'01/09/2003')
INSERT [dbo].[Clients] ([idClient], [Fname], [Name], [Sname], [Phone], [Address], [Birthday]) VALUES (5, N'Власов', N'Данил', N'Антонович', N'+7(999)5555555', N'Роскова 17', N'13/01/2001')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([idGanre], [NameGenre]) VALUES (1, N'Молодёжная литература')
INSERT [dbo].[Genres] ([idGanre], [NameGenre]) VALUES (2, N'Современная отечественная проза')
INSERT [dbo].[Genres] ([idGanre], [NameGenre]) VALUES (3, N'Классика')
INSERT [dbo].[Genres] ([idGanre], [NameGenre]) VALUES (4, N'Психология')
INSERT [dbo].[Genres] ([idGanre], [NameGenre]) VALUES (5, N'Роман')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Library] ON 

INSERT [dbo].[Library] ([idLibrary], [id_Room], [id_Book], [id_Expertise], [NumberInstances]) VALUES (1, 1, 1, 3, 3)
INSERT [dbo].[Library] ([idLibrary], [id_Room], [id_Book], [id_Expertise], [NumberInstances]) VALUES (2, 1, 2, 1, 7)
INSERT [dbo].[Library] ([idLibrary], [id_Room], [id_Book], [id_Expertise], [NumberInstances]) VALUES (3, 1, 3, 1, 4)
INSERT [dbo].[Library] ([idLibrary], [id_Room], [id_Book], [id_Expertise], [NumberInstances]) VALUES (4, 1, 4, 1, 2)
INSERT [dbo].[Library] ([idLibrary], [id_Room], [id_Book], [id_Expertise], [NumberInstances]) VALUES (5, 1, 5, 3, 8)
SET IDENTITY_INSERT [dbo].[Library] OFF
GO
SET IDENTITY_INSERT [dbo].[PublishingHouse] ON 

INSERT [dbo].[PublishingHouse] ([idPublishing], [NamePublishing]) VALUES (1, N'АСТ')
INSERT [dbo].[PublishingHouse] ([idPublishing], [NamePublishing]) VALUES (2, N'Питер')
INSERT [dbo].[PublishingHouse] ([idPublishing], [NamePublishing]) VALUES (3, N'Речь')
INSERT [dbo].[PublishingHouse] ([idPublishing], [NamePublishing]) VALUES (4, N'Гензис')
INSERT [dbo].[PublishingHouse] ([idPublishing], [NamePublishing]) VALUES (5, N'Смит, Элдер и Ко')
SET IDENTITY_INSERT [dbo].[PublishingHouse] OFF
GO
SET IDENTITY_INSERT [dbo].[ReadingRoom] ON 

INSERT [dbo].[ReadingRoom] ([idRoom], [NameRoom]) VALUES (1, N'Зал художественной литературы')
INSERT [dbo].[ReadingRoom] ([idRoom], [NameRoom]) VALUES (2, N'Зал технической литературы')
INSERT [dbo].[ReadingRoom] ([idRoom], [NameRoom]) VALUES (3, N'Зал иностранной литературы')
SET IDENTITY_INSERT [dbo].[ReadingRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (1, 1, 1, N'22/10/2020', N'01/11/2020')
INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (2, 1, 2, N'03/05/2022', N'07/05/2022')
INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (3, 2, 2, N'15/03/2020', N'25/03/2020')
INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (4, 3, 3, N'03/07/2018', N'12/07/2018')
INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (5, 3, 1, N'02/04/2019', N'08/04/2019')
INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (6, 4, 4, N'12/05/2023', N'15/05/2023')
INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (7, 5, 5, N'26/01/2021', N'10/02/2021')
INSERT [dbo].[Tickets] ([idTicket], [id_Client], [id_Book], [DateIssue], [ReturnDate]) VALUES (8, 5, 1, N'24/08/2023', N'30/08/2023')
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([id_Author])
REFERENCES [dbo].[Authors] ([idAuthor])
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([id_Ganre])
REFERENCES [dbo].[Genres] ([idGanre])
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([id_Publishing])
REFERENCES [dbo].[PublishingHouse] ([idPublishing])
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD FOREIGN KEY([id_Book])
REFERENCES [dbo].[Books] ([idBook])
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD FOREIGN KEY([id_Expertise])
REFERENCES [dbo].[AreaOfExpertise] ([idExpertise])
GO
ALTER TABLE [dbo].[Library]  WITH CHECK ADD FOREIGN KEY([id_Room])
REFERENCES [dbo].[ReadingRoom] ([idRoom])
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD FOREIGN KEY([id_Book])
REFERENCES [dbo].[Books] ([idBook])
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD FOREIGN KEY([id_Client])
REFERENCES [dbo].[Clients] ([idClient])
GO
ALTER TABLE [dbo].[Authors]  WITH CHECK ADD CHECK  (([Birthday] like '[0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD CHECK  (([Birthday] like '[0-9][0-9]/[0-9][0-9]/[1-2][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD CHECK  (([Phone] like '+[0-9]([0-9][0-9][0-9])[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD CHECK  (([DateIssue] like '[0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD CHECK  (([ReturnDate] like '[0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]'))
GO
USE [master]
GO
ALTER DATABASE [is1_ivanovavaTRBD] SET  READ_WRITE 
GO
