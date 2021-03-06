USE [master]
GO
/****** Object:  Database [web_shop]    Script Date: 03/01/2021 11:28:01 AM ******/
CREATE DATABASE [web_shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'web_shop', FILENAME = N'D:\hoc\Công_nghệ_phần_mềm\web\database\web_shop.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'web_shop_log', FILENAME = N'D:\hoc\Công_nghệ_phần_mềm\web\database\web_shop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [web_shop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [web_shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [web_shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [web_shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [web_shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [web_shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [web_shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [web_shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [web_shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [web_shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [web_shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [web_shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [web_shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [web_shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [web_shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [web_shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [web_shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [web_shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [web_shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [web_shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [web_shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [web_shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [web_shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [web_shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [web_shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [web_shop] SET  MULTI_USER 
GO
ALTER DATABASE [web_shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [web_shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [web_shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [web_shop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [web_shop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [web_shop]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 03/01/2021 11:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 03/01/2021 11:28:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)),
	[SoLuongDaBan] [int] NULL CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)),
	[LuotView] [int] NULL CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)),
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Cổ Điển')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Chuyên Dụng')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'Oyster Perpetual Datejust 31', N'Chưa xác định', N'1.png', NULL, NULL, NULL, NULL, 332000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP02', N'Oyster Perpetual Submariner', N'Chưa xác định', N'2.png', NULL, NULL, NULL, NULL, 399479000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP02', N'Oyster Perpetual GMT-Master II', N'Chưa xác định', N'3.png', NULL, NULL, NULL, NULL, 496491506, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP01', N'Oyster Perpetual Sky-Dweller', N'Chưa xác định', N'4.png', NULL, NULL, NULL, NULL, 473393506, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'Oyster Perpetual Lady-Datejust', N'Chưa xác định', N'5.png', NULL, NULL, NULL, NULL, 298000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'Oyster Perpetual Explorer II', N'Chưa xác định', N'6.png', NULL, NULL, NULL, NULL, 286299708, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP02', N'Oyster Perpetual Milgauss', N'Chưa xác định', N'7.png', NULL, NULL, NULL, NULL, 234000000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP01', N'Oyster Perpetual Cellini', N'Chưa xác định', N'8.png', NULL, NULL, NULL, NULL, 590000000, 0, 0, N'0         ')
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
USE [master]
GO
ALTER DATABASE [web_shop] SET  READ_WRITE 
GO
