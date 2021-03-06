USE [master]
GO
/****** Object:  Database [PRJ301_SE08D_Assignment_Group10]    Script Date: 7/12/2021 5:52:28 PM ******/
CREATE DATABASE [PRJ301_SE08D_Assignment_Group10]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_SE08D_Assignment_Group10', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_SE08D_Assignment_Group10.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_SE08D_Assignment_Group10_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_SE08D_Assignment_Group10_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_SE08D_Assignment_Group10].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_SE08D_Assignment_Group10', N'ON'
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET QUERY_STORE = OFF
GO
USE [PRJ301_SE08D_Assignment_Group10]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 7/12/2021 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryId] [varchar](10) NOT NULL,
	[categoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHistory]    Script Date: 7/12/2021 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 7/12/2021 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[isOnlinePayment] [bit] NULL,
	[currentDate] [datetime] NOT NULL,
	[total] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_tblOrder] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 7/12/2021 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[orderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[price] [nchar](10) NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tblOrderDetail] PRIMARY KEY CLUSTERED 
(
	[orderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 7/12/2021 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[productId] [int] IDENTITY(24,1) NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
	[image] [varchar](max) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[price] [numeric](18, 3) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[quantity] [numeric](18, 0) NOT NULL,
	[status] [bit] NOT NULL,
	[categoryId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 7/12/2021 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[role] [varchar](10) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCategory] ([categoryId], [categoryName]) VALUES (N'C1', N'Nhạc Vàng')
INSERT [dbo].[tblCategory] ([categoryId], [categoryName]) VALUES (N'C2', N'Nhạc Trẻ')
INSERT [dbo].[tblCategory] ([categoryId], [categoryName]) VALUES (N'C3', N'Nhạc Kháng Chiến')
INSERT [dbo].[tblCategory] ([categoryId], [categoryName]) VALUES (N'C4', N'Nhạc Nước Ngoài')
GO
SET IDENTITY_INSERT [dbo].[tblHistory] ON 

INSERT [dbo].[tblHistory] ([id], [productId], [date], [username], [type]) VALUES (1, 35, CAST(N'2021-07-12T10:54:20.567' AS DateTime), N'thanhtrung', N'Update')
INSERT [dbo].[tblHistory] ([id], [productId], [date], [username], [type]) VALUES (2, 36, CAST(N'2021-07-12T17:31:00.040' AS DateTime), N'thanhtrung', N'Update')
INSERT [dbo].[tblHistory] ([id], [productId], [date], [username], [type]) VALUES (3, 36, CAST(N'2021-07-12T17:31:07.560' AS DateTime), N'thanhtrung', N'Update')
INSERT [dbo].[tblHistory] ([id], [productId], [date], [username], [type]) VALUES (4, 36, CAST(N'2021-07-12T17:31:19.950' AS DateTime), N'thanhtrung', N'Update')
INSERT [dbo].[tblHistory] ([id], [productId], [date], [username], [type]) VALUES (5, 36, CAST(N'2021-07-12T17:33:42.253' AS DateTime), N'thanhtrung', N'Update')
INSERT [dbo].[tblHistory] ([id], [productId], [date], [username], [type]) VALUES (6, 36, CAST(N'2021-07-12T17:39:17.557' AS DateTime), N'thanhtrung', N'Update')
SET IDENTITY_INSERT [dbo].[tblHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrder] ON 

INSERT [dbo].[tblOrder] ([orderId], [username], [isOnlinePayment], [currentDate], [total]) VALUES (1, N'trungphampttt@gmail.com', 0, CAST(N'2021-07-12T10:58:25.253' AS DateTime), CAST(300000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[tblOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetail] ON 

INSERT [dbo].[tblOrderDetail] ([orderDetailId], [orderId], [productId], [price], [quantity]) VALUES (1, 1, 36, N'300000    ', 1)
SET IDENTITY_INSERT [dbo].[tblOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (2, N'Chuyện của mặt trời - Chuyện của chúng ta', N'http://www.imuzik.com.vn/uploads/media1/images/article/2014/01/25/1.jpg', N'“Chuyện của mặt trời – Chuyện của chúng ta” là sự cô đọng và súc tích, nhiều chiêm nghiệm về tình yêu về cuộc sống và được truyền tải qua giai điệu nhẹ nhàng mà da diết', CAST(500000.000 AS Numeric(18, 3)), CAST(N'2013-05-15T00:00:00.000' AS DateTime), CAST(20 AS Numeric(18, 0)), 1, N'C2')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (3, N'TÂM', N'http://www.imuzik.com.vn/uploads/media1/images/article/2014/01/25/2.jpg', N'Album “TÂM” Mỹ Tâm vẫn trung thành với phong cách nhạc Pop pha với chất Soul, 10 ca khúc mới nhất do Mỹ Tâm viết đã được nhà sản xuất âm nhạc Hàn Quốc Cho Sung Jin cùng rất nhiều nhạc sĩ khác hoà âm phối khí.', CAST(300000.000 AS Numeric(18, 3)), CAST(N'2013-07-02T00:00:00.000' AS DateTime), CAST(10 AS Numeric(18, 0)), 1, N'C2')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (4, N'Múc ánh trăng vàng', N'http://www.imuzik.com.vn/uploads/media1/images/article/2014/01/25/4.jpg', N'CD “Múc ánh trăng vàng” của ca sĩ Thành Lê gồm 10 bài hát, trong đó hơn nửa là những ca khúc mang âm hưởng dân gian', CAST(200000.000 AS Numeric(18, 3)), CAST(N'2013-10-20T00:00:00.000' AS DateTime), CAST(15 AS Numeric(18, 0)), 1, N'C2')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (5, N'18+', N'http://www.imuzik.com.vn/uploads/media1/images/article/2014/01/25/5.jpg', N'“18 +” gồm các sáng tác của Vương Vũ, Hoàng Nhã, Tạ Quang Thắng, Khắc Hưng, Nguyễn Đức Cường… về một tâm hồn trẻ trung vừa bước qua tuổi 18, là những tâm sự, day dứt tình cảm của lứa tuổi mới trưởng thành..', CAST(1200000.000 AS Numeric(18, 3)), CAST(N'2013-11-30T00:00:00.000' AS DateTime), CAST(5 AS Numeric(18, 0)), 1, N'C2')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (6, N'Soul', N'http://www.imuzik.com.vn/uploads/media1/images/article/2014/01/25/6.jpg', N'“Soul” bao gồm 8 ca khúc, và trong đó, Đinh Hương cũng tham gia sáng tác 2 bài là “So I” và “Chờ đợi yêu thương”', CAST(200000.000 AS Numeric(18, 3)), CAST(N'2013-09-21T00:00:00.000' AS DateTime), CAST(30 AS Numeric(18, 0)), 1, N'C2')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (10, N'Linh Hồn Tượng Đá', N'https://3.bp.blogspot.com/-e96HVLA36U8/XNhVil-5qzI/AAAAAAAAAAs/hSmyxls3QSA6_kBMRDoy2QQ7_4uOssNRwCLcBGAs/s1600/tong-hop-nhac-vang-hay-nhat-truoc-1975.jpg', N'Giọng hát của các ca sĩ vang bóng một thời phải chăng quá xuất sắc đến mức “đóng đinh” nhiều ca khúc tên tuổi vượt cả thời gian mà không một ai có thể thay thế. Thậm chí, đã có lúc người ta phải thốt lên rằng các ca sĩ thời xưa đã lột tả hết cái hồn trong các tác phẩm âm nhạc mà cho đến tận mai sau các ca sĩ trẻ vẫn không thể nào vượt qua nổi cái bóng ấy.', CAST(1500000.000 AS Numeric(18, 3)), CAST(N'1975-02-20T00:00:00.000' AS DateTime), CAST(10 AS Numeric(18, 0)), 1, N'C1')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (11, N'Em Đến Thăm Anh Một Chiều Mưa ', N'https://nhacxua.vn/wp-content/uploads/2021/05/em-den-tham-anh-1-chieu-mua.jpg', N'Em Đến Thăm Anh Một Chiều Mưa là một nhạc phẩm trữ tình nổi tiếng của nhạc sĩ Tô Vũ được sáng tác từ năm 1947, được đánh giá là một trong những tuyệt phẩm của Tân nhạc Việt Nam thời kỳ đầu.

Bạn đang sao chép nội dung của nhacxua.vn. Nếu là cá nhân sử dụng, vui lòng ghi rõ: Nguồn nhacxua.vn. Nếu là website, vui lòng chỉ sử dụng nội dung khi có sự cho phép của nhacxua.vn. Mọi hành vi vi phạm bản quyền để MMO đều sẽ bị report đến facebook và adsense.
', CAST(600000.000 AS Numeric(18, 3)), CAST(N'1947-03-10T00:00:00.000' AS DateTime), CAST(3 AS Numeric(18, 0)), 1, N'C1')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (12, N'Tình Lỡ', N'https://nhacxua.vn/wp-content/uploads/2020/05/tinh-lo0.jpg', N'Năm 1970, đạo diễn Lê Mộng Hoàng tung ra bộ phim điện ảnh tình cảm, tâm lý xã hội mang tên “Nàng”, dựa theo bộ tiểu thuyết cùng tên của nhà văn Bùi Hoàng Thư.

', CAST(15000.000 AS Numeric(18, 3)), CAST(N'1970-05-20T00:00:00.000' AS DateTime), CAST(2 AS Numeric(18, 0)), 1, N'C1')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (14, N'Tóc Em Chưa Úa Nắng Hè

', N'https://nhacxua.vn/wp-content/uploads/2021/05/phim.jpg', N'Nhạc sĩ Phạm Mạnh Cương tiết lộ rằng ông sáng tác ca khúc này vào khoảng năm 1962 trong một lần đi nghỉ hè ở phố biển Nha Trang, và tựa đề bài hát này được ông mượn từ tên một phim điện ảnh nổi tiếng của Thụy Điển từ 10 năm trước đó.

', CAST(300000.000 AS Numeric(18, 3)), CAST(N'1962-07-25T00:00:00.000' AS DateTime), CAST(5 AS Numeric(18, 0)), 1, N'C1')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (20, N'Giải Phóng Miền Nam', N'https://data.chiasenhac.com/data/cover/32/31061.jpg', N'Bài hát được sáng tác để tiếp sức cho những người lính giải phóng miền nam', CAST(120000.000 AS Numeric(18, 3)), CAST(N'1965-04-30T00:00:00.000' AS DateTime), CAST(3 AS Numeric(18, 0)), 1, N'C3')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (22, N'Nhạc Tiền Chiến vol 1', N'https://lh3.googleusercontent.com/proxy/Z5q96wjgkbtmLxu78MU0OOidq6XFpj-qjJf0K8HctbKAxFodavA7g4j7DbTVRw7VzxqhYce5YiQdmeOeQFHfZyQj62JtDE7-fgtKwpRMYjOYlxJarT8etruc9n1IpLBEi8iG6ayHM_ip_rXLlRzEVRm6Dj_T1HszWjjR7Q', N'List bài hát: 1. Thu quyến rũ - Sĩ Phú 2. Con thuyền không bến - Hà Thanh 3. Trăng mờ bên suối - Khánh Ly 4. Chiều tím - Lệ Thu 5. Tiếng sáo thiên thai - Thái Thanh 6. Giọt mưa thu - Thanh Thúy 7. Suối mơ - Lệ Thu 8. Lá đổ muôn chiều - Anh Ngọc 9. Cành hoa trắng - Thái Thanh 10. Nhắn gió chiều - Thanh Thúy 11. Cô láng giềng - Sĩ Phú 12. Ngựa phi đường dài - Ban Thăng Long', CAST(900000.000 AS Numeric(18, 3)), CAST(N'2000-05-21T00:00:00.000' AS DateTime), CAST(6 AS Numeric(18, 0)), 1, N'C3')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (30, N'Future Nostalgia', N'https://i.imgur.com/fhNf8Dx.jpg', N'Tên gọi của album mang hàm ý “hướng tới một tương lai với vô số tiềm năng trong việc khai thác những giai điệu và tâm trạng hồi tưởng của âm nhạc từ thập kỷ cũ.”', CAST(1000000.000 AS Numeric(18, 3)), CAST(N'2020-06-15T00:00:00.000' AS DateTime), CAST(7 AS Numeric(18, 0)), 1, N'C4')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (32, N'Folklore', N'https://i.imgur.com/ZZppgVI.jpg', N'Chính bối cảnh cách ly xã hội bởi COVID-19 đã khiến cho Taylor Swift có nhiều chất liệu và tập trung sáng tác hơn. Folklore được chính Taylor định nghĩa là “một dòng chảy vô tận của nhận thức”. Khác hẳn với thể loại pop thuần túy như của Lover,', CAST(1200000.000 AS Numeric(18, 3)), CAST(N'2020-07-24T00:00:00.000' AS DateTime), CAST(10 AS Numeric(18, 0)), 1, N'C4')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (33, N'A.L.C.I.A', N'https://i.imgur.com/H4rgtOa.jpg', N'Album phòng thu thứ bảy của Alicia Keys là sự trở lại sau 4 năm vắng bóng trên thị trường âm nhạc. Bắt đầu từ cuối tháng Chín năm ngoái, nữ ca sĩ đã đều đặn giới thiệu tới tận 7 ca khúc mới trong album này để quảng bá cho A.L.I.C.I.A.', CAST(800000.000 AS Numeric(18, 3)), CAST(N'2020-09-18T00:00:00.000' AS DateTime), CAST(4 AS Numeric(18, 0)), 1, N'C4')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (34, N'Love Goes', N'https://i.imgur.com/WV8Rzmg.jpg', N'Album phòng thu của nam ca sĩ người Anh Sam Smith chính là một liệu pháp tinh thần rất lớn cho những người yêu âm nhạc ở thời điểm cuối năm nay, khi sự da diết, cô đơn, sầu lắng là những gì mà phần lớn chúng ta đều cảm thấy trong bối cảnh xã hội hiện nay', CAST(800000.000 AS Numeric(18, 3)), CAST(N'2020-10-30T00:00:00.000' AS DateTime), CAST(8 AS Numeric(18, 0)), 1, N'C4')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (35, N'Disco', N'https://i.imgur.com/7gPnEnT.jpg', N'Disco', CAST(2000000.000 AS Numeric(18, 3)), CAST(N'2020-11-06T00:00:00.000' AS DateTime), CAST(12 AS Numeric(18, 0)), 1, N'C4')
INSERT [dbo].[tblProduct] ([productId], [productName], [image], [description], [price], [createDate], [quantity], [status], [categoryId]) VALUES (36, N'Madame X', N'https://file.tinnhac.com/resize/600x-/2019/06/25/20190625180335-e6e0.jpg', N'Gồm 13 ca khúc, Madame X được lấy cảm hứng từ cuộc sống xa xứ của Madonna tại Bồ Đào Nha kể từ khi chuyển đến đây sinh sống vào năm 2017.', CAST(300000.000 AS Numeric(18, 3)), CAST(N'2021-07-12T10:57:35.583' AS DateTime), CAST(9 AS Numeric(18, 0)), 1, N'C4')
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
INSERT [dbo].[tblUser] ([username], [password], [fullname], [role], [status]) VALUES (N'hieuvip', N'1582', N'Hieu', N'U', 1)
INSERT [dbo].[tblUser] ([username], [password], [fullname], [role], [status]) VALUES (N'khongaica', N'2525', N'khongaica', N'AD', 0)
INSERT [dbo].[tblUser] ([username], [password], [fullname], [role], [status]) VALUES (N'ptt2000', N'2111', N'Chung', N'U', 1)
INSERT [dbo].[tblUser] ([username], [password], [fullname], [role], [status]) VALUES (N'thanhtrung', N'2000', N'Pham Thanh Trung', N'AD', 1)
INSERT [dbo].[tblUser] ([username], [password], [fullname], [role], [status]) VALUES (N'trungphampttt@gmail.com', N'12354', N'trungphampttt', N'U', 1)
GO
ALTER TABLE [dbo].[tblHistory]  WITH CHECK ADD  CONSTRAINT [FK_tblHistory_tblProduct] FOREIGN KEY([productId])
REFERENCES [dbo].[tblProduct] ([productId])
GO
ALTER TABLE [dbo].[tblHistory] CHECK CONSTRAINT [FK_tblHistory_tblProduct]
GO
ALTER TABLE [dbo].[tblHistory]  WITH CHECK ADD  CONSTRAINT [FK_tblHistory_tblUser] FOREIGN KEY([username])
REFERENCES [dbo].[tblUser] ([username])
GO
ALTER TABLE [dbo].[tblHistory] CHECK CONSTRAINT [FK_tblHistory_tblUser]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK_tblOrder_tblUser] FOREIGN KEY([username])
REFERENCES [dbo].[tblUser] ([username])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK_tblOrder_tblUser]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblOrder] FOREIGN KEY([orderId])
REFERENCES [dbo].[tblOrder] ([orderId])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK_tblOrderDetail_tblOrder]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblProduct] FOREIGN KEY([productId])
REFERENCES [dbo].[tblProduct] ([productId])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK_tblOrderDetail_tblProduct]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[tblCategory] ([categoryId])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCategory]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE08D_Assignment_Group10] SET  READ_WRITE 
GO
