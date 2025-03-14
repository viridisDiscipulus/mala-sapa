USE [WebShop]
GO
/****** Object:  Table [dbo].[Adrese]    Script Date: 22.12.24. 22:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adrese](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NULL,
	[Prezime] [nvarchar](50) NULL,
	[Ulica] [nvarchar](256) NULL,
	[Grad] [nvarchar](128) NULL,
	[PostanskiBroj] [nvarchar](20) NULL,
	[Drzava] [nvarchar](128) NULL,
	[KorisnikId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK__Adrese__3214EC07DEF9E315] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnici]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnici](
	[Id] [nvarchar](450) NOT NULL,
	[Alias] [nvarchar](256) NULL,
	[KorisnickoIme] [nvarchar](256) NULL,
	[Lozinka] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[AdresaID] [int] NOT NULL,
 CONSTRAINT [PK__Korisnic__3214EC0748616748] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KorisniciUloge]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KorisniciUloge](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KorisnikID] [nvarchar](450) NULL,
	[UlogaID] [int] NULL,
 CONSTRAINT [PK_KorisniciUloge] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NacinIsporuke]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NacinIsporuke](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KratkiNaziv] [nvarchar](50) NULL,
	[VrijemeDostave] [nvarchar](50) NULL,
	[Opis] [nvarchar](200) NULL,
	[Cijena] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaruceniArtikl]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaruceniArtikl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArtiklNaruceniId] [int] NULL,
	[Cijena] [decimal](10, 2) NULL,
	[Kolicina] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NarucenProizvodArtikl]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NarucenProizvodArtikl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProizvodArtiklId] [int] NULL,
	[ProizvodNaziv] [nvarchar](100) NULL,
	[SlikaUrl] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Narudzba]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Narudzba](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KupacEmail] [nvarchar](100) NULL,
	[DatumNarudzbe] [datetimeoffset](7) NULL,
	[AdresaDostaveId] [int] NULL,
	[NacinIsporukeId] [int] NULL,
	[NaruceniArtikliId] [nvarchar](100) NULL,
	[UkupnaCijena] [decimal](10, 2) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK__Narudzba__3214EC0781D3908C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Placanje]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Placanje](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VlasnikKartice] [nvarchar](255) NOT NULL,
	[BrojKartice] [nvarchar](255) NOT NULL,
	[DatumIsteka] [nvarchar](10) NOT NULL,
	[CVV] [nvarchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proizvod]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvod](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[Opis] [nvarchar](150) NULL,
	[Cijena] [decimal](18, 2) NOT NULL,
	[SlikaUrl] [nvarchar](50) NULL,
	[VrstaProizvodaID] [int] NOT NULL,
	[RobnaMarkaID] [int] NOT NULL,
 CONSTRAINT [PK_Proizvod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RobnaMarka]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RobnaMarka](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RobnaMarka] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uloge]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uloge](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__Uloge__3214EC073A753288] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VrstaProizvoda]    Script Date: 22.12.24. 22:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VrstaProizvoda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VrstaProizvoda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Narudzba] ADD  CONSTRAINT [DF__Narudzba__DatumN__1F98B2C1]  DEFAULT (sysdatetimeoffset()) FOR [DatumNarudzbe]
GO
ALTER TABLE [dbo].[Proizvod] ADD  CONSTRAINT [DF_Proizvod_Naziv]  DEFAULT ('') FOR [Naziv]
GO
ALTER TABLE [dbo].[Proizvod] ADD  CONSTRAINT [DF_Proizvod_Opis]  DEFAULT ('') FOR [Opis]
GO
ALTER TABLE [dbo].[Proizvod] ADD  CONSTRAINT [DF_Proizvod_SlikaUrl]  DEFAULT ('') FOR [SlikaUrl]
GO
ALTER TABLE [dbo].[RobnaMarka] ADD  CONSTRAINT [DF_RobnaMarka_Naziv]  DEFAULT ('') FOR [Naziv]
GO
ALTER TABLE [dbo].[VrstaProizvoda] ADD  CONSTRAINT [DF_VrstaProizvoda_Naziv]  DEFAULT ('') FOR [Naziv]
GO
