USE [prj302_storee]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 31/10/2024 13:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [varchar](50) NOT NULL,
	[orderID] [varchar](50) NULL,
	[feedback] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderDetails]    Script Date: 31/10/2024 13:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetails](
	[orderID] [varchar](50) NOT NULL,
	[productID] [nvarchar](255) NOT NULL,
 CONSTRAINT [pk_orderDetails] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 31/10/2024 13:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [varchar](50) NOT NULL,
	[userID] [nvarchar](50) NULL,
	[address] [nvarchar](1000) NULL,
	[phone] [int] NULL,
	[status] [nvarchar](50) NULL,
	[totalPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 31/10/2024 13:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [int] NULL,
	[category] [nvarchar](255) NULL,
	[amount] [decimal](18, 0) NULL,
	[color] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[size] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 31/10/2024 13:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](200) NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wishlist]    Script Date: 31/10/2024 13:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wishlist](
	[wishlistID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [nvarchar](50) NULL,
	[productID] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[wishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'1', N'P001')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'10', N'P053')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'10', N'P281')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'10', N'W06')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'10', N'W07')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'10', N'W14')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'10', N'W15')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'2', N'P001')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'2', N'P062')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'2', N'W01')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'3', N'P062')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'4', N'P053')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'4', N'P062')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'4', N'W05')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'5', N'P062')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'6', N'P061')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'6', N'P063')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'7', N'P269')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'8', N'P062')
