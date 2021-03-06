USE [master]
GO
/****** Object:  Database [OtelOtomasyonuDB]    Script Date: 1.11.2018 18:34:52 ******/
CREATE DATABASE [OtelOtomasyonuDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OtelOtomasyonuDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\OtelOtomasyonuDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OtelOtomasyonuDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\OtelOtomasyonuDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OtelOtomasyonuDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OtelOtomasyonuDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OtelOtomasyonuDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET  MULTI_USER 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OtelOtomasyonuDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OtelOtomasyonuDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'OtelOtomasyonuDB', N'ON'
GO
ALTER DATABASE [OtelOtomasyonuDB] SET QUERY_STORE = OFF
GO
USE [OtelOtomasyonuDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [OtelOtomasyonuDB]
GO
/****** Object:  Table [dbo].[BirimTipleri]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirimTipleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_BirimTipleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kasa]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kasa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Kasa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KasaHareket]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KasaHareket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KasaID] [int] NOT NULL,
	[KasaHareketTipID] [int] NOT NULL,
	[Tutar] [money] NOT NULL,
	[Tarih] [datetime] NOT NULL,
 CONSTRAINT [PK_KasaHareketTablosu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KasaHareketTip]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KasaHareketTip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_KasaHareketTip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NULL,
	[SirketAdi] [nvarchar](250) NULL,
	[TC] [char](11) NULL,
	[TelNo] [char](14) NULL,
	[DogumTarihi] [datetime] NULL,
	[MedeniDurumu] [bit] NULL,
	[Cinsiyet] [bit] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oda]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
	[OdaTurID] [int] NOT NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Odalar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdaOzellikleri]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdaOzellikleri](
	[OdaID] [int] NOT NULL,
	[OzellikID] [int] NOT NULL,
	[Deger] [smallint] NOT NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_OdaOzellikleri] PRIMARY KEY CLUSTERED 
(
	[OdaID] ASC,
	[OzellikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdaTur]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdaTur](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](150) NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_OdaTurleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ozellikler]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ozellikler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Ozellikler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NOT NULL,
	[TC] [char](11) NULL,
	[TelNo] [char](14) NULL,
	[Adres] [nvarchar](500) NULL,
	[DogumTarihi] [date] NULL,
	[IseGirisTarihi] [datetime] NULL,
	[Maas] [money] NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Parola] [nvarchar](15) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatinAlma]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatinAlma](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TedarikciID] [int] NULL,
	[SatinAlmaTarihi] [date] NOT NULL,
	[PersonelID] [int] NULL,
 CONSTRAINT [PK_SatinAlma] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatinAlmaDetay]    Script Date: 1.11.2018 18:34:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatinAlmaDetay](
	[SatinAlmaID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[Miktar] [int] NULL,
	[AlisFiyati] [money] NULL,
 CONSTRAINT [PK_SatinAlmaDetay] PRIMARY KEY CLUSTERED 
(
	[SatinAlmaID] ASC,
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satis]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NULL,
	[OdaID] [int] NULL,
	[PersonelID] [int] NULL,
	[OdaFiyati] [money] NULL,
	[SatisTarihi] [datetime] NULL,
 CONSTRAINT [PK_Satis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisDetay]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisDetay](
	[SatisID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[Miktar] [float] NULL,
	[Fiyat] [money] NULL,
	[Indirim] [float] NULL,
 CONSTRAINT [PK_SatisDetay] PRIMARY KEY CLUSTERED 
(
	[SatisID] ASC,
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NOT NULL,
	[SirketAdi] [nvarchar](250) NULL,
	[TelNo] [nchar](14) NULL,
	[Adres] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Tedarikciler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Fiyat] [money] NULL,
	[Miktar] [float] NULL,
	[KategoriID] [int] NULL,
	[BirimTipID] [int] NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BirimTipleri] ON 

INSERT [dbo].[BirimTipleri] ([Id], [Adi], [Aktif]) VALUES (1, N'sadasd', 1)
INSERT [dbo].[BirimTipleri] ([Id], [Adi], [Aktif]) VALUES (2, N'safasfasf', 1)
INSERT [dbo].[BirimTipleri] ([Id], [Adi], [Aktif]) VALUES (3, N'asdsad', 1)
SET IDENTITY_INSERT [dbo].[BirimTipleri] OFF
SET IDENTITY_INSERT [dbo].[Kasa] ON 

INSERT [dbo].[Kasa] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (1, N'Ilk kasa', N'Bu kasa degerlidir', 1)
INSERT [dbo].[Kasa] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (2, N'SAFS', N'safasfasf', 1)
INSERT [dbo].[Kasa] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (3, N'Son kasa', N'asdasfasf', 0)
INSERT [dbo].[Kasa] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (4, N'asfasfsaf', N'sagsagsagasgsagag
sgaasgasG
G
SAG
SAG
SAG
SA', 0)
INSERT [dbo].[Kasa] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (5, N'asfsafsafasfsa', N'', 1)
SET IDENTITY_INSERT [dbo].[Kasa] OFF
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([Id], [Adi], [Aktif]) VALUES (1, N'YEMEK', 1)
INSERT [dbo].[Kategori] ([Id], [Adi], [Aktif]) VALUES (2, N'İÇECEK', 1)
INSERT [dbo].[Kategori] ([Id], [Adi], [Aktif]) VALUES (3, N'SAS', 1)
INSERT [dbo].[Kategori] ([Id], [Adi], [Aktif]) VALUES (4, N'asdasd', 1)
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([Id], [Adi], [Soyadi], [SirketAdi], [TC], [TelNo], [DogumTarihi], [MedeniDurumu], [Cinsiyet], [Aktif]) VALUES (2, N'asadasd', N'dasda', N'1241234', N'12412      ', N'12412         ', NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Musteri] OFF
SET IDENTITY_INSERT [dbo].[Oda] ON 

INSERT [dbo].[Oda] ([Id], [Adi], [Aciklama], [OdaTurID], [Aktif]) VALUES (1, N'401 ROOM', N'Otelimizin en konforlu ve en yüce odasıdır.
Altın kaplama lavobaları ve her an hizmetcisi bulunmaktadır.
100 m kare dir', 1, 1)
INSERT [dbo].[Oda] ([Id], [Adi], [Aciklama], [OdaTurID], [Aktif]) VALUES (2, N'404 SHOW', N'VAYS', 1, 1)
INSERT [dbo].[Oda] ([Id], [Adi], [Aciklama], [OdaTurID], [Aktif]) VALUES (3, N'SSWA', N'asdasd', 1, 1)
SET IDENTITY_INSERT [dbo].[Oda] OFF
INSERT [dbo].[OdaOzellikleri] ([OdaID], [OzellikID], [Deger], [Aktif]) VALUES (1, 2, 3, 1)
SET IDENTITY_INSERT [dbo].[OdaTur] ON 

INSERT [dbo].[OdaTur] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (1, N'KRAL DAİRESİ', N'Tam anlamıyla KRALLARA layık bebeğim', 1)
SET IDENTITY_INSERT [dbo].[OdaTur] OFF
SET IDENTITY_INSERT [dbo].[Ozellikler] ON 

INSERT [dbo].[Ozellikler] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (1, N'Sıcak su', N'35 Santigrat Derece su bulundurmasıdır..', 1)
INSERT [dbo].[Ozellikler] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (2, N'7 24 Hizmetçi', N'Krallara layık', 1)
INSERT [dbo].[Ozellikler] ([Id], [Adi], [Aciklama], [Aktif]) VALUES (3, N'Küvet', N'Süpeeer ', 1)
SET IDENTITY_INSERT [dbo].[Ozellikler] OFF
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([Id], [Adi], [Soyadi], [TC], [TelNo], [Adres], [DogumTarihi], [IseGirisTarihi], [Maas], [KullaniciAdi], [Parola], [Aktif]) VALUES (1, N'Baki', N'ÖZTÜRK', N'21321321321', N'(521) 321-3213', N'213213213213213213', CAST(N'2018-04-11' AS Date), CAST(N'2018-04-10T01:01:32.000' AS DateTime), 2.0000, N'admin', N'123', 1)
INSERT [dbo].[Personel] ([Id], [Adi], [Soyadi], [TC], [TelNo], [Adres], [DogumTarihi], [IseGirisTarihi], [Maas], [KullaniciAdi], [Parola], [Aktif]) VALUES (2, N'asfasf', N'safasfsafsaf', N'21312321312', N'(523) 112-3321', N'asfasfasfasfsa', CAST(N'2018-04-09' AS Date), CAST(N'2018-04-09T01:31:07.917' AS DateTime), 2.0000, N'asfasf', N'SA', 1)
INSERT [dbo].[Personel] ([Id], [Adi], [Soyadi], [TC], [TelNo], [Adres], [DogumTarihi], [IseGirisTarihi], [Maas], [KullaniciAdi], [Parola], [Aktif]) VALUES (3, N'sdfghjkl', N'asdfghjkl', N'12312312312', N'(521) 312-3213', N'asfasfas', CAST(N'2018-04-09' AS Date), CAST(N'2018-04-09T17:34:39.720' AS DateTime), 2.0000, N'sdfghjkl', N'asd', 1)
SET IDENTITY_INSERT [dbo].[Personel] OFF
SET IDENTITY_INSERT [dbo].[Satis] ON 

INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (5, 2, NULL, NULL, NULL, CAST(N'2018-04-09T16:21:48.357' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (8, 2, NULL, NULL, NULL, CAST(N'2018-04-09T16:34:49.057' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (13, 2, 2, 2, 23.0000, CAST(N'1999-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (14, 2, NULL, 2, 23.0000, CAST(N'1999-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (15, 2, NULL, 2, 23.0000, CAST(N'1999-05-05T15:43:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (16, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (18, 2, 2, 1, 3.0000, CAST(N'2018-04-09T18:11:22.017' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (20, 2, 1, 1, 0.0000, CAST(N'2018-04-09T18:13:16.530' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (21, 2, 1, 1, 0.0000, CAST(N'2018-04-09T18:14:26.217' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (22, 2, 1, 1, 0.0000, CAST(N'2018-04-09T19:20:24.200' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (23, 2, 1, 1, 0.0000, CAST(N'2018-04-09T19:29:14.720' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (24, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (25, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (26, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (27, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (28, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (35, 2, 2, 1, 242.0000, NULL)
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (43, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (44, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (45, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (46, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (47, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Satis] ([Id], [MusteriID], [OdaID], [PersonelID], [OdaFiyati], [SatisTarihi]) VALUES (48, 2, 1, 1, 0.0000, CAST(N'2018-04-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Satis] OFF
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (5, 1, 2, 1.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (5, 2, 3, 3.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (5, 3, 3, 3.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (28, 2, 1, 3.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (28, 3, 1, 3.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (44, 1, 1, 1.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (45, 2, 1, 1.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (46, 1, 1, 1.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (47, 1, 1, 1.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (47, 4, 1, 1.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (48, 1, 3, 3.0000, 0)
INSERT [dbo].[SatisDetay] ([SatisID], [UrunID], [Miktar], [Fiyat], [Indirim]) VALUES (48, 2, 3, 3.0000, 0)
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([Id], [Adi], [Fiyat], [Miktar], [KategoriID], [BirimTipID], [Aktif]) VALUES (1, N'Cips', 3.0000, 3, NULL, NULL, 1)
INSERT [dbo].[Urunler] ([Id], [Adi], [Fiyat], [Miktar], [KategoriID], [BirimTipID], [Aktif]) VALUES (2, N'Fındık', 22.0000, 22, NULL, NULL, 1)
INSERT [dbo].[Urunler] ([Id], [Adi], [Fiyat], [Miktar], [KategoriID], [BirimTipID], [Aktif]) VALUES (3, N'BADEM', 43.0000, 12, 1, 1, 1)
INSERT [dbo].[Urunler] ([Id], [Adi], [Fiyat], [Miktar], [KategoriID], [BirimTipID], [Aktif]) VALUES (4, N'asfasfas', 123123.0000, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
ALTER TABLE [dbo].[BirimTipleri] ADD  CONSTRAINT [DF_BirimTipleri_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Kasa] ADD  CONSTRAINT [DF_Kasa_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[KasaHareket] ADD  CONSTRAINT [DF_KasaHareketTablosu_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
ALTER TABLE [dbo].[KasaHareketTip] ADD  CONSTRAINT [DF_KasaHareketTip_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Kategori] ADD  CONSTRAINT [DF_Kategoriler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Musteri] ADD  CONSTRAINT [DF_Musteriler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Oda] ADD  CONSTRAINT [DF_Odalar_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[OdaOzellikleri] ADD  CONSTRAINT [DF_OdaOzellikleri_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[OdaTur] ADD  CONSTRAINT [DF_OdaTurleri_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Ozellikler] ADD  CONSTRAINT [DF_Ozellikler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Personel] ADD  CONSTRAINT [DF_Personeller_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Satis] ADD  CONSTRAINT [DF_Satis_SatisTarihi]  DEFAULT (getdate()) FOR [SatisTarihi]
GO
ALTER TABLE [dbo].[Tedarikci] ADD  CONSTRAINT [DF_Tedarikciler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[Urunler] ADD  CONSTRAINT [DF_Urunler_Aktif]  DEFAULT ((1)) FOR [Aktif]
GO
ALTER TABLE [dbo].[KasaHareket]  WITH CHECK ADD  CONSTRAINT [FK_KasaHareketTablosu_Kasa] FOREIGN KEY([KasaID])
REFERENCES [dbo].[Kasa] ([Id])
GO
ALTER TABLE [dbo].[KasaHareket] CHECK CONSTRAINT [FK_KasaHareketTablosu_Kasa]
GO
ALTER TABLE [dbo].[KasaHareket]  WITH CHECK ADD  CONSTRAINT [FK_KasaHareketTablosu_KasaHareketTip] FOREIGN KEY([KasaHareketTipID])
REFERENCES [dbo].[KasaHareketTip] ([Id])
GO
ALTER TABLE [dbo].[KasaHareket] CHECK CONSTRAINT [FK_KasaHareketTablosu_KasaHareketTip]
GO
ALTER TABLE [dbo].[Oda]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_OdaTurleri] FOREIGN KEY([OdaTurID])
REFERENCES [dbo].[OdaTur] ([Id])
GO
ALTER TABLE [dbo].[Oda] CHECK CONSTRAINT [FK_Odalar_OdaTurleri]
GO
ALTER TABLE [dbo].[OdaOzellikleri]  WITH CHECK ADD  CONSTRAINT [FK_OdaOzellikleri_Odalar] FOREIGN KEY([OdaID])
REFERENCES [dbo].[Oda] ([Id])
GO
ALTER TABLE [dbo].[OdaOzellikleri] CHECK CONSTRAINT [FK_OdaOzellikleri_Odalar]
GO
ALTER TABLE [dbo].[OdaOzellikleri]  WITH CHECK ADD  CONSTRAINT [FK_OdaOzellikleri_Ozellikler] FOREIGN KEY([OzellikID])
REFERENCES [dbo].[Ozellikler] ([Id])
GO
ALTER TABLE [dbo].[OdaOzellikleri] CHECK CONSTRAINT [FK_OdaOzellikleri_Ozellikler]
GO
ALTER TABLE [dbo].[SatinAlma]  WITH CHECK ADD  CONSTRAINT [FK_SatinAlma_Personeller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personel] ([Id])
GO
ALTER TABLE [dbo].[SatinAlma] CHECK CONSTRAINT [FK_SatinAlma_Personeller]
GO
ALTER TABLE [dbo].[SatinAlma]  WITH CHECK ADD  CONSTRAINT [FK_SatinAlma_Tedarikciler] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikci] ([Id])
GO
ALTER TABLE [dbo].[SatinAlma] CHECK CONSTRAINT [FK_SatinAlma_Tedarikciler]
GO
ALTER TABLE [dbo].[SatinAlmaDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatinAlmaDetay_SatinAlma] FOREIGN KEY([SatinAlmaID])
REFERENCES [dbo].[SatinAlma] ([Id])
GO
ALTER TABLE [dbo].[SatinAlmaDetay] CHECK CONSTRAINT [FK_SatinAlmaDetay_SatinAlma]
GO
ALTER TABLE [dbo].[SatinAlmaDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatinAlmaDetay_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([Id])
GO
ALTER TABLE [dbo].[SatinAlmaDetay] CHECK CONSTRAINT [FK_SatinAlmaDetay_Urunler]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Musteriler] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteri] ([Id])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Musteriler]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Odalar] FOREIGN KEY([OdaID])
REFERENCES [dbo].[Oda] ([Id])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Odalar]
GO
ALTER TABLE [dbo].[Satis]  WITH CHECK ADD  CONSTRAINT [FK_Satis_Personeller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personel] ([Id])
GO
ALTER TABLE [dbo].[Satis] CHECK CONSTRAINT [FK_Satis_Personeller]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Satis] FOREIGN KEY([SatisID])
REFERENCES [dbo].[Satis] ([Id])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Satis]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([Id])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_BirimTipleri] FOREIGN KEY([BirimTipID])
REFERENCES [dbo].[BirimTipleri] ([Id])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_BirimTipleri]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([Id])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_BirimTipleri_Delete]
@Id int,
@Adi nvarchar(50),
@Aktif bit
as
Delete BirimTipleri where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_BirimTipleri_Insert]

@Adi nvarchar(50),
@Aktif bit
as
Insert into BirimTipleri values(@Adi,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_BirimTipleri_Select]

as
Select * from BirimTipleri where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_BirimTipleri_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_BirimTipleri_Update]
@Id int,
@Adi nvarchar(50),
@Aktif bit
as
Update  BirimTipleri set Adi=@Adi where Id=@Adi
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kasa_Delete]
@Id int,
@Adi nvarchar(50),
@Aciklama nvarchar(50),
@Aktif bit
as
Delete from Kasa where Id=@Id 
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Kasa_Insert]

@Adi nvarchar(50),
@Aciklama nvarchar(50),
@Aktif bit
as
Insert into Kasa values (@Adi,@Aciklama,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kasa_Select]

as
Select * from Kasa where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Kasa_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kasa_Update]
@Id int,
@Adi nvarchar(50),
@Aciklama nvarchar(50),
@Aktif bit
as
Update Kasa set Adi=@Adi,Aciklama=@Aciklama where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_KasaHareketTip_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_KasaHareketTip_Delete]
@Id int,
@Adi nvarchar(50),
@Aktif bit
as
Delete from KasaHareketTip where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_KasaHareketTip_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_KasaHareketTip_Insert]

@Adi nvarchar(50),
@Aktif bit
as
Insert into KasaHareketTip values (@Adi,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_KasaHareketTip_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_KasaHareketTip_Select]

as
Select * from KasaHareketTip where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_KasaHareketTip_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_KasaHareketTip_Update]
@Id int,
@Adi nvarchar(50),
@Aktif bit
as
Update KasaHareketTip set Adi=@Adi where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategori_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategori_Delete]
@Id int,
@Adi nvarchar(50),
@Aktif bit
as
Delete from Kategori where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategori_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Kategori_Insert]

@Adi nvarchar(50),
@Aktif bit
as
Insert into Kategori values (@Adi,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategori_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategori_Select]

as
Select * from Kategori where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategori_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategori_Update]
@Id int,
@Adi nvarchar(50),
@Aktif bit
as
Update Kategori set Adi=@Adi where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteri_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Musteri_Delete]
@Id int ,
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@sirketAdi nvarchar(250),
@TC char(10),
@TelNo char(14),
@DogumTarihi date,
@MedeniDurumu bit,
@Cinsiyet bit,
@Aktif bit
as
Delete from Musteri where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteri_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Musteri_Insert]

@Adi nvarchar(50),
@Soyadi nvarchar(50),
@SirketAdi nvarchar(250),
@TC char(11),
@TelNo char(14),
@DogumTarihi datetime,
@MedeniDurumu bit,
@Cinsiyet bit,
@Aktif bit
as
Insert into Musteri values(@Adi,@Soyadi,@SirketAdi,@TC,@TelNo,@DogumTarihi,@MedeniDurumu,@Cinsiyet,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteri_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Musteri_Select]

as
Select * from Musteri where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Musteri_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Musteri_Update]
@Id int ,
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@sirketAdi nvarchar(250),
@TC char(10),
@TelNo char(14),
@DogumTarihi date,
@MedeniDurumu bit,
@Cinsiyet bit,
@Aktif bit
as
Update Musteri set Adi=@Adi,Soyadi=@Soyadi,SirketAdi=@sirketAdi,TC=@TC,TelNo=@TelNo,DogumTarihi=@DogumTarihi,MedeniDurumu=@MedeniDurumu,Cinsiyet=@Cinsiyet where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Oda_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Oda_Delete]

@Id int,
@Adi nvarchar(50),
@Aciklama nvarchar(500),
@OdaTurID int,
@Aktif bit
as
Delete from Oda where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Oda_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Oda_Insert]


@Adi nvarchar(50),
@Aciklama nvarchar(500),
@OdaTurID int,
@Aktif bit
as
Insert into Oda values (@Adi,@Aciklama,@OdaTurID,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Oda_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Oda_Select]


as
Select * from Oda where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Oda_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Oda_Update]

@Id int,
@Adi nvarchar(50),
@Aciklama nvarchar(500),
@OdaTurID int,
@Aktif bit
as
Update Oda set Adi=@Adi,Aciklama=@Aciklama,OdaTurID=@OdaTurID where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaOzellikleri_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_OdaOzellikleri_Delete]
@OdaID int,
@OzellikID int,
@Deger smallint
as
Delete from OdaOzellikleri where OdaID=@OdaID and OzellikID= @OzellikID
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaOzellikleri_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_OdaOzellikleri_Insert]
@OdaID int,
@OzellikID int,
@Deger smallint,
@Aktif bit
as
Insert into OdaOzellikleri values (@OdaID,@OzellikID,@Deger,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaOzellikleri_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_OdaOzellikleri_Select]
as
Select * from OdaOzellikleri where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaOzellikleri_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_OdaOzellikleri_Update]
@OdaID int,
@OzellikID int,
@Deger smallint
as
Update OdaOzellikleri set Deger=@Deger where OdaID=@OdaID and OzellikID= @OzellikID
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaTur_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_OdaTur_Delete]
@Id int,
@Adi nvarchar(150),
@Aciklama nvarchar(500),
@Aktif bit
as
Delete from OdaTur where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaTur_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_OdaTur_Insert]

@Adi nvarchar(150),
@Aciklama nvarchar(500),
@Aktif bit
as
Insert into OdaTur values (@Adi,@Aciklama,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaTur_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_OdaTur_Select]

as
Select * from OdaTur where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_OdaTur_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_OdaTur_Update]
@Id int,
@Adi nvarchar(150),
@Aciklama nvarchar(500),
@Aktif bit
as
Update OdaTur set Adi=@Adi,Aciklama=@Aciklama where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Ozellikler_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Ozellikler_Delete]
@Id int,
@Adi nvarchar(50),
@Aciklama nvarchar(500),
@Aktif bit
as
Delete Ozellikler where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Ozellikler_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Ozellikler_Insert]

@Adi nvarchar(50),
@Aciklama nvarchar(500),
@Aktif bit
as
Insert into Ozellikler values (@Adi,@Aciklama,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Ozellikler_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Ozellikler_Select]

as
Select * from Ozellikler where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Ozellikler_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Ozellikler_Update]
@Id int,
@Adi nvarchar(50),
@Aciklama nvarchar(500),
@Aktif bit
as
Update Ozellikler set Adi=@Adi,Aciklama=@Aciklama where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Personel_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Personel_Delete]
@Id int,
@Adi nvarchar(50),
@Soyadi  nvarchar(50),
@TC char(11),
@TelNo  char(11),
@Adres  nvarchar(500),
@DogumTarihi date,
@IseGirisTarihi datetime,
@Maas money,
@KullaniciAdi nvarchar(50),
@Parola nvarchar(15),
@Aktif bit
as
Delete from Personel where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Personel_Giris]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Personel_Giris]
@ka nvarchar(50),
@parola nvarchar(15)
as
Select * from Personel where KullaniciAdi=@ka and Parola=@parola
GO
/****** Object:  StoredProcedure [dbo].[prc_Personel_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Personel_Insert]

@Adi nvarchar(50),
@Soyadi  nvarchar(50),
@TC char(11),
@TelNo  char(14),
@Adres  nvarchar(500),
@DogumTarihi date,
@IseGirisTarihi datetime,
@Maas money,
@KullaniciAdi nvarchar(50),
@Parola nvarchar(15),
@Aktif bit
as
Insert into Personel values  (@Adi,@Soyadi,@TC,@TelNo,@Adres,@DogumTarihi,@IseGirisTarihi,@Maas,@KullaniciAdi,@Parola,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Personel_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Personel_Select]

as
Select * from Personel where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Personel_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Personel_Update]
@Id int,
@Adi nvarchar(50),
@Soyadi  nvarchar(50),
@TC char(11),
@TelNo  char(11),
@Adres  nvarchar(500),
@DogumTarihi date,
@IseGirisTarihi datetime,
@Maas money,
@KullaniciAdi nvarchar(50),
@Parola nvarchar(15),
@Aktif bit
as
Update Personel set Adi=@Adi,Soyadi=@Soyadi,TC=@TC,TelNo=@TelNo,Adres=@Adres,DogumTarihi=@DogumTarihi,IseGirisTarihi=@IseGirisTarihi,Maas=@Maas,KullaniciAdi=@KullaniciAdi,Parola=@Parola where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlma_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatinAlma_Delete]

@Id int,
@TedarikciID int,
@SatinAlmaTarihi date,
@PersonelID int
as
Delete SatinAlma where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlma_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_SatinAlma_Insert]


@TedarikciID int,
@SatinAlmaTarihi date,
@PersonelID int
as
Insert into SatinAlma values (@TedarikciID,@SatinAlmaTarihi,@PersonelID)
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlma_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatinAlma_Select]
as
Select * from SatinAlma
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlma_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatinAlma_Update]

@Id int,
@TedarikciID int,
@SatinAlmaTarihi date,
@PersonelID int
as
Update SatinAlma set TedarikciID=@TedarikciID,SatinAlmaTarihi=@SatinAlmaTarihi,PersonelID=@PersonelID where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlmaDetay_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatinAlmaDetay_Delete] 
@SatinAlmaID int,
@UrunID int,
@Miktar int,
@AlisFiyati money
as
Delete SatinAlmaDetay where SatinAlmaID=@SatinAlmaID and UrunID=@UrunID
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlmaDetay_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatinAlmaDetay_Insert]
@SatinAlmaID int,
@UrunID int,
@Miktar int,
@AlisFiyati money
as
Insert into SatinAlmaDetay values (@SatinAlmaID,@UrunID,@Miktar,@AlisFiyati)
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlmaDetay_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatinAlmaDetay_Select]
as
Select * from SatinAlmaDetay
GO
/****** Object:  StoredProcedure [dbo].[prc_SatinAlmaDetay_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatinAlmaDetay_Update]
@SatinAlmaID int,
@UrunID int,
@Miktar int,
@AlisFiyati money
as
Update SatinAlmaDetay set Miktar=@Miktar,AlisFiyati=@AlisFiyati where SatinAlmaID=@SatinAlmaID and UrunID=@UrunID
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Satis_Delete]
@Id int,
@MusteriID int,
@OdaID int,
@PersonelID int,
@OdaFiyati money,
@SatisTarihi datetime
as
Delete from Satis where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Satis_Insert]

@MusteriID int,
@OdaID int,
@PersonelID int,
@OdaFiyati money,
@SatisTarihi datetime
as
Insert into Satis values (@MusteriID,@OdaID,@PersonelID,@OdaFiyati,@SatisTarihi)
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_ScalerInsert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Satis_ScalerInsert]
@MusteriID int,
@OdaID int,
@PersonelID int,
@OdaFiyati money,
@SatisTarihi date
as
Insert into Satis values (@MusteriID,@OdaID,@PersonelID,@OdaFiyati,@SatisTarihi)
SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Satis_Select]
as
Select * from Satis
GO
/****** Object:  StoredProcedure [dbo].[prc_Satis_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Satis_Update]
@Id int,
@MusteriID int,
@OdaID int,
@PersonelID int,
@OdaFiyati money,
@SatisTarihi datetime
as
Update Satis set MusteriID=@MusteriID,OdaID=@OdaID,PersonelID=@PersonelID,OdaFiyati=@OdaFiyati,SatisTarihi=@SatisTarihi where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_SatisDetay_Delete]
@SatisID int,
@UrunID int,
@Miktar float,
@Fiyat money,
@Indirim float
as
Delete SatisDetay where SatisID=@SatisID and UrunID=@UrunID
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_SatisDetay_Insert]
@SatisID int,
@UrunID int,
@Miktar float,
@Fiyat money,
@Indirim float
as
Insert into SatisDetay  values (@SatisID,@UrunID,@Miktar,@Fiyat,@Indirim)
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SatisDetay_Select]
as
Select * from SatisDetay
GO
/****** Object:  StoredProcedure [dbo].[prc_SatisDetay_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_SatisDetay_Update]
@SatisID int,
@UrunID int,
@Miktar float,
@Fiyat money,
@Indirim float
as
Update SatisDetay set Miktar=@Miktar,Fiyat=@Fiyat,Indirim=@Indirim where SatisID=@SatisID and UrunID=@UrunID
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikci_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Tedarikci_Delete]
@Id int,
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@SirketAdi nvarchar(250),
@TelNo char(14),
@Adres nvarchar(500),
@Email nvarchar(50),
@Aktif bit
as
Delete Tedarikci where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikci_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Tedarikci_Insert]

@Adi nvarchar(50),
@Soyadi nvarchar(50),
@SirketAdi nvarchar(250),
@TelNo char(14),
@Adres nvarchar(500),
@Email nvarchar(50),
@Aktif bit
as
Insert into Tedarikci values (@Adi,@Soyadi,@SirketAdi,@TelNo,@Adres,@Email,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikci_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Tedarikci_Select]
as
Select * from Tedarikci where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikci_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Tedarikci_Update]
@Id int,
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@SirketAdi nvarchar(250),
@TelNo char(14),
@Adres nvarchar(500),
@Email nvarchar(50),
@Aktif bit
as
Update Tedarikci set Adi=@Adi,Soyadi=@Soyadi,SirketAdi=@SirketAdi,TelNo=@TelNo,Adres=@Adres,Email=@Email where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Urun_Delete]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Urun_Delete]
@Id int,
@Adi nvarchar(50),
@Fiyat money,
@Miktar float,
@KategoriID int,
@BirimTipID int,
@Aktif bit
as
Delete from Urunler where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[prc_Urun_Insert]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Urun_Insert]

@Adi nvarchar(50),
@Fiyat money,
@Miktar float,
@KategoriID int,
@BirimTipID int,
@Aktif bit
as
Insert into Urunler values (@Adi,@Fiyat,@Miktar,@KategoriID,@BirimTipID,@Aktif)
GO
/****** Object:  StoredProcedure [dbo].[prc_Urun_Select]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Urun_Select]

as
Select * from Urunler where Aktif=1
GO
/****** Object:  StoredProcedure [dbo].[prc_Urun_Update]    Script Date: 1.11.2018 18:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Urun_Update]
@Id int,
@Adi nvarchar(50),
@Fiyat money,
@Miktar float,
@KategoriID int,
@BirimTipID int,
@Aktif bit
as
Update  Urunler set Adi=@Adi,Fiyat=@Fiyat,Miktar=@Miktar,KategoriID=@KategoriID,BirimTipID=@BirimTipID where Id=@Id
GO
USE [master]
GO
ALTER DATABASE [OtelOtomasyonuDB] SET  READ_WRITE 
GO
