USE [myHonda]
GO
/****** Object:  Table [dbo].[anhminhhoa]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anhminhhoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maxe] [int] NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK_anhminhhoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietdathang]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdathang](
	[mactdh] [int] IDENTITY(1,1) NOT NULL,
	[madh] [int] NULL,
	[maxe] [int] NULL,
	[giaban] [float] NULL,
	[soluong] [int] NULL,
	[ngaydat] [date] NULL,
 CONSTRAINT [PK_chitietdathang] PRIMARY KEY CLUSTERED 
(
	[mactdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dathang]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dathang](
	[madh] [int] IDENTITY(1,1) NOT NULL,
	[makh] [int] NULL,
	[tenkh] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
	[ngaytao] [date] NULL,
	[tongtien] [float] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_dathang] PRIMARY KEY CLUSTERED 
(
	[madh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[sotiendamua] [float] NULL,
	[status] [bit] NULL,
	[img] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[phone] [varchar](50) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lienhe]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lienhe](
	[malh] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[chude] [nvarchar](50) NULL,
	[noidung] [nvarchar](max) NULL,
	[ngaygui] [date] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_lienhe] PRIMARY KEY CLUSTERED 
(
	[malh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaixe]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaixe](
	[maloai] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
	[ghichu] [nvarchar](max) NULL,
	[gioithieu] [nvarchar](max) NULL,
 CONSTRAINT [PK_loaixe] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[mancc] [int] IDENTITY(1,1) NOT NULL,
	[tenncc] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_nhacungcap] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[usename] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[hoten] [nvarchar](max) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_taikhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xemay]    Script Date: 7/30/2021 9:52:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xemay](
	[maxe] [int] IDENTITY(1,1) NOT NULL,
	[mancc] [int] NULL,
	[maloai] [int] NULL,
	[tenxe] [nvarchar](max) NULL,
	[gianhap] [float] NULL,
	[giakhuyenmai] [float] NULL,
	[giaban] [float] NULL,
	[ngaythem] [date] NULL,
	[khungxe] [nvarchar](max) NULL,
	[mausac] [nvarchar](50) NULL,
	[khoiluong] [nvarchar](50) NULL,
	[dungtichxylanh] [nvarchar](max) NULL,
	[dongco] [nvarchar](max) NULL,
	[muctieuthunguyenlieu] [nvarchar](max) NULL,
	[phuoctruoc] [nvarchar](max) NULL,
	[phuocsau] [nvarchar](max) NULL,
	[ghichu] [nvarchar](max) NULL,
	[mota] [nvarchar](max) NOT NULL,
	[soluong] [int] NULL,
	[status] [bit] NULL,
	[img] [nvarchar](50) NULL,
 CONSTRAINT [PK_xemay] PRIMARY KEY CLUSTERED 
(
	[maxe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[anhminhhoa]  WITH CHECK ADD  CONSTRAINT [FK_anhminhhoa_xemay] FOREIGN KEY([maxe])
REFERENCES [dbo].[xemay] ([maxe])
GO
ALTER TABLE [dbo].[anhminhhoa] CHECK CONSTRAINT [FK_anhminhhoa_xemay]
GO
ALTER TABLE [dbo].[chitietdathang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdathang_dathang] FOREIGN KEY([madh])
REFERENCES [dbo].[dathang] ([madh])
GO
ALTER TABLE [dbo].[chitietdathang] CHECK CONSTRAINT [FK_chitietdathang_dathang]
GO
ALTER TABLE [dbo].[chitietdathang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdathang_xemay] FOREIGN KEY([maxe])
REFERENCES [dbo].[xemay] ([maxe])
GO
ALTER TABLE [dbo].[chitietdathang] CHECK CONSTRAINT [FK_chitietdathang_xemay]
GO
ALTER TABLE [dbo].[dathang]  WITH CHECK ADD  CONSTRAINT [FK_dathang_khachhang] FOREIGN KEY([makh])
REFERENCES [dbo].[khachhang] ([makh])
GO
ALTER TABLE [dbo].[dathang] CHECK CONSTRAINT [FK_dathang_khachhang]
GO
ALTER TABLE [dbo].[xemay]  WITH CHECK ADD  CONSTRAINT [FK_xemay_loaixe] FOREIGN KEY([maloai])
REFERENCES [dbo].[loaixe] ([maloai])
GO
ALTER TABLE [dbo].[xemay] CHECK CONSTRAINT [FK_xemay_loaixe]
GO
ALTER TABLE [dbo].[xemay]  WITH CHECK ADD  CONSTRAINT [FK_xemay_nhacungcap] FOREIGN KEY([mancc])
REFERENCES [dbo].[nhacungcap] ([mancc])
GO
ALTER TABLE [dbo].[xemay] CHECK CONSTRAINT [FK_xemay_nhacungcap]
GO
