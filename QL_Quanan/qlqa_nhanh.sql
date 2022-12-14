USE [master]
GO
/****** Object:  Database [Demo_QuanLyFastFood]    Script Date: 12/7/2022 4:23:32 PM ******/
CREATE DATABASE [Demo_QuanLyFastFood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demo_QuanLyFastFood_DATA', FILENAME = N'D:\Database\Demo_QuanLyFastFood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demo_QuanLyFastFood_LOG', FILENAME = N'D:\Database\Demo_QuanLyFastFood.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demo_QuanLyFastFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET RECOVERY FULL 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET  MULTI_USER 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demo_QuanLyFastFood', N'ON'
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET QUERY_STORE = OFF
GO
USE [Demo_QuanLyFastFood]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonDatHang] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonDatHang] ASC,
	[MaDonDatHang] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC,
	[MaHoaDon] ASC,
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[Ngay] [datetime] NOT NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [datetime] NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[MaKhachHang] [int] NULL,
	[OrderType] [varchar](20) NOT NULL,
	[GiamGia] [float] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](31) NULL,
	[SoDienThoai] [varchar](11) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](250) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[MaMon] [int] NOT NULL,
	[TuNgay] [datetime] NULL,
	[DenNgay] [datetime] NULL,
	[NoiDung] [nvarchar](250) NULL,
	[DieuKien] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mon]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](16) NULL,
	[GiaTien] [float] NULL,
 CONSTRAINT [PK_Mon] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](31) NULL,
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](500) NOT NULL,
	[Lv] [int] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThongKe]    Script Date: 12/7/2022 4:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThongKe](
	[MaPhieuThongKe] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[Ngay] [datetime] NOT NULL,
	[NoiDung] [nvarchar](50) NULL,
	[TuNgay] [datetime] NULL,
	[DenNgay] [datetime] NULL,
	[DoanhThu] [float] NOT NULL,
 CONSTRAINT [PK_PhieuThongKe] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThongKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mon] ON 

INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (1, N'Bánh khoai Tây', 12000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (2, N'Bánh tráng cuộn', 20000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (3, N'Bánh tráng nướng', 15000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (4, N'Bánh tráng trộn', 10000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (5, N'Bánh trứng', 12000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (6, N'Cá viên', 10000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (7, N'Đùi gà chiên', 20000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (8, N'Khoai tây chiên', 5000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (9, N'Mực chiên giòn', 15000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (10, N'Nem chua rán', 20000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (11, N'Phô mai que', 10000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (12, N'Thanh cua', 15000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (13, N'Tôm viên', 10000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (14, N'Xúc xích', 10000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (15, N'Xúc xích phô mai', 20000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (16, N'Coca cola', 10000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (17, N'Kem', 10000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (18, N'Pepsi', 12000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (19, N'Sprite', 12000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (20, N'Sting', 12000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (21, N'Trà đá', 2000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (22, N'Trà đào', 20000)
INSERT [dbo].[Mon] ([MaMon], [Ten], [GiaTien]) VALUES (23, N'Trà tắc', 5000)
SET IDENTITY_INSERT [dbo].[Mon] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [Ten], [TenDangNhap], [MatKhau], [Lv]) VALUES (1, N'Nguyễn Vũ Phước', N'Phuowcs', N'123', 0)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDonDatHang])
REFERENCES [dbo].[DonDatHang] ([MaDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_Mon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[Mon] ([MaMon])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_Mon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Mon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[Mon] ([MaMon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Mon]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_Mon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[Mon] ([MaMon])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_Mon]
GO
ALTER TABLE [dbo].[PhieuThongKe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThongKe_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuThongKe] CHECK CONSTRAINT [FK_PhieuThongKe_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [CK_SoDienThoai] CHECK  (([SoDienThoai] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [CK_SoDienThoai]
GO
USE [master]
GO
ALTER DATABASE [Demo_QuanLyFastFood] SET  READ_WRITE 
GO
