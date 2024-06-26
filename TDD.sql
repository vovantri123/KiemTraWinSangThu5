USE [TraoDoiDo]
GO
/****** Object:  Table [dbo].[DanhGiaNguoiDang]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaNguoiDang](
	[IdNguoiDang] [int] NOT NULL,
	[IdNguoiMua] [int] NOT NULL,
	[SoSao] [nvarchar](50) NULL,
	[NhanXet] [nvarchar](500) NULL,
 CONSTRAINT [PK_DanhGiaNguoiDang] PRIMARY KEY CLUSTERED 
(
	[IdNguoiDang] ASC,
	[IdNguoiMua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucYeuThich]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucYeuThich](
	[IdNguoiMua] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[YeuThich] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMucYeuThich] PRIMARY KEY CLUSTERED 
(
	[IdNguoiMua] ASC,
	[IdSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoDich]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich](
	[IdGiaoDich] [int] IDENTITY(1,1) NOT NULL,
	[IdNguoiDung] [int] NOT NULL,
	[loaiGiaoDich] [nvarchar](20) NULL,
	[soTien] [nvarchar](200) NULL,
	[tuNguonGiaoDich] [nvarchar](50) NULL,
	[denNguonGiaoDich] [nvarchar](50) NULL,
	[ngayGiaoDich] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoDich] PRIMARY KEY CLUSTERED 
(
	[IdGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IdNguoiMua] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[SoLuongMua] [nvarchar](50) NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IdNguoiMua] ASC,
	[IdSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoTaAnhSanPham]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoTaAnhSanPham](
	[IdSanPham] [int] NOT NULL,
	[IdAnhMinhHoa] [int] NOT NULL,
	[LinkAnhMinhHoa] [nvarchar](50) NULL,
	[MoTa] [nvarchar](1000) NULL,
 CONSTRAINT [PK_MoTaAnhSanPham] PRIMARY KEY CLUSTERED 
(
	[IdSanPham] ASC,
	[IdAnhMinhHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[IdNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[HoTenNguoiDung] [nvarchar](100) NOT NULL,
	[GioiTinhNguoiDung] [nvarchar](5) NULL,
	[NgaySinhNguoiDung] [nvarchar](50) NULL,
	[CMNDNguoiDung] [nvarchar](12) NULL,
	[EmailNguoiDung] [nvarchar](50) NULL,
	[SdtNguoiDung] [nvarchar](11) NULL,
	[DiaChiNguoiDung] [nvarchar](100) NULL,
	[AnhNguoiDung] [nvarchar](200) NULL,
	[TienNguoiDung] [nvarchar](200) NULL,
	[GiaTriVoucher] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[IdNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLyDonHang]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLyDonHang](
	[IdDonHang] [int] IDENTITY(1,1) NOT NULL,
	[IdNguoiDang] [int] NULL,
	[IdNguoiMua] [int] NULL,
	[IdSanPham] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[LyDoTraHang] [nvarchar](100) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[IdDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IdSanPham] [int] NOT NULL,
	[IdNguoiDang] [int] NULL,
	[Ten] [nvarchar](50) NULL,
	[LinkAnhBia] [nvarchar](50) NULL,
	[Loai] [nvarchar](50) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[SoLuongDaBan] [nvarchar](50) NULL,
	[GiaGoc] [nvarchar](50) NULL,
	[GiaBan] [nvarchar](50) NULL,
	[PhiShip] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[NoiBan] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](50) NULL,
	[NgayMua] [nvarchar](50) NULL,
	[PhanTramMoi] [nvarchar](50) NULL,
	[MoTaChung] [nvarchar](1500) NULL,
	[SoLuotXem] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IdSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IdNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IdNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiDonHang]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDonHang](
	[IdNguoiMua] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[SoLuongMua] [nvarchar](50) NULL,
	[TongThanhToan] [nvarchar](50) NULL,
	[Ngay] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrangThaiDonHang] PRIMARY KEY CLUSTERED 
(
	[IdNguoiMua] ASC,
	[IdSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 25/4/2024 11:42:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[IdVoucher] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungVoucher] [nvarchar](500) NULL,
	[GiaTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[IdVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhGiaNguoiDang] ([IdNguoiDang], [IdNguoiMua], [SoSao], [NhanXet]) VALUES (1, 2, N'5', N'Người bán có giao hàng chất lượng')
INSERT [dbo].[DanhGiaNguoiDang] ([IdNguoiDang], [IdNguoiMua], [SoSao], [NhanXet]) VALUES (1, 3, N'3', N'Người bán rất đẹp trai')
INSERT [dbo].[DanhGiaNguoiDang] ([IdNguoiDang], [IdNguoiMua], [SoSao], [NhanXet]) VALUES (1, 4, N'4', N'Shipper thân thiện')
INSERT [dbo].[DanhGiaNguoiDang] ([IdNguoiDang], [IdNguoiMua], [SoSao], [NhanXet]) VALUES (2, 1, N'5', N'Tốt')
INSERT [dbo].[DanhGiaNguoiDang] ([IdNguoiDang], [IdNguoiMua], [SoSao], [NhanXet]) VALUES (2, 2, N'2', N'xin chào')
INSERT [dbo].[DanhGiaNguoiDang] ([IdNguoiDang], [IdNguoiMua], [SoSao], [NhanXet]) VALUES (2, 3, N'4', N'Rất tốt')
GO
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (1, 4, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (1, 7, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (1, 8, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (2, 1, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (2, 2, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (2, 3, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (2, 5, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (2, 7, NULL)
INSERT [dbo].[DanhMucYeuThich] ([IdNguoiMua], [IdSanPham], [YeuThich]) VALUES (2, 8, NULL)
GO
SET IDENTITY_INSERT [dbo].[GiaoDich] ON 

INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (1, 1, N'Nạp tiền', N'3000000', N'Ví điện tử', N'Sacombank', N'3/28/2024 7:39:58 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (2, 2, N'Nạp tiền', N'2000000', N'Ví điện tử', N'Vietcombank', N'3/27/2024 7:39:58 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (3, 1, N'Nạp tiền', N'5000000', N'Ví điện tử', N'BIDV', N'3/28/2024 8:45:43 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (4, 1, N'Nạp tiền', N'2000000', N'Ví điện tử', N'BIDV', N'3/28/2024 8:49:15 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (5, 1, N'Nạp tiền', N'3000000', N'Ví điện tử', N'VPBank', N'3/28/2024 9:19:52 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (6, 1, N'Nạp tiền', N'200000', N'Ví điện tử', N'Sacombank', N'3/28/2024 9:35:24 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (7, 1, N'Nạp tiền', N'2000000', N'Ví điện tử', N'Sacombank', N'3/28/2024 11:23:27 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (8, 1, N'Rút tiền', N'100000', N'Ví điện tử', N'Vietcombank', N'3/28/2024 11:23:56 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (9, 1, N'Nạp tiền', N'100000', N'Ví điện tử', N'BIDV', N'28/3/2024 10:25:50 PM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (10, 1, N'Nạp tiền', N'200000', N'Ví điện tử', N'Sacombank', N'28/3/2024 10:45:57 PM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (11, 1, N'Rút tiền', N'200000', N'Sacombank', N'Ví điện tử', N'28/3/2024 10:46:13 PM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (12, 1, N'Nạp tiền', N'500000', N'Ví điện tử', N'Sacombank', N'28/3/2024 11:13:48 PM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (13, 1, N'Nạp tiền', N'100000', N'Ví điện tử', N'TPBank', N'10/4/2024 9:06:18 PM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (14, 1, N'Nạp tiền', N'100000', N'Ví điện tử', N'TPBank', N'10/4/2024 9:07:00 PM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (15, 1, N'Nạp tiền', N'100000000', N'Ví điện tử', N'Sacombank', N'4/11/2024 8:39:18 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (16, 1, N'Nạp tiền', N'5000000', N'Ví điện tử', N'BIDV', N'13/4/2024 11:28:59 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (17, 1, N'Nạp tiền', N'100000', N'Sacombank', N'Ví điện tử', N'24/4/2024 6:37:07 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (1018, 1, N'Rút tiền', N'100000', N'Ví điện tử', N'ACB', N'24/4/2024 6:55:07 AM')
INSERT [dbo].[GiaoDich] ([IdGiaoDich], [IdNguoiDung], [loaiGiaoDich], [soTien], [tuNguonGiaoDich], [denNguonGiaoDich], [ngayGiaoDich]) VALUES (1019, 1, N'Nạp tiền', N'100000', N'Vietcombank', N'Ví điện tử', N'24/4/2024 6:56:16 AM')
SET IDENTITY_INSERT [dbo].[GiaoDich] OFF
GO
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (1, 1, N'1')
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (1, 3, N'1')
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (1, 5, N'3')
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (2, 2, N'2')
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (2, 3, N'4')
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (2, 4, N'1')
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (2, 7, N'1')
INSERT [dbo].[GioHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua]) VALUES (2, 8, N'1')
GO
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (1, 1, N'IPadGen6_1.jpg', N'Hỏng góc trên bên trái. Phần còn lại của iPad vẫn hoạt động bình thường.')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (1, 2, N'IPadGen6_2.jpg', N'Trầy màn hình mức độ nhẹ, vẫn nhìn tốt. Màn hình vẫn rõ nét, không có điểm chết hoặc vết xước lớn.')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (1, 3, N'IPadGen6_3.jpg', N'Gọn nhẹ, dễ mang theo. Chiếc iPad này là sự lựa chọn hoàn hảo cho các chuyến đi, từ cuộc họp gặp gỡ công việc đến những chuyến du lịch khám phá thế giới. Với kích thước nhỏ gọn và trọng lượng nhẹ, chiếc iPad này không chỉ dễ dàng để mang theo trong túi xách hay ba lô mà còn không gây trở ngại cho bạn khi di chuyển. Bạn có thể dễ dàng sử dụng nó trên máy bay, tàu hỏa, hoặc thậm chí trong các không gian hẹp. Dù bạn đang trên đường đi hay đang tận hưởng một buổi họp công việc ở một quán cà phê, iPad này sẽ giúp bạn duy trì sự linh hoạt và hiệu suất cao. Hãy mang theo nó và khám phá thế giới một cách dễ dàng và thuận tiện!')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (2, 1, N'tiviSony27inch_1.jpg', N'Màn hình còn mới')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (2, 2, N'tiviSony27inch_2.jpg', N'Mặt sau nguyên vẹn')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (2, 3, N'tiviSony27inch_3.jpg', N'Tổng thể còn xài được ')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (3, 1, N'Iphone11_2.jpg', N'Hỏng góc trên bên trái. Phần còn lại của iPad vẫn hoạt động bình thường.')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (3, 2, N'Iphone11_1.jpg', N'Trầy màn hình mức độ nhẹ, vẫn nhìn tốt. Màn hình vẫn rõ nét, không có điểm chết hoặc vết xước lớn..')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (3, 3, N'Iphone11_3.jpg', N'Gọn nhẹ, dễ mang theo. Chiếc iPad này là sự lựa chọn hoàn hảo cho các chuyến đi, từ cuộc họp gặp gỡ công việc đến những chuyến du lịch khám phá thế giới. Với kích thước nhỏ gọn và trọng lượng nhẹ, chiếc iPad này không chỉ dễ dàng để mang theo trong túi xách hay ba lô mà còn không gây trở ngại cho bạn khi di chuyển. Bạn có thể dễ dàng sử dụng nó trên máy bay, tàu hỏa, hoặc thậm chí trong các không gian hẹp. Dù bạn đang trên đường đi hay đang tận hưởng một buổi họp công việc ở một quán cà phê, iPad này sẽ giúp bạn duy trì sự linh hoạt và hiệu suất cao. Hãy mang theo nó và khám phá thế giới một cách dễ dàng và thuận tiện!')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (4, 1, N'Screenshot 2024-03-26 202613.png', N'Hỏng góc trên bên trái. Phần còn lại của iPad vẫn hoạt động bình thường.')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (4, 2, N'Screenshot 2024-03-26 202653.png', N'Trầy màn hình mức độ nhẹ, vẫn nhìn tốt. Màn hình vẫn rõ nét, không có điểm chết hoặc vết xước lớn..')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (4, 3, N'Screenshot 2024-03-26 202624.png', N'Gọn nhẹ, dễ mang theo. Chiếc iPad này là sự lựa chọn hoàn hảo cho các chuyến đi, từ cuộc họp gặp gỡ công việc đến những chuyến du lịch khám phá thế giới. Với kích thước nhỏ gọn và trọng lượng nhẹ, chiếc iPad này không chỉ dễ dàng để mang theo trong túi xách hay ba lô mà còn không gây trở ngại cho bạn khi di chuyển. Bạn có thể dễ dàng sử dụng nó trên máy bay, tàu hỏa, hoặc thậm chí trong các không gian hẹp. Dù bạn đang trên đường đi hay đang tận hưởng một buổi họp công việc ở một quán cà phê, iPad này sẽ giúp bạn duy trì sự linh hoạt và hiệu suất cao. Hãy mang theo nó và khám phá thế giới một cách dễ dàng và thuận tiện!')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (5, 1, N'Screenshot 2024-03-26 212138.png', N'Hỏng góc trên bên trái. Phần còn lại của iPad vẫn hoạt động bình thường.')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (5, 2, N'Screenshot 2024-03-26 212412.png', N'Trầy màn hình mức độ nhẹ, vẫn nhìn tốt. Màn hình vẫn rõ nét, không có điểm chết hoặc vết xước lớn..')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (6, 1, N'Screenshot 2024-03-26 212056.png', N'Hỏng góc trên bên trái. Phần còn lại của iPad vẫn hoạt động bình thường.')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (7, 1, N'Screenshot 2024-03-26 212630.png', N'Gọn nhẹ, dễ mang theo. Chiếc iPad này là sự lựa chọn hoàn hảo cho các chuyến đi, từ cuộc họp gặp gỡ công việc đến những chuyến du lịch khám phá thế giới. Với kích thước nhỏ gọn và trọng lượng nhẹ, chiếc iPad này không chỉ dễ dàng để mang theo trong túi xách hay ba lô mà còn không gây trở ngại cho bạn khi di chuyển. Bạn có thể dễ dàng sử dụng nó trên máy bay, tàu hỏa, hoặc thậm chí trong các không gian hẹp. Dù bạn đang trên đường đi hay đang tận hưởng một buổi họp công việc ở một quán cà phê, iPad này sẽ giúp bạn duy trì sự linh hoạt và hiệu suất cao. Hãy mang theo nó và khám phá thế giới một cách dễ dàng và thuận tiện!')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (7, 2, N'Screenshot 2024-03-26 212646.png', N'Mặt sau nguyên vẹn')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (7, 3, N'Screenshot 2024-03-26 212708.png', N'Trầy màn hình mức độ nhẹ, vẫn nhìn tốt. Màn hình vẫn rõ nét, không có điểm chết hoặc vết xước lớn..')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (8, 3, N'Screenshot 2024-03-26 212934.png', N'')
INSERT [dbo].[MoTaAnhSanPham] ([IdSanPham], [IdAnhMinhHoa], [LinkAnhMinhHoa], [MoTa]) VALUES (9, 1, N'ThaiDo.png', N'dsfsfsfsdfsdf')
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([IdNguoiDung], [HoTenNguoiDung], [GioiTinhNguoiDung], [NgaySinhNguoiDung], [CMNDNguoiDung], [EmailNguoiDung], [SdtNguoiDung], [DiaChiNguoiDung], [AnhNguoiDung], [TienNguoiDung], [GiaTriVoucher]) VALUES (1, N'Nguyễn Hoàng Anh Khoa', N'Nam', N'2/1/2004', N'073172381313', N'ak2109@gmail.com', N'0949617948', N'TPHCM', N'NguyenHoangAnhKhoa.jpg', N'21234000', N'10000')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [HoTenNguoiDung], [GioiTinhNguoiDung], [NgaySinhNguoiDung], [CMNDNguoiDung], [EmailNguoiDung], [SdtNguoiDung], [DiaChiNguoiDung], [AnhNguoiDung], [TienNguoiDung], [GiaTriVoucher]) VALUES (2, N'Nghiêm Vũ Hoàng Long', N'Nam', N'9/21/2004', N'073218931923', N'ak2109@gmail.com', N'0392193128', N'Hà Nội', N'Avt1.png', N'8250000', N'0')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [HoTenNguoiDung], [GioiTinhNguoiDung], [NgaySinhNguoiDung], [CMNDNguoiDung], [EmailNguoiDung], [SdtNguoiDung], [DiaChiNguoiDung], [AnhNguoiDung], [TienNguoiDung], [GiaTriVoucher]) VALUES (3, N'Võ Văn Trí', N'Nam', N'4/4/2004', N'078423949294', N'vovantri44@gmail.com', N'0982382347', N'Ðồng Tháp', N'Avt2.jpg', N'0', N'0')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [HoTenNguoiDung], [GioiTinhNguoiDung], [NgaySinhNguoiDung], [CMNDNguoiDung], [EmailNguoiDung], [SdtNguoiDung], [DiaChiNguoiDung], [AnhNguoiDung], [TienNguoiDung], [GiaTriVoucher]) VALUES (4, N'Nghiêm Ðại Ngân', N'Nam', N'1/2/2004', N'074932949234', N'daingan2612@gmail.com', N'0397410323', N'TPHCM', N'Avt3.jpg', N'0', N'0')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [HoTenNguoiDung], [GioiTinhNguoiDung], [NgaySinhNguoiDung], [CMNDNguoiDung], [EmailNguoiDung], [SdtNguoiDung], [DiaChiNguoiDung], [AnhNguoiDung], [TienNguoiDung], [GiaTriVoucher]) VALUES (5, N'Phạm Hải Tú', N'Nữ', N'7/13/1995', N'079429349294', N'phamtu221@gmail.com', N'0982374273', N'TPHCM', N'Avt4.jpg', N'0', N'0')
INSERT [dbo].[NguoiDung] ([IdNguoiDung], [HoTenNguoiDung], [GioiTinhNguoiDung], [NgaySinhNguoiDung], [CMNDNguoiDung], [EmailNguoiDung], [SdtNguoiDung], [DiaChiNguoiDung], [AnhNguoiDung], [TienNguoiDung], [GiaTriVoucher]) VALUES (6, N'Triiển Chiêu', N'Nữ', N'6/10/2003', N'078439428422', N'HongHaiLan2@gmail.com', N'0943284832', N'TPHCM', N'Avt5.jpg', N'0', N'0')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanLyDonHang] ON 

INSERT [dbo].[QuanLyDonHang] ([IdDonHang], [IdNguoiDang], [IdNguoiMua], [IdSanPham], [TrangThai], [LyDoTraHang]) VALUES (11, 1, 2, 1, N'Đang giao', NULL)
INSERT [dbo].[QuanLyDonHang] ([IdDonHang], [IdNguoiDang], [IdNguoiMua], [IdSanPham], [TrangThai], [LyDoTraHang]) VALUES (12, 2, 1, 2, N'Đang giao', NULL)
INSERT [dbo].[QuanLyDonHang] ([IdDonHang], [IdNguoiDang], [IdNguoiMua], [IdSanPham], [TrangThai], [LyDoTraHang]) VALUES (15, 1, 2, 3, N'Đã giao', NULL)
INSERT [dbo].[QuanLyDonHang] ([IdDonHang], [IdNguoiDang], [IdNguoiMua], [IdSanPham], [TrangThai], [LyDoTraHang]) VALUES (1007, 2, 1, 5, N'Bị hoàn trả', N'Thiếu hàng')
SET IDENTITY_INSERT [dbo].[QuanLyDonHang] OFF
GO
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (1, 1, N'IPadGen64', N'IPadGen6_1.jpg', N'Đồ điện tử', N'8', N'3', N'12000000', N'9000000', N'20000', N'Đã duyệt', N'Hồ Chí Minh', N'Nhật Bản', N'03/12/2020', N'79', N'iPad 6th Wifi 32GB với nhiều nâng cấp về phần cứng, đặc biệt hơn giá của sản phẩm này được định hình ở phân khúc giá rẻ, sinh viên sẽ là sự lựa chọn “không quá xa tầm tay” người dùng.', N'51')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (2, 2, N'TVs Sony KV27FS120 27" Screen CRT TV', N'tiviSony27inch_1.jpg', N'Đồ điện tử', N'2', N'0', N'10700000', N'9000000', N'50000', N'Đã duyệt', N'Hồ Chí Minh', N'Trung Quốc', N'2/2/2022', N'75', N'Mẫu tivi Samsung Micro LED 4K 110 inch MNA110MS1A có công nghệ Quantum Dot tái tạo 100% dải màu sắc chuẩn điện ảnh và Micro LED kích thước cực nhỏ có khả năng thể hiện 3 màu cơ bản (đỏ - lục - lam) để tạo hình ảnh, màu sắc trực tiếp trên màn hình cực lớn 110 inch với độ phân giải 4K.', N'115')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (3, 2, N'IPhone 11', N'Iphone11_2.jpg', N'Đồ điện tử', N'3', N'2', N'23000000', N'17000000', N'27000', N'Đã duyệt', N'Đà Lạt', N'Hàn Quốc', N'2/2/2021', N'80', N'Smart Tivi Casper 32 inch 32HG5200 được thiết kế với vóc dáng vô cùng đơn giản, viền tivi mỏng 0,8 mm kết hợp với chân đế hình chữ V úp ngược mang lại tổng thể chiếc tivi trở nên sang trọng. Tivi Casper 32 inch phù hợp trưng bày ở những nơi có không gian nhỏ như: Phòng ngủ, phòng khách nhỏ,...', N'62')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (4, 1, N'Mô hình one piece', N'Screenshot 2024-03-26 202613.png', N'Đồ chơi', N'2', N'1', N'420000', N'1000000', N'50000', N'Đã duyệt', N'Tây Ninh', N'Trung Quốc', N'14/07/2022', N'90', N'MÔ HÌNH Monkey D Luffy gear 4 King Fado Myoo CAO CẤP CỠ LỚN có led chiến đấu với Kaido trong anime One piece ', N'26')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (5, 2, N'Đồ đi chơi ', N'Screenshot 2024-03-26 212138.png', N'Quần áo', N'15', N'3', N'2500000', N'1900000', N'30000', N'Đã duyệt', N'Hà Nội', N'Mỹ', N'1/12/2012', N'75', N'Áo Polo Nam Thể Thao Promax-S1 Coolmate chất liệu Poly thoáng khí, mát mẻ và nhanh khô. Sản phẩm được thiết kế kiểu dáng Regular fit dáng suông thích hợp sử dụng khi đi làm, đi chơi hoặc mặc ở nhà đều được mà nam giới nên có trong tủ đồ của mình. ', N'338')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (6, 2, N'Quần áo nam', N'Screenshot 2024-03-26 212056.png', N'Quần áo', N'12', N'5', N'9999000', N'4999000', N'40000', N'Đã duyệt', N'Lào Cai', N'Việt Nam', N'1/12/2022', N'80', N'Áo Polo Nam Thể Thao Promax-S1 Coolmate chất liệu Poly thoáng khí, mát mẻ và nhanh khô. Sản phẩm được thiết kế kiểu dáng Regular fit dáng suông thích hợp sử dụng khi đi làm, đi chơi hoặc mặc ở nhà đều được mà nam giới nên có trong tủ đồ của mình. ', N'62')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (7, 1, N'Harry Potter và hòn đá phù thủy', N'Screenshot 2024-03-26 212630.png', N'Sách', N'2', N'1', N'1200000', N'1100000', N'50000', N'Đã duyệt', N'Đà Nẵng', N'Lào', N'1/1/2024', N'83', N'Khi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.', N'45')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (8, 1, N'Máy xay đa năng', N'Screenshot 2024-03-26 212934.png', N'Đồ gia dụng', N'2', N'0', N'290000', N'180000', N'20000', N'Đã duyệt', N'Hồ Chí Minh', N'Nhật Bản', N'1/1/2023', N'86', N'Máy xay sinh tố Vitamix Drink Machine Advance là dòng máy xay chuyên nghiệp công suất lớn dành cho các quán cà phê. Nhờ có chiếc máy xay công nghiệp này mà từng cốc sinh tố đá bào sẽ được làm ra nhanh chóng chỉ trong tích tắc. Công suất lớn kèm 6 lập trình xay tự động và chức năng tự động bật - tắt sẽ giúp bạn chọn ra được chế độ xay chất lượng và phù hợp với yêu cầu để làm ra nhiều món sinh tố đa dạng khác nhau.', N'5')
INSERT [dbo].[SanPham] ([IdSanPham], [IdNguoiDang], [Ten], [LinkAnhBia], [Loai], [SoLuong], [SoLuongDaBan], [GiaGoc], [GiaBan], [PhiShip], [TrangThai], [NoiBan], [XuatXu], [NgayMua], [PhanTramMoi], [MoTaChung], [SoLuotXem]) VALUES (9, 1, N'rewrwer', N'ThaiDo.png', N'Quần áo', N'2', N'1', N'5435345345', N'53453', N'53453', N'Đã duyệt', N'Hồ Chí Minh', N'Việt Nam', N'02/04/2024', N'51', N'fsdfsfsdfsfds', N'11')
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IdNguoiDung], [TenDangNhap], [MatKhau]) VALUES (1, N'User01', N'1234')
INSERT [dbo].[TaiKhoan] ([IdNguoiDung], [TenDangNhap], [MatKhau]) VALUES (2, N'User02', N'12345')
INSERT [dbo].[TaiKhoan] ([IdNguoiDung], [TenDangNhap], [MatKhau]) VALUES (3, N'User03', N'12345')
INSERT [dbo].[TaiKhoan] ([IdNguoiDung], [TenDangNhap], [MatKhau]) VALUES (4, N'User04', N'223344')
INSERT [dbo].[TaiKhoan] ([IdNguoiDung], [TenDangNhap], [MatKhau]) VALUES (5, N'User05', N'334455')
INSERT [dbo].[TaiKhoan] ([IdNguoiDung], [TenDangNhap], [MatKhau]) VALUES (6, N'User06', N'667788')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (1, 1, N'2', N'2000000', N'27/12/2023', N'Đã trả hàng')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (1, 2, N'1', N'100000', N'1/1/2042', N'Đã nhận')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (1, 3, N'3', N'1200000', N'1/1/2024', N'Đã nhận')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (1, 5, N'4', N'7630000', N'24/04/2024', N'Đã trả hàng')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (2, 1, N'2', N'187000', N'1/1/2023', N'Chờ xác nhận')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (2, 2, N'2', N'9999', N'2/2/2019', N'Chờ giao hàng')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (2, 3, N'3', N'200000', N'4/6/2019', N'Đã nhận')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (3, 1, N'2', N'1231', N'1/1/1', N'Đã nhận')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (3, 2, N'1', N'1231', N'1/1/1', N'Đã nhận')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (3, 3, N'3', N'823947', N'1/1/1', N'Đã nhận')
INSERT [dbo].[TrangThaiDonHang] ([IdNguoiMua], [IdSanPham], [SoLuongMua], [TongThanhToan], [Ngay], [TrangThai]) VALUES (3, 4, N'2', N'1231', N'1/1/1', N'Đã nhận')
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([IdVoucher], [NoiDungVoucher], [GiaTri]) VALUES (1, N'Miễn ship 20.000 đồng', N'20000')
INSERT [dbo].[Voucher] ([IdVoucher], [NoiDungVoucher], [GiaTri]) VALUES (2, N'Miễn phí tiền hàng 10.000 đồng', N'10000')
INSERT [dbo].[Voucher] ([IdVoucher], [NoiDungVoucher], [GiaTri]) VALUES (3, N'Voucher ngày 30/4', N'30000')
INSERT [dbo].[Voucher] ([IdVoucher], [NoiDungVoucher], [GiaTri]) VALUES (4, N'Voucher Lễ tình nhân', N'20000')
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
ALTER TABLE [dbo].[DanhGiaNguoiDang]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaNguoiDang_NguoiDung] FOREIGN KEY([IdNguoiDang])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[DanhGiaNguoiDang] CHECK CONSTRAINT [FK_DanhGiaNguoiDang_NguoiDung]
GO
ALTER TABLE [dbo].[DanhGiaNguoiDang]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaNguoiDang_NguoiDung1] FOREIGN KEY([IdNguoiMua])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[DanhGiaNguoiDang] CHECK CONSTRAINT [FK_DanhGiaNguoiDang_NguoiDung1]
GO
ALTER TABLE [dbo].[DanhMucYeuThich]  WITH CHECK ADD  CONSTRAINT [FK_DanhMucYeuThich_NguoiDung] FOREIGN KEY([IdNguoiMua])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[DanhMucYeuThich] CHECK CONSTRAINT [FK_DanhMucYeuThich_NguoiDung]
GO
ALTER TABLE [dbo].[DanhMucYeuThich]  WITH CHECK ADD  CONSTRAINT [FK_DanhMucYeuThich_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([IdSanPham])
GO
ALTER TABLE [dbo].[DanhMucYeuThich] CHECK CONSTRAINT [FK_DanhMucYeuThich_SanPham]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_NguoiDung] FOREIGN KEY([IdNguoiDung])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [FK_GiaoDich_NguoiDung]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_NguoiDung] FOREIGN KEY([IdNguoiMua])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_NguoiDung]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([IdSanPham])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[MoTaAnhSanPham]  WITH CHECK ADD  CONSTRAINT [FK_MoTaAnhSanPham_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([IdSanPham])
GO
ALTER TABLE [dbo].[MoTaAnhSanPham] CHECK CONSTRAINT [FK_MoTaAnhSanPham_SanPham]
GO
ALTER TABLE [dbo].[QuanLyDonHang]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyDonHang_NguoiDung] FOREIGN KEY([IdNguoiDang])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[QuanLyDonHang] CHECK CONSTRAINT [FK_QuanLyDonHang_NguoiDung]
GO
ALTER TABLE [dbo].[QuanLyDonHang]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyDonHang_NguoiDung1] FOREIGN KEY([IdNguoiMua])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[QuanLyDonHang] CHECK CONSTRAINT [FK_QuanLyDonHang_NguoiDung1]
GO
ALTER TABLE [dbo].[QuanLyDonHang]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyDonHang_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([IdSanPham])
GO
ALTER TABLE [dbo].[QuanLyDonHang] CHECK CONSTRAINT [FK_QuanLyDonHang_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NguoiDung] FOREIGN KEY([IdNguoiDang])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NguoiDung]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NguoiDung] FOREIGN KEY([IdNguoiDung])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NguoiDung]
GO
ALTER TABLE [dbo].[TrangThaiDonHang]  WITH CHECK ADD  CONSTRAINT [FK_TrangThaiDonHang_NguoiDung] FOREIGN KEY([IdNguoiMua])
REFERENCES [dbo].[NguoiDung] ([IdNguoiDung])
GO
ALTER TABLE [dbo].[TrangThaiDonHang] CHECK CONSTRAINT [FK_TrangThaiDonHang_NguoiDung]
GO
ALTER TABLE [dbo].[TrangThaiDonHang]  WITH CHECK ADD  CONSTRAINT [FK_TrangThaiDonHang_SanPham] FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([IdSanPham])
GO
ALTER TABLE [dbo].[TrangThaiDonHang] CHECK CONSTRAINT [FK_TrangThaiDonHang_SanPham]
GO
