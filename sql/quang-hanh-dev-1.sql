USE [master]
GO
/****** Object:  Database [TCLD]    Script Date: 9/17/2019 2:16:35 AM ******/
CREATE DATABASE [TCLD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TCLD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TCLD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TCLD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TCLD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TCLD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TCLD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TCLD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TCLD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TCLD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TCLD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TCLD] SET ARITHABORT OFF 
GO
ALTER DATABASE [TCLD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TCLD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TCLD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TCLD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TCLD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TCLD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TCLD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TCLD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TCLD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TCLD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TCLD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TCLD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TCLD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TCLD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TCLD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TCLD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TCLD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TCLD] SET RECOVERY FULL 
GO
ALTER DATABASE [TCLD] SET  MULTI_USER 
GO
ALTER DATABASE [TCLD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TCLD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TCLD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TCLD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TCLD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TCLD', N'ON'
GO
ALTER DATABASE [TCLD] SET QUERY_STORE = OFF
GO
USE [TCLD]
GO
/****** Object:  Table [dbo].[BangCap]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangCap](
	[MaTruong] [int] NULL,
	[MaNghanh] [int] NULL,
	[MaBangCap] [int] IDENTITY(1,1) NOT NULL,
	[MaTrinhDo] [int] NULL,
	[MaHeHoc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBangCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_BangCap]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_BangCap](
	[SoHieu] [nvarchar](100) NOT NULL,
	[MaBangCap] [int] NOT NULL,
	[NgayCap] [date] NULL,
	[NgayHetHan] [date] NULL,
	[MaNV] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_CongViec_NhanVien]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_CongViec_NhanVien](
	[HeSo] [float] NULL,
	[Bac] [float] NULL,
	[ThangLuong] [nvarchar](100) NULL,
	[MucLuong] [float] NULL,
	[MaNV] [char](50) NOT NULL,
	[TenCongViec] [nvarchar](100) NOT NULL,
	[Loai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[TenCongViec] ASC,
	[Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_NhiemVu_NhanVien]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_NhiemVu_NhanVien](
	[NgayNhanNhiemVu] [date] NOT NULL,
	[MaNV] [char](50) NOT NULL,
	[Loai] [nvarchar](100) NOT NULL,
	[TenNhiemVu] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NgayNhanNhiemVu] ASC,
	[MaNV] ASC,
	[Loai] ASC,
	[TenNhiemVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[TenCongViec] [nvarchar](100) NOT NULL,
	[Loai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenCongViec] ASC,
	[Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiayTo]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiayTo](
	[MaNV] [char](50) NULL,
	[TenGiayTo] [nvarchar](50) NOT NULL,
	[KieuGiayTo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenGiayTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeHoc]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeHoc](
	[id] [int] NOT NULL,
	[TenHeHoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_HeHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSo]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSo](
	[TrangThaiHoSo] [nvarchar](100) NULL,
	[NgayNhanHoSo] [nvarchar](100) NULL,
	[NguoiGiaoHoSo] [nvarchar](100) NULL,
	[CamKetTuyenDung] [nvarchar](100) NULL,
	[QuyetDinhTiepNhanDVC] [nvarchar](100) NULL,
	[QDChamDutHopDongDVC] [nvarchar](100) NULL,
	[NLDHocTheoChiTieuCTDT] [nvarchar](100) NULL,
	[NguoiBanGiaoBangNhapKho] [nvarchar](100) NULL,
	[NguoiGiuHoSo] [nvarchar](100) NULL,
	[MaNV] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuBoSungSYLL]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuBoSungSYLL](
	[NamBoSung] [nvarchar](100) NOT NULL,
	[DotBoSung] [nvarchar](100) NOT NULL,
	[MaNV] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NamBoSung] ASC,
	[DotBoSung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[MaNghanh] [int] NOT NULL,
	[TenNganh] [nvarchar](100) NULL,
	[CapBac] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNghanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](50) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[Tenkhac] [nvarchar](100) NULL,
	[GioiTinh] [bit] NOT NULL,
	[CapUyHienTai] [nvarchar](100) NULL,
	[CapUyKiem] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[PhuCapChucVu] [float] NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](100) NULL,
	[DanToc] [nvarchar](100) NULL,
	[QueQuan] [nvarchar](100) NULL,
	[TonGiao] [nvarchar](100) NULL,
	[NoiOHienTai] [nvarchar](100) NULL,
	[SoDienThoai] [char](20) NULL,
	[TPGiaDinhXuatThan] [nvarchar](100) NULL,
	[NgayThamGiaCachMang] [date] NULL,
	[NgayVaoDangCSVN] [date] NULL,
	[NgayChinhThuc] [date] NULL,
	[NgayVaoToChucCTXH] [date] NULL,
	[ToChuc] [nvarchar](100) NULL,
	[NgayNhapNgu] [date] NULL,
	[NgayXuatNgu] [date] NULL,
	[QuanHamChucVuCaoNhat] [nvarchar](100) NULL,
	[TrinhDoHocVan] [nvarchar](100) NULL,
	[HocHamHocViCaoNhat] [nvarchar](100) NULL,
	[LyLuanChinhTri] [nvarchar](100) NULL,
	[NgoaiNgu] [nvarchar](100) NULL,
	[CongTacChinhDangLam] [nvarchar](100) NULL,
	[NgachCongChuc] [nvarchar](100) NULL,
	[MaNgach] [float] NULL,
	[DanhHieuDuocPhong] [nvarchar](100) NULL,
	[SoTruongCongTac] [nvarchar](100) NULL,
	[CongViecDaLamLauNhat] [nvarchar](100) NULL,
	[KhenThuong] [nvarchar](100) NULL,
	[KyLuat] [nvarchar](100) NULL,
	[TinhTrangSucKhoe] [nvarchar](100) NULL,
	[ChiTietSucKhoe] [nvarchar](100) NULL,
	[ChieuCao] [float] NULL,
	[CanNang] [float] NULL,
	[NhomMau] [nvarchar](100) NULL,
	[HangThuongBinh] [nvarchar](100) NULL,
	[GiaDinhChinhSach] [nvarchar](100) NULL,
	[SoCMND] [char](20) NULL,
	[NgayCapCMND] [date] NULL,
	[NoiCapCMND] [nvarchar](100) NULL,
	[NgayDiLam] [nvarchar](100) NULL,
	[TenPhanXuong] [nvarchar](100) NULL,
	[TrangThaiLamViec] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhiemVu]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhiemVu](
	[Loai] [nvarchar](100) NOT NULL,
	[TenNhiemVu] [nvarchar](100) NOT NULL,
	[MaBangCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Loai] ASC,
	[TenNhiemVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanHeGiaDinh]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanHeGiaDinh](
	[LoaiGiaDinh] [nvarchar](100) NOT NULL,
	[MoiQuanHe] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[LyLich] [nvarchar](100) NULL,
	[MaNV] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoaiGiaDinh] ASC,
	[MoiQuanHe] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuaTrinhCongTac]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTrinhCongTac](
	[ChucDanh] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[DonViCongTac] [nvarchar](100) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NULL,
	[MaNV] [char](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DonViCongTac] ASC,
	[NgayBatDau] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDo]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDo](
	[MaTrinhDo] [int] NOT NULL,
	[TenTrinhDo] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTrinhDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Truong]    Script Date: 9/17/2019 2:16:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truong](
	[MaTruong] [int] NOT NULL,
	[TenTruong] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTruong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (1, N'Chính quy 
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (2, N'Tại chức 
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (3, N'Liên thông chính quy 
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (4, N'Liên thông tại chức 
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (5, N'18 tháng 
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (6, N'30 tháng 
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (7, N'24 tháng
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (8, N'Bằng 2
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (9, N'Anh văn A
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (10, N'Anh văn B
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (11, N'Anh văn C
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (12, N'3 tháng')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (13, N'6 tháng
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (14, N'Từ xa
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (15, N'9 tháng
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (16, N'12 tháng
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (17, N'3 năm
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (18, N'Chương trình ngắn ngày
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (19, N'Kỹ năng nghề
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (20, N'15,7 tháng
')
INSERT [dbo].[HeHoc] ([id], [TenHeHoc]) VALUES (21, N'Bằng ko có số hiệu
')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10000, N'Khoa học tự nhiên 
', N'Trung cấp ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10600, N'Địa chất 
', N'Trung cấp ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10601, N'Địa chất tổng quát 
', N'Trung cấp ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10602, N'Địa chất thuỷ văn
', N'Trung cấp ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10603, N'Địa chất công trình
', N'Trung cấp ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10604, N'Địa chất vật lý tìm kiếm thăm dò khoáng sản 
', N'Trung cấp ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10800, N'Địa chất', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10801, N'Địa chất học
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10802, N'Địa chất vật lý
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10803, N'Địa chất công trình
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10804, N'Địa chất thuỷ văn
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10805, N'Địa chất khoáng sản và tìm kiếm
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10807, N'Địa chất thăm dò
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10808, N'Khoan thăm dò
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10811, N'Khoan khai thác
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (10900, N'Địa lý
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (11200, N'Môi trường
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (11201, N'Môi trường và tài nguyên thiên nhiên 
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (11202, N'Môi trường nước và khí 
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (11203, N'Môi trường dân cư và đô thị 
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (11204, N'Sử dụng và bảo vệ tài nguyên môi trường
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (20000, N'Khoa học kỹ thuật 
', N'Trung cấp ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (20100, N'Cơ khí 
(Quản lý đất đai
)', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (20101, N'Cơ khí chế tạo máy 
(Cơ khí động lực, cơ khí ô tô, Cơ khí nông nghiệp, Kỹ thuật cơ khí
)', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (20103, N'Máy và dụng cụ cắt gọt kim loại 
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (20104, N'Máy và công nghệ gia công áp lực 
', N'Cao đẳng - Đại học ')
INSERT [dbo].[Nganh] ([MaNghanh], [TenNganh], [CapBac]) VALUES (20105, N'Công nghệ và thiết bị hàn
', N'Cao đẳng - Đại học ')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (1, N'Tiến sỹ
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (2, N'Thạc sỹ 
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (3, N'Đại học 
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (4, N'Cao đẳng 
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (5, N'Trung cấp chuyên nghiệp
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (6, N'CNKT(bằng nghề)
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (7, N'Sơ cấp 
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (8, N'Chứng chỉ 
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (9, N'Giấy chứng nhận
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (10, N'THPT
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (11, N'THCS
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (12, N'Trung cấp nghề
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (13, N'Trung cấp lý luận chính trị-Hành chính
')
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (14, N'Cao đẳng nghề
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (1, N'Hồng Cẩm 
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (2, N'Hữu Nghị 
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (3, N'Mỏ Địa chất 
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (4, N'Đại học Công nghiệp 
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (5, N'Đại học Kinh Tế Quốc Dân
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (6, N'Trung Cấp Quân Y
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (7, N'Đại học Công nghiệp Quảng Ninh
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (8, N'Đại học xây dựng Hà Nội
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (9, N'Quản Lý Kinh Tế Công Nghiệp
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (10, N'Trung Học Kinh Tế Quảng Ninh
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (11, N'Đại học Bách Khoa
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (12, N'Viện Đại Học Mở
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (13, N'Học Viện Tài Chính
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (14, N'Trung Học Kỹ Thuật Y Tế TW 1
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (15, N'Đại học kinh tế kỹ thuật công nghiệp
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (16, N'Đại học Luật HN
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (17, N'Trường Đảng Huyện Đông Triều
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (18, N'Trường chính trị tỉnh QN
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (19, N'Trường trung học nghiệp vụ kinh tế địa chất
')
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (20, N'Cao đẳng y tế Quảng Ninh
')
ALTER TABLE [dbo].[BangCap]  WITH CHECK ADD FOREIGN KEY([MaHeHoc])
REFERENCES [dbo].[HeHoc] ([id])
GO
ALTER TABLE [dbo].[BangCap]  WITH CHECK ADD  CONSTRAINT [FK_BangCap_Nghanh] FOREIGN KEY([MaNghanh])
REFERENCES [dbo].[Nganh] ([MaNghanh])
GO
ALTER TABLE [dbo].[BangCap] CHECK CONSTRAINT [FK_BangCap_Nghanh]
GO
ALTER TABLE [dbo].[BangCap]  WITH CHECK ADD  CONSTRAINT [FK_BangCap_TrinhDo] FOREIGN KEY([MaTrinhDo])
REFERENCES [dbo].[TrinhDo] ([MaTrinhDo])
GO
ALTER TABLE [dbo].[BangCap] CHECK CONSTRAINT [FK_BangCap_TrinhDo]
GO
ALTER TABLE [dbo].[BangCap]  WITH CHECK ADD  CONSTRAINT [FK_BangCap_Truong] FOREIGN KEY([MaTruong])
REFERENCES [dbo].[Truong] ([MaTruong])
GO
ALTER TABLE [dbo].[BangCap] CHECK CONSTRAINT [FK_BangCap_Truong]
GO
ALTER TABLE [dbo].[ChiTiet_BangCap]  WITH CHECK ADD FOREIGN KEY([MaBangCap])
REFERENCES [dbo].[BangCap] ([MaBangCap])
GO
ALTER TABLE [dbo].[ChiTiet_BangCap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[HoSo] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTiet_CongViec_NhanVien]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTiet_CongViec_NhanVien]  WITH CHECK ADD FOREIGN KEY([TenCongViec], [Loai])
REFERENCES [dbo].[CongViec] ([TenCongViec], [Loai])
GO
ALTER TABLE [dbo].[ChiTiet_NhiemVu_NhanVien]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTiet_NhiemVu_NhanVien]  WITH CHECK ADD FOREIGN KEY([Loai], [TenNhiemVu])
REFERENCES [dbo].[NhiemVu] ([Loai], [TenNhiemVu])
GO
ALTER TABLE [dbo].[GiayTo]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoSo]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[LichSuBoSungSYLL]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[HoSo] ([MaNV])
GO
ALTER TABLE [dbo].[NhiemVu]  WITH CHECK ADD FOREIGN KEY([MaBangCap])
REFERENCES [dbo].[BangCap] ([MaBangCap])
GO
ALTER TABLE [dbo].[QuanHeGiaDinh]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[QuaTrinhCongTac]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
USE [master]
GO
ALTER DATABASE [TCLD] SET  READ_WRITE 
GO
