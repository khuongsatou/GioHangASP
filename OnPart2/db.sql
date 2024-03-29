USE [db]
GO
/****** Object:  Table [dbo].[tbCTHD]    Script Date: 12/14/2019 7:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCTHD](
	[id_hd] [int] NOT NULL,
	[int_sp] [int] NOT NULL,
	[price] [float] NULL,
	[quality] [int] NULL,
 CONSTRAINT [PK_tbCTHD] PRIMARY KEY CLUSTERED 
(
	[id_hd] ASC,
	[int_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbHoaDon]    Script Date: 12/14/2019 7:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cus_name] [nvarchar](50) NULL,
	[cus_add] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbHoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbSanPham]    Script Date: 12/14/2019 7:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSanPham](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[GiaSP] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
	[HinhAnh] [nvarchar](250) NULL,
	[Quality] [int] NULL,
 CONSTRAINT [PK_tbSanPham] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tbCTHD] ([id_hd], [int_sp], [price], [quality]) VALUES (3, 1, 4857061, 5)
INSERT [dbo].[tbCTHD] ([id_hd], [int_sp], [price], [quality]) VALUES (3, 7, 3031887, 1)
INSERT [dbo].[tbCTHD] ([id_hd], [int_sp], [price], [quality]) VALUES (4, 1, 4857061, 1)
INSERT [dbo].[tbCTHD] ([id_hd], [int_sp], [price], [quality]) VALUES (4, 2, 3180019, 1)
INSERT [dbo].[tbCTHD] ([id_hd], [int_sp], [price], [quality]) VALUES (4, 3, 3337325, 1)
INSERT [dbo].[tbCTHD] ([id_hd], [int_sp], [price], [quality]) VALUES (4, 5, 3101405, 2)
SET IDENTITY_INSERT [dbo].[tbHoaDon] ON 

INSERT [dbo].[tbHoaDon] ([id], [cus_name], [cus_add]) VALUES (1, N'khuong', N'vn')
INSERT [dbo].[tbHoaDon] ([id], [cus_name], [cus_add]) VALUES (2, N'khuong', N'vn')
INSERT [dbo].[tbHoaDon] ([id], [cus_name], [cus_add]) VALUES (3, N'khuong', N'vn')
INSERT [dbo].[tbHoaDon] ([id], [cus_name], [cus_add]) VALUES (4, N'khuong', N'vn')
SET IDENTITY_INSERT [dbo].[tbHoaDon] OFF
SET IDENTITY_INSERT [dbo].[tbSanPham] ON 

INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (1, N'Sản phẩm 1', N'4857061', N'Đây là sản phẩm thứ 1', N'hinh (1).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (2, N'Sản phẩm 2', N'3180019', N'Đây là sản phẩm thứ 2', N'hinh (2).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (3, N'Sản phẩm 3', N'3337325', N'Đây là sản phẩm thứ 3', N'hinh (3).jpg', 2)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (4, N'Sản phẩm 4', N'1955443', N'Đây là sản phẩm thứ 4', N'hinh (4).jpg', 3)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (5, N'Sản phẩm 5', N'3101405', N'Đây là sản phẩm thứ 5', N'hinh (5).jpg', 4)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (6, N'Sản phẩm 6', N'2853076', N'Đây là sản phẩm thứ 6', N'hinh (6).jpg', 5)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (7, N'Sản phẩm 7', N'3031887', N'Đây là sản phẩm thứ 7', N'hinh (7).jpg', 6)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (8, N'Sản phẩm 8', N'2896154', N'Đây là sản phẩm thứ 8', N'hinh (8).jpg', 7)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (9, N'Sản phẩm 9', N'3603271', N'Đây là sản phẩm thứ 9', N'hinh (9).jpg', 9)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (10, N'Sản phẩm 10', N'525981', N'Đây là sản phẩm thứ 10', N'hinh (10).jpg', 8)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (11, N'Sản phẩm 11', N'1504959', N'Đây là sản phẩm thứ 11', N'hinh (11).jpg', 3)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (12, N'Sản phẩm 12', N'2860538', N'Đây là sản phẩm thứ 12', N'hinh (12).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (13, N'Sản phẩm 13', N'3013228', N'Đây là sản phẩm thứ 13', N'hinh (13).jpg', 4)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (14, N'Sản phẩm 14', N'2630459', N'Đây là sản phẩm thứ 14', N'hinh (14).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (15, N'Sản phẩm 15', N'1912799', N'Đây là sản phẩm thứ 15', N'hinh (15).jpg', 2)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (16, N'Sản phẩm 16', N'2425060', N'Đây là sản phẩm thứ 16', N'hinh (16).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (17, N'Sản phẩm 17', N'480964', N'Đây là sản phẩm thứ 17', N'hinh (17).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (18, N'Sản phẩm 18', N'1044292', N'Đây là sản phẩm thứ 18', N'hinh (18).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (19, N'Sản phẩm 19', N'3952942', N'Đây là sản phẩm thứ 19', N'hinh (19).jpg', 1)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (20, N'Sản phẩm 20', N'1614902', N'Đây là sản phẩm thứ 20', N'hinh (20).jpg', 2)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (21, N'Sản phẩm 21', N'781372', N'Đây là sản phẩm thứ 21', N'hinh (21).jpg', 3)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (22, N'Sản phẩm 22', N'3243296', N'Đây là sản phẩm thứ 22', N'hinh (22).jpg', 4)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (23, N'Sản phẩm 23', N'748128', N'Đây là sản phẩm thứ 23', N'hinh (23).jpg', 5)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (24, N'Sản phẩm 24', N'1724956', N'Đây là sản phẩm thứ 24', N'hinh (24).jpg', 6)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (25, N'Sản phẩm 25', N'2852514', N'Đây là sản phẩm thứ 25', N'hinh (25).jpg', 7)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (26, N'Sản phẩm 26', N'1965651', N'Đây là sản phẩm thứ 26', N'hinh (26).jpg', 2)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (27, N'Sản phẩm 27', N'3741558', N'Đây là sản phẩm thứ 27', N'hinh (27).jpg', 3)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (28, N'Sản phẩm 28', N'1588392', N'Đây là sản phẩm thứ 28', N'hinh (28).jpg', 4)
INSERT [dbo].[tbSanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh], [Quality]) VALUES (29, N'Sản phẩm 29', N'559540', N'Đây là sản phẩm thứ 29', N'hinh (29).jpg', 5)
SET IDENTITY_INSERT [dbo].[tbSanPham] OFF
