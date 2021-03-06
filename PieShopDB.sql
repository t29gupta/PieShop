USE [PieShopDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PieId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](100) NOT NULL,
	[AddressLine2] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](10) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](10) NULL,
	[Country] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[OrderTotal] [decimal](18, 2) NOT NULL,
	[OrderPlaced] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pies]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pies](
	[PieId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[LongDescription] [nvarchar](max) NULL,
	[AllergyInformation] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ImageThumbnailUrl] [nvarchar](max) NULL,
	[IsPieOfTheWeek] [bit] NOT NULL,
	[InStock] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Pies] PRIMARY KEY CLUSTERED 
(
	[PieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 27-09-2018 22:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
	[ShoppingCartItemId] [int] IDENTITY(1,1) NOT NULL,
	[PieId] [int] NULL,
	[Amount] [int] NOT NULL,
	[ShoppingCartId] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
	[ShoppingCartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180926120314_InitialCreate', N'2.1.3-rtm-32065')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180926131617_Initial', N'2.1.3-rtm-32065')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180927123010_Identity', N'2.1.3-rtm-32065')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'310e2887-92be-4d9a-9b83-358bbf599dd8', N'testuser1', N'TESTUSER1', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPgpmVXNMnOKb9xKuT7/CzJnMeTSzbImRz8Z6r+OZnLitd8hwa3jhbzshvojXbjFhw==', N'4DSZTWVOU7OEOUTCE26L3UNCGEYS6M2D', N'75054649-b540-48b7-a5a8-6d6bea7bbcd0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f10e71b5-2443-4eea-832c-3df22c96b824', N'testuser', N'TESTUSER', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEBn1c0ScAUpZxTTA6HkEdSkOxaEXlJdSwPmkfYcRNAzTJp5qPrrrTrxUpQVjoamIOw==', N'LD4EBODEDTGLC6S4JBWXNVPZCOVNJ7CP', N'7f94bb68-51a8-4655-93d3-35dcef3c3457', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Description]) VALUES (1, N'Fruit pies', NULL)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Description]) VALUES (2, N'Cheese cakes', NULL)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Description]) VALUES (3, N'Seasonal pies', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [PieId], [Amount], [Price]) VALUES (1, 1, 1, 1, CAST(12.95 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [FirstName], [LastName], [AddressLine1], [AddressLine2], [ZipCode], [City], [State], [Country], [PhoneNumber], [Email], [OrderTotal], [OrderPlaced]) VALUES (1, N'Tushar', N'Gupta', N'B 74 Mansarover Park Shahdara (near mansarover park post office)', NULL, N'110032', N'delhi', N'new delhi', N'India', N'09871930253', N't29gupta@yahoo.c', CAST(0.00 AS Decimal(18, 2)), CAST(N'2018-09-27 16:21:37.7191170' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Pies] ON 

INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (1, N'Apple Pie', N'Our famous apple pies!', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(12.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/applepie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/applepiesmall.jpg', 1, 1, 1)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (2, N'Cherry Pie', N'A summer classic!', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(15.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/cherrypie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/cherrypiesmall.jpg', 0, 1, 1)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (3, N'Peach Pie', N'Sweet as peach', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(15.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/peachpie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/peachpiesmall.jpg', 0, 0, 1)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (4, N'Rhubarb Pie', N'My God, so sweet!', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(15.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/rhubarbpie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/rhubarbpiesmall.jpg', 1, 1, 1)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (5, N'Strawberry Pie', N'Our delicious strawberry pie!', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(15.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/strawberrypie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/strawberrypiesmall.jpg', 0, 1, 1)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (6, N'Blueberry Cheese Cake', N'You''ll love it!', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(18.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/blueberrycheesecake.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/blueberrycheesecakesmall.jpg', 0, 1, 2)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (7, N'Cheese Cake', N'Plain cheese cake. Plain pleasure.', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(18.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/cheesecake.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/cheesecakesmall.jpg', 0, 1, 2)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (8, N'Strawberry Cheese Cake', N'You''ll love it!', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(18.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/strawberrycheesecake.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/strawberrycheesecakesmall.jpg', 0, 0, 2)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (9, N'Christmas Apple Pie', N'Happy holidays with this pie!', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(13.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/christmasapplepie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/christmasapplepiesmall.jpg', 0, 1, 3)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (10, N'Cranberry Pie', N'A Christmas favorite', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(17.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/cranberrypie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/cranberrypiesmall.jpg', 0, 1, 3)
INSERT [dbo].[Pies] ([PieId], [Name], [ShortDescription], [LongDescription], [AllergyInformation], [Price], [ImageUrl], [ImageThumbnailUrl], [IsPieOfTheWeek], [InStock], [CategoryId]) VALUES (11, N'Pumpkin Pie', N'Our Halloween favorite', N'Icing carrot cake jelly-o cheesecake. Sweet roll marzipan marshmallow toffee brownie brownie candy tootsie roll. Chocolate cake gingerbread tootsie roll oat cake pie chocolate bar cookie dragée brownie. Lollipop cotton candy cake bear claw oat cake. Dragée candy canes dessert tart. Marzipan dragée gummies lollipop jujubes chocolate bar candy canes. Icing gingerbread chupa chups cotton candy cookie sweet icing bonbon gummies. Gummies lollipop brownie biscuit danish chocolate cake. Danish powder cookie macaroon chocolate donut tart. Carrot cake dragée croissant lemon drops liquorice lemon drops cookie lollipop toffee. Carrot cake carrot cake liquorice sugar plum topping bonbon pie muffin jujubes. Jelly pastry wafer tart caramels bear claw. Tiramisu tart pie cake danish lemon drops. Brownie cupcake dragée gummies.', N'', CAST(12.95 AS Decimal(18, 2)), N'https://gillcleerenpluralsight.blob.core.windows.net/files/pumpkinpie.jpg', N'https://gillcleerenpluralsight.blob.core.windows.net/files/pumpkinpiesmall.jpg', 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Pies] OFF
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] ON 

INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (1, 6, 1, N'd2a94866-7572-451d-9053-4c96897bff47')
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (2, 1, 1, N'8e78619d-8003-4cc8-be32-240443f57efe')
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (3, 4, 1, N'8e78619d-8003-4cc8-be32-240443f57efe')
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (4, 1, 1, N'92ef3611-0215-4826-985a-982efc026faf')
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (5, 4, 1, N'd1e1aec2-e146-4a0b-a9c7-d8fc15ccf7b6')
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (6, 1, 1, N'97d8611f-169e-432a-bd07-2d7348cbde82')
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (1007, 1, 1, N'cb13d91f-fdfd-413c-b54e-49305c089cfd')
INSERT [dbo].[ShoppingCartItems] ([ShoppingCartItemId], [PieId], [Amount], [ShoppingCartId]) VALUES (2007, 1, 1, N'9d8961a8-7244-4201-a046-ccfab43a3b22')
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Pies_PieId] FOREIGN KEY([PieId])
REFERENCES [dbo].[Pies] ([PieId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Pies_PieId]
GO
ALTER TABLE [dbo].[Pies]  WITH CHECK ADD  CONSTRAINT [FK_Pies_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pies] CHECK CONSTRAINT [FK_Pies_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_Pies_PieId] FOREIGN KEY([PieId])
REFERENCES [dbo].[Pies] ([PieId])
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_Pies_PieId]
GO
