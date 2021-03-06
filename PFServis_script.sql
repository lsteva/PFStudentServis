USE [PFServis]
GO
/****** Object:  Table [dbo].[Nastavnik]    Script Date: 26/03/2018 21:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nastavnik](
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[JMBG] [nvarchar](13) NOT NULL,
	[DatumRodjenja] [date] NOT NULL,
 CONSTRAINT [PK_Nastavnik] PRIMARY KEY CLUSTERED 
(
	[JMBG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predmet]    Script Date: 26/03/2018 21:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predmet](
	[OznakaPredmeta] [nvarchar](50) NOT NULL,
	[NazivPredmeta] [nvarchar](50) NOT NULL,
	[BrESPBbodova] [smallint] NOT NULL,
 CONSTRAINT [PK_Predmet] PRIMARY KEY CLUSTERED 
(
	[OznakaPredmeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 26/03/2018 21:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[UserID] [int] NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[BrojIndeksa] [nvarchar](50) NOT NULL,
	[JMBG] [nvarchar](50) NOT NULL,
	[DatumRodjenja] [date] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Termin]    Script Date: 26/03/2018 21:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Termin](
	[Termin] [date] NOT NULL,
 CONSTRAINT [PK_Termin] PRIMARY KEY CLUSTERED 
(
	[Termin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Nastavnik] ([Ime], [Prezime], [JMBG], [DatumRodjenja]) VALUES (N'Jelena', N'Vidic-Trninic', N'0102974987563', CAST(N'1974-01-02' AS Date))
INSERT [dbo].[Nastavnik] ([Ime], [Prezime], [JMBG], [DatumRodjenja]) VALUES (N'Svetozar', N'Ciplic', N'0201965587899', CAST(N'1965-01-02' AS Date))
INSERT [dbo].[Nastavnik] ([Ime], [Prezime], [JMBG], [DatumRodjenja]) VALUES (N'Slobodan', N'Orlovic', N'0206972698855', CAST(N'1972-06-02' AS Date))
INSERT [dbo].[Nastavnik] ([Ime], [Prezime], [JMBG], [DatumRodjenja]) VALUES (N'Milan', N'Milutin', N'0506989123654', CAST(N'1989-05-06' AS Date))
INSERT [dbo].[Nastavnik] ([Ime], [Prezime], [JMBG], [DatumRodjenja]) VALUES (N'Natasa', N'Deretic', N'0804956987456', CAST(N'1956-04-08' AS Date))
INSERT [dbo].[Nastavnik] ([Ime], [Prezime], [JMBG], [DatumRodjenja]) VALUES (N'Gordana', N'Kovacek-Stanic', N'2509958987523', CAST(N'1958-09-25' AS Date))
INSERT [dbo].[Predmet] ([OznakaPredmeta], [NazivPredmeta], [BrESPBbodova]) VALUES (N'08.0001A', N'Rimsko pravo', 10)
INSERT [dbo].[Predmet] ([OznakaPredmeta], [NazivPredmeta], [BrESPBbodova]) VALUES (N'08.0002A', N'Ustavno pravo', 10)
INSERT [dbo].[Predmet] ([OznakaPredmeta], [NazivPredmeta], [BrESPBbodova]) VALUES (N'08.0003A', N'Nasledno pravo', 6)
INSERT [dbo].[Student] ([UserID], [Ime], [Prezime], [BrojIndeksa], [JMBG], [DatumRodjenja]) VALUES (1, N'Pera', N'Peric', N'NB123/2018', N'0203993123456', CAST(N'1993-02-03' AS Date))
INSERT [dbo].[Student] ([UserID], [Ime], [Prezime], [BrojIndeksa], [JMBG], [DatumRodjenja]) VALUES (2, N'Maja', N'Maric', N'NB124/2018', N'0102993123659', CAST(N'1993-01-02' AS Date))
INSERT [dbo].[Student] ([UserID], [Ime], [Prezime], [BrojIndeksa], [JMBG], [DatumRodjenja]) VALUES (3, N'Djura', N'Djuric', N'NB125/2018', N'0506993236589', CAST(N'1993-05-06' AS Date))
INSERT [dbo].[Termin] ([Termin]) VALUES (CAST(N'2018-04-09' AS Date))
INSERT [dbo].[Termin] ([Termin]) VALUES (CAST(N'2018-04-10' AS Date))
INSERT [dbo].[Termin] ([Termin]) VALUES (CAST(N'2018-04-11' AS Date))
INSERT [dbo].[Termin] ([Termin]) VALUES (CAST(N'2018-04-12' AS Date))