INSERT [dbo].[orderDetails] ([orderID], [productID]) VALUES (N'9', N'P061')
GO
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'1', N'min', N'min', 12312, N'0', 300000)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'10', N'min', N'hello', 9141241, N'0', 523)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'2', N'Min', N'MinThep', 1231533, N'0', 793)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'3', N'alo', N'alo', 123, N'0', 355)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'4', N'testing1', N'testing1', 134123, N'0', 595)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'5', N'testing1', N'testing1', 12312, N'0', 355)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'6', N'testing1', N'testing1', 123213, N'0', 752)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'7', N'testing1', N'testing1', 9999, N'0', 3565)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'8', N'testing1', N'3213', 3213, N'0', 355)
INSERT [dbo].[orders] ([id], [userID], [address], [phone], [status], [totalPrice]) VALUES (N'9', N'minthep', N'12312321', 213123, N'0', 356)
GO
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P001', N'Men’s shirt', 309, N'Shirt', CAST(13 AS Decimal(18, 0)), N'White', N'Shirt ', N'S', 1, N'productpicture/shirtt.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P034', N'Short', 45, N'Pant', CAST(25 AS Decimal(18, 0)), N'Blue', N'Pant ', N'XL', 1, N'productpicture/shortt.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P051', N'Bleu De Chanel', 299, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Black', N'EDP', N'S', 1, N'productpicture/bleuchanel.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P052', N'La Nuit De L’Homme', 207, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'EDT', N'S', 1, N'productpicture/ladenuit.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P053', N'Acqua Di Gio', 181, N'Perfume', CAST(3 AS Decimal(18, 0)), N'White', N'EDT', N'S', 1, N'productpicture/aquagio.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P054', N'Bleu De Chanel', 361, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Black', N'EDP', N'M', 1, N'productpicture/bleuchanel.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P055', N'La Nuit De L’Homme', 253, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'EDT', N'M', 1, N'productpicture/ladenuit.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P056', N'Acqua Di Gio', 265, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'EDT', N'M', 1, N'productpicture/aquagio.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P057', N'Bleu De Chanel', 456, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Black', N'EDT', N'L', 1, N'productpicture/bleuchanel.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P058', N'La Nuit De L’Homme', 379, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'EDT', N'L', 1, N'productpicture/ladenuit.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P059', N'Acqua Di Gio', 350, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'EDT', N'L', 1, N'productpicture/aquagio.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P060', N'Terre d’Hermes', 350, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'EDT', N'L', 1, N'productpicture/terrehermes.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P061', N'Apple Watch 9', 356, N'Accessory', CAST(3 AS Decimal(18, 0)), N'Yellow', N'Watch', N'L', 1, N'productpicture/apple1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P062', N'Apple Watch SE', 355, N'Accessory', CAST(0 AS Decimal(18, 0)), N'Pink', N'Watch', N'L', 1, N'productpicture/apple2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P063', N'Apple Watch Ultra', 396, N'Accessory', CAST(4 AS Decimal(18, 0)), N'Black', N'Watch', N'L', 1, N'productpicture/apple3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P064', N'Xerjoff Naxos', 99, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'EDP', N'L', 1, N'productpicture/naxos.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P070', N'Belt', 75, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Belt', N'L', 1, N'productpicture/belt1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P072', N'Cap', 55, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Hat', N'L', 1, N'productpicture/cap.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P073', N'Bucket Hat', 10, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Hat', N'L', 1, N'productpicture/bucket.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P074', N'Bucket Hat', 16, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Brown', N'Hat', N'L', 1, N'productpicture/bucket1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P075', N'Louis Vuitton LV California Dream', 1500, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'Niche', N'L', 1, N'productpicture/lv.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P076', N'Santal 33', 656, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'Niche', N'L', 1, N'productpicture/santal33.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P077', N'Killian Angels Share', 556, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'Niche', N'L', 1, N'productpicture/angelshare.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P078', N'Versace Eros', 156, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Blue', N'EDT', N'L', 1, N'productpicture/eros.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P079', N'Xerjoff Mefisto', 654, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Blue', N'Niche', N'L', 1, N'productpicture/mefisto.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P080', N'LV Bag', 2999, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Brown', N'Bag', N'L', 1, N'productpicture/LVBag.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P081', N'Balo LV', 100, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Blue', N'Bag', N'L', 1, N'productpicture/baloLV.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P083', N'Chromeheart Ring', 235, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Silver', N'Ring', N'S', 1, N'productpicture/chromeheartring1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P084', N'Chromeheart Ring', 114, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Silver', N'Ring', N'S', 1, N'productpicture/chromeheartring2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P085', N'Chromeheart Ring', 230, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Silver', N'Ring', N'S', 1, N'productpicture/chromeheartring3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P089', N'Gentle Monster Glasses', 450, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Glasses', N'M', 1, N'productpicture/gentlemonster1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P090', N'Gentle Monster Glasses', 450, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Glasses', N'M', 1, N'productpicture/gentlemonster2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P091', N'Gentle Monster Glasses', 465, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Glasses', N'M', 1, N'productpicture/gentlemonster3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P092', N'Gentle Monster Glasses', 555, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Glasses', N'M', 1, N'productpicture/gentlemonster4.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P093', N'Nike Jordan High', 1111, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Blue', N'Shoes', N'L', 1, N'productpicture/nikeblue.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P094', N'Nike Jordan', 933, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Blue', N'Shoes', N'L', 1, N'productpicture/nikejordan.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P095', N'Rolex Watch', 9656, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P096', N'Rolex Watch', 9556, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P097', N'Rolex Watch', 9456, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P098', N'Rolex Watch', 9357, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex4.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P099', N'LV Chains', 3565, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Chains', N'L', 1, N'productpicture/vongtayLV.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P100', N'Chromeheart Ring', 2356, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Silver', N'Ring', N'S', 1, N'productpicture/chromeheartring2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P101', N'Creed Aventus', 888, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'EDP', N'L', 1, N'productpicture/creed.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P161', N'Apple Watch 9', 356, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Yellow', N'Watch', N'L', 1, N'productpicture/apple1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P185', N'Chromeheart Ring', 235, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Silver', N'Ring', N'S', 1, N'productpicture/chromeheartring3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P189', N'Gentle Monster Glasses', 456, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Glasses', N'M', 1, N'productpicture/gentlemonster1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P190', N'Gentle Monster Glasses', 199, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Glasses', N'M', 1, N'productpicture/gentlemonster2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P191', N'Gentle Monster Glasses', 222, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Glasses', N'M', 1, N'productpicture/gentlemonster3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P192', N'Gentle Monster Glasses', 250, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Glasses', N'M', 1, N'productpicture/gentlemonster4.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P193', N'Nike Jordan High', 235, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Blue', N'Shoes', N'L', 1, N'productpicture/nikeblue.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P194', N'Nike Jordan', 933, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Blue', N'Shoes', N'L', 1, N'productpicture/nikejordan.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P195', N'Rolex Watch', 9657, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P196', N'Rolex Watch', 9556, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P197', N'Rolex Watch', 9456, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P198', N'Rolex Watch', 9356, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Watch', N'L', 1, N'productpicture/rolex4.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P199', N'LV Chains', 3565, N'Accessory', CAST(5 AS Decimal(18, 0)), N'White', N'Chains', N'L', 1, N'productpicture/vongtayLV.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P201', N'Creed Aventus', 888, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'EDP', N'L', 1, N'productpicture/creed.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P262', N'Apple Watch SE', 356, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Pink', N'Watch', N'L', 1, N'productpicture/apple2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P263', N'Apple Watch Ultra', 356, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Watch', N'L', 1, N'productpicture/apple3.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P264', N'Xerjoff Naxos', 999, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'EDP', N'L', 1, N'productpicture/naxos.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P269', N'Suit Pants', 3565, N'Pant', CAST(4 AS Decimal(18, 0)), N'Black', N'Pants', N'L', 1, N'productpicture/pant2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P270', N'Belt', 75, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Belt', N'L', 1, N'productpicture/belt1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P271', N'Belt', 75, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Brown', N'Belt', N'L', 1, N'productpicture/belt2.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P272', N'Cap', 55, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Hat', N'L', 1, N'productpicture/cap.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P273', N'Bucket Hat', 10, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Black', N'Hat', N'L', 1, N'productpicture/bucket.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P274', N'Bucket Hat', 100, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Brown', N'Hat', N'L', 1, N'productpicture/bucket1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P275', N'Louis Vuitton LV California Dream', 456, N'Perfume', CAST(5 AS Decimal(18, 0)), N'White', N'Niche', N'L', 1, N'productpicture/lv.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P276', N'Santal 33', 656, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'Niche', N'L', 1, N'productpicture/santal33.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P277', N'Killian Angels Share', 556, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Yellow', N'Niche', N'L', 1, N'productpicture/angelshare.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P278', N'Versace Eros', 156, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Blue', N'EDT', N'L', 1, N'productpicture/eros.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P279', N'Xerjoff Mefisto', 856, N'Perfume', CAST(5 AS Decimal(18, 0)), N'Blue', N'Niche', N'L', 1, N'productpicture/mefisto.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P280', N'LV Bag', 156, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Brown', N'Bag', N'L', 1, N'productpicture/LVBag.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P281', N'Balo LV', 135, N'Accessory', CAST(4 AS Decimal(18, 0)), N'Blue', N'Bag', N'L', 1, N'productpicture/baloLV.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'P283', N'Chromeheart Ring', 2356, N'Accessory', CAST(5 AS Decimal(18, 0)), N'Silver', N'Ring', N'S', 1, N'productpicture/chromeheartring1.png')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W01', N'Varsity Jacket', 129, N'Shirt', CAST(19 AS Decimal(18, 0)), N'Blue', N'Shirt', N'M', 1, N'productImage/1.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W02', N'Oversized Hoodie', 89, N'Shirt', CAST(10 AS Decimal(18, 0)), N'Black', N'Shirt', N'S', 1, N'productImage/2.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W03', N'Cardigan', 119, N'Shirt', CAST(1 AS Decimal(18, 0)), N'Black', N'Shirt', N'S', 1, N'productImage/3.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W04', N'Plaid Shirt', 74, N'Shirt', CAST(2 AS Decimal(18, 0)), N'Black', N'Shirt', N'S', 1, N'productImage/4.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W05', N'Striped Polo', 59, N'Shirt', CAST(2 AS Decimal(18, 0)), N'White', N'Shirt', N'S', 1, N'productImage/5.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W06', N'Denim Jacket', 139, N'Shirt', CAST(49 AS Decimal(18, 0)), N'Black', N'Shirt', N'S', 1, N'productImage/6.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W07', N'Track Pants', 69, N'Pant', CAST(9 AS Decimal(18, 0)), N'Pink', N'Pant', N'M', 1, N'productImage/7.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W08', N'Graphic Tee', 44, N'Shirt', CAST(10 AS Decimal(18, 0)), N'White', N'Tee', N'M', 1, N'productImage/8.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W09', N'Fannel Shirt', 79, N'Shirt', CAST(1 AS Decimal(18, 0)), N'Wonyoung xinh', N'Shirt', N'M', 1, N'productImage/9.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W109', N'Bomber Jacket', 169, N'Shirt', CAST(10 AS Decimal(18, 0)), N'Blue', N'Jacket', N'M', 1, N'productImage/10.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W11', N'Turtleneck Sweater', 99, N'Shirt', CAST(42 AS Decimal(18, 0)), N'White', N'Sweater', N'M', 1, N'productImage/11.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W12', N'Leather Jacket', 299, N'Shirt', CAST(3 AS Decimal(18, 0)), N'Black', N'Jacket', N'L', 1, N'productImage/12.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W13', N'Biu Ti Phun', 49, N'Shirt', CAST(1 AS Decimal(18, 0)), N'White', N'Skirt', N'L', 1, N'images/trending2.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W14', N'Luxe Leather Tote', 299, N'Accessory', CAST(9 AS Decimal(18, 0)), N'Black', N'Tote', N'XL', 1, N'images/trending1.jpg')
INSERT [dbo].[products] ([id], [name], [price], [category], [amount], [color], [type], [size], [status], [picture]) VALUES (N'W15', N'Coquette Tote Bag', 89, N'Accessory', CAST(10 AS Decimal(18, 0)), N'White', N'Tote', N'XL', 1, N'images/trending3.jpg')
GO
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'admin', N'admin', N'admin@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'alo', N'alo', N'alo@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'meo', N'meo', N'meo@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'min', N'min', N'test@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'min1', N'min1', N'testing123@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'minthep', N'minthep', N'minthep@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'testing1', N'testing1', N'testing1@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user001', N'password001', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user002', N'password002', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user003', N'password003', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user004', N'password004', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user005', N'password005', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user006', N'password006', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user007', N'password007', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user008', N'password008', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user009', N'password009', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'user010', N'password010', N'user001@gmail.com', 1)
INSERT [dbo].[users] ([username], [password], [mail], [status]) VALUES (N'vominthep', N'vominthep', N'vominthep@gmail.com', 1)
GO
SET IDENTITY_INSERT [dbo].[wishlist] ON 

INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (4, N'vominthep', N'P034')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (5, N'vominthep', N'P034')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (6, N'vominthep', N'P034')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (7, N'vominthep', N'P034')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (8, N'vominthep', N'P269')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (9, N'vominthep', N'W07')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (15, N'meo', N'W09')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (16, N'meo', N'W04')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (17, N'meo', N'W05')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (18, N'meo', N'W109')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (20, N'min', N'W02')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (22, N'min', N'W04')
INSERT [dbo].[wishlist] ([wishlistID], [userID], [productID]) VALUES (23, N'min', N'W09')
SET IDENTITY_INSERT [dbo].[wishlist] OFF
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [fr_fbOrderID] FOREIGN KEY([orderID])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [fr_fbOrderID]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [fr_orderID] FOREIGN KEY([orderID])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [fr_orderID]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [fr_productID] FOREIGN KEY([productID])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [fr_productID]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [fr_custID] FOREIGN KEY([userID])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [fr_custID]
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[users] ([username])
GO
