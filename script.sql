USE [OnlineOrders]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertisements]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertisements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](255) NOT NULL,
	[Key] [varchar](255) NOT NULL,
	[Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banner]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](255) NOT NULL,
	[Sort] [tinyint] NULL,
	[Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Summary] [varchar](255) NOT NULL,
	[Content] [text] NULL,
	[Image] [varchar](255) NOT NULL,
	[Status] [tinyint] NULL,
	[View] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Config]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](255) NULL,
	[Key] [varchar](255) NOT NULL,
	[Data] [varchar](255) NULL,
	[Link] [text] NULL,
	[Status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustId] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](255) NOT NULL,
	[Lname] [nvarchar](255) NOT NULL,
	[Dob] [date] NULL,
	[Gender] [bit] NULL,
	[Pno] [varchar](255) NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Password] [varchar](255) NULL,
	[Status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Frames]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Frames](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Frames] [varchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[Image_1] [nvarchar](50) NULL,
	[Image_2] [nvarchar](50) NULL,
	[Image_3] [nvarchar](50) NULL,
	[Image_4] [nvarchar](50) NULL,
	[Image_5] [nvarchar](50) NULL,
	[Status] [tinyint] NULL,
	[FrameTypeId] [int] NULL,
	[View] [int] NULL,
	[Note] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FrameTypes]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FrameTypes](
	[Id] [int] NOT NULL,
	[FrameTypes] [varchar](255) NOT NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_FrameTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [float] NOT NULL,
	[SizeId] [int] NULL,
	[FramesId] [int] NULL,
	[Quantity] [int] NOT NULL,
	[OrderId] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[CustId] [int] NULL,
	[OrderNote] [text] NULL,
	[TotalQuantity] [int] NOT NULL,
	[PaymentId] [int] NULL,
	[ShippingId] [int] NULL,
	[Status] [tinyint] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payments]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Image] [varchar](255) NULL DEFAULT (NULL),
	[Status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Permissions] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[Status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Size]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Size] [varchar](255) NOT NULL,
	[Price] [float] NOT NULL,
	[Status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 13/9/2021 2:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[RememberToken] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202109041902025_InitialCreate', N'OnlineOrder.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A79E22B572E92EF604F616A9939C137473C13ABBE8DB82966887588952252A9BE0A0BFEC3CF427F52F9CA144C9122FBAD88AED140B2C2C72F8CD70382487C361FEFADF9FE39F9F02DF7AC47142423AB18F4687B685A91B7A842E2776CA163FBEB37F7EFF8FEFC6175EF0647D2EE84E381DB4A4C9C47E602C3A759CC47DC0014A460171E33009176CE4868183BCD0393E3CFC977374E46080B001CBB2C61F53CA4880B30FF89C86D4C5114B917F1D7AD84F4439D4CC3254EB06053889908B27F62DF509C5B7B187E3514E6D5B673E4120C90CFB0BDB4294860C3190F3F45382672C0EE972164101F2EF9F230C740BE42758C87FBA22EFDA95C363DE1567D5B08072D38485414FC0A313A11B476EBE9686ED5277A0BD0BD0327BE6BDCE3438B1AF3C9C157D0C7D5080CCF074EAC79C78625F972CCE92E806B351D17094435EC600F72D8CBF8EAA880756E77607A52D1D8F0EF9BF036B9AFA2C8DF184E294C5C83FB0EED2B94FDC5FF1F37DF815D3C9C9D17C71F2EECD5BE49DBCFD099FBCA9F614FA0A74B50228BA8BC308C7201B5E94FDB72DA7DECE911B96CD2A6D72AD802DC1B4B0AD6BF4F401D3257B800973FCCEB62EC913F68A12615C9F288159048D589CC2E74DEAFB68EEE3B2DE69E4C9FF6FE07AFCE6ED205C6FD0235966432FF1878913C3BCFA88FDAC367920513EBD6AE3FD45905DC661C0BFEBF695D77E998569ECF2CE8446927B142F31AB4B377656C6DBC9A439D4F0665DA0EEBF69734955F3D692F20EAD33130A16DB9E0D85BC2FCBB7B3C59D45110C5E665A5C234D06A76E5623A9F58155A15999CE5157D3A1D0A5BFF34A781120E20FB01476E0025EC882C4012E7BF94B088687686F99EF5092C04AE0FD07250F0DA2C3CF01449F61378DC140670C05D18B73BB7B0829BE498339B7FBEDF11A6C68EEBF8597C865617C4179AB8DF13E84EED7306517D43B470C7F626E01C83FEF49D01D601071CE5C1727C9251833F6A62138D905E0156527C7BDE1F802B56B5764EA2312E87D116929FD5290AEFC113D85E29318C8747E4993A81FC225A1DD442D48CDA2E614ADA20AB2BEA272B06E920A4AB3A01941AB9C39D5609E5E3642C3BB7A19ECFEFB7A9B6DDEA6B5A0A2C619AC90F8DF98E2189631EF0E318663BA1A812EEBC62E9C856CF838D317DF9B324E9F919F0ECD6AADD9902D02C3CF860C76FF67432626143F128F7B251D0E400531C077A2D79FADDAE79C24D9B6A743AD9BDB66BE9D35C0345DCE92247449360B34A12F11B8A8CB0F3E9CD51EC5C87B234742A06360E8846F7950027DB365A3BAA5E7D8C70C5B676E1E1A9CA2C4459EAA46E890D743B06247D508B68A88D485FB41E109968E63DE08F1435002339550A64E0B425D1221BF554B52CB8E5B18EF7BC943AE39C711A69C61AB26BA30D70740B800251F6950DA3434762A16D76C8806AFD534E66D2EEC6ADC95B8C4566CB2C57736D8A5F0DF5EC4309B35B605E36C564917018CC1BC5D18A838AB743500F9E0B26F062A9D980C062A5CAAAD18685D633B30D0BA4A5E9D81E647D4AEE32F9D57F7CD3CEB07E5ED6FEB8DEADA816DD6F4B167A699FB9ED086410B1CABE6793EE795F889690E6720A7389F25C2D5954D8483CF30AB876C56FEAED60F759A4164236A025C195A0BA8B80654809409D543B82296D7289DF0227AC01671B74658B1F64BB0151B50B1ABD7A11542F3A5A96C9C9D4E1F65CF4A6B508CBCD361A182A3310879F1AA77BC83524C715955315D7CE13EDE70A56362301A14D4E2B91A94547466702D15A6D9AE259D43D6C725DB484B92FB64D052D199C1B5246CB45D491AA7A0875BB0918AEA5BF84093AD887494BB4D593776F22C295130760CE954E36B1445842E2BE955A2C49AE5B955D31F67FD938E821CC371134DEE51296DC98985315A62A9165883A497244ED83962688E789C67EA050A99766F352CFF05CBEAF6A90E62B10F14D4FC77DE4273795FDB6B556744605C420F03EED1646174CDF8EB9B5B3CDD0DF928D644EEA7A19F06D4EC60995BE7F777D5F679898A307624F915074AD196E2E6D655DF6960D44931D02095FECBFA03658630A9BBF03EAB0A3779A46694224055453105AD7636702647A6D760C93E62FFB16A45789979251253AA00A2A8274625B74101ABD47547ADA79F5431EB35DD11A51C932AA454D543CA6A26494DC86AC55A78068DEA29BA73507347AAE86A6D77644D1649155A53BD06B64666B9AE3BAA26D1A40AACA9EE8EBDCA3A9117D13DDEB98C2797B5B7AEFC70BBD9DE65C07899157198ADAF72875F05AA14F7C412B7F40A9828DF4B6B329EF0D6B6A63CA6B199351930CC2B4FEDF6BBBEF0345ED99B316B57DAB5C5BDE94ADF8CD7CF665FD43294039E4C52722F0F7AD2816E2C0E57ED8F6894D3564E625B851A61637F4E180E469C6034FBDD9FFA04F365BC20B846942C70C2F2340EFBF8F0E8587A87B33F6F629C24F17CCDE1D4F430A63E665BC8C8A28F28761F50ACE6476CF06E6405AA849EAFA8879F26F67FB356A7591483FFCA8A0FACABE41325BFA750711FA7D8FA43CDF71C268FBEC3CB8D52D03F5EC59388EE2ABFFAED4BDEF4C0CA96EC53EB5052F43AC35F7F28D14B9ABCE906D2ACFD7CE2F5CEB6DADB042DAA345BD67F8A30276C9067088594DF07E8E99F7D45D33E35D80851F39C6028BC4154687A2EB00E96F1A980079F2C7B2AD0AFB3FAA703EB88667C3640687F30F9D140F765A868B9C37D487360DAC69294E9B935E97AA30CCC5DEF4D4A6EF646135DCDBFEE0137688EF5662ECA2BCB5D1E6CEBD4A4260F86BD4BBB7FF17CE47D49415E39EDBBCD3CDE66B271C385D2DF2AC7780FB2E234593EBBCF24DEB6AD9922C07B9E8ED92F5F78CF8C4D6CF3BBCF0ADEB6B19902C47B6E6CBD727FF7CCD676B57FEED8D23A6FA13BCFE45593920C3739BA28725BA66E1E7287E3FF3C0423C83DCAFC81A53E35AC29ADB585E18AC4CCD49C93263356268EC257A16866DBAFAF62C36FECACA069666BC8E46CE22DD6FF46DE82A699B7213F721739C6DA0C455DDE77CB3AD6943EF59A728A6B3D6949616FF3591BAFE55F530AF1204AA9CD1EC3EDF2EBC9181E4425434E9D1E19C2EA4531EC9D95BFC908FB7742962B08FE171A29766BBB664973451761B1794B1215245284E61A33E4C1967A1633B2402E836A1E80CE5E8867413D7E0D32C7DE15BD4D599432E8320EE67E2DE0C59D8026FE591A745DE6F16DC4BF9221BA0062121EB8BFA5BFA4C4F74AB92F3531210304F72E44B8978F25E361DFE573897413D28E40427DA553748F83C807B0E496CED0235E473630BF0F7889DCE75504D004D23E1075B58FCF095AC6284804C6AA3D7C820D7BC1D3FBFF035755709F9A540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c0c4aa0c-1d7d-4869-955c-61eb27415851', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'000447de-d48c-471c-9210-dda7134f8a58', N'c0c4aa0c-1d7d-4869-955c-61eb27415851')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'000447de-d48c-471c-9210-dda7134f8a58', N'admin@gmail.com', 0, N'AAz8OfgDE1gYCrf9yhAClyhbGmpwNCudoix9qgkhxDalr705XwZXaWqLrt+VbfW1cw==', N'0c4805b5-2910-46c5-a891-ee2e286184de', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e7672449-2c86-4d93-a6df-ef216ccad12f', N'nhanbui128@gmail.com', 0, N'ACKDqlYgIHx5q37gEVNfRaLKuYdyacv3kMFRMg/zU3rFkZAKyplQ137Fjr1ySbEzuQ==', N'd4781425-dae8-487c-bacd-5b0813930dde', NULL, 0, 0, NULL, 1, 0, N'nhanbui128@gmail.com')
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Id], [Title], [Summary], [Content], [Image], [Status], [View]) VALUES (1, N'Blog_1', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab', N'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga.', N'1.jpg', 0, 2)
INSERT [dbo].[Blog] ([Id], [Title], [Summary], [Content], [Image], [Status], [View]) VALUES (4, N'Blog_2', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab', N'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga.', N'4.jpg', 0, 34)
INSERT [dbo].[Blog] ([Id], [Title], [Summary], [Content], [Image], [Status], [View]) VALUES (5, N'Blog_3', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab', N'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga.', N'5.jpg', 0, 1213)
INSERT [dbo].[Blog] ([Id], [Title], [Summary], [Content], [Image], [Status], [View]) VALUES (6, N'Blog_4', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab', N'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga.', N'6.jpg', 0, 342)
INSERT [dbo].[Blog] ([Id], [Title], [Summary], [Content], [Image], [Status], [View]) VALUES (7, N'Blog_5', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab', N'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga.', N'7.jpg', 0, 333)
INSERT [dbo].[Blog] ([Id], [Title], [Summary], [Content], [Image], [Status], [View]) VALUES (8, N'Blog_7', N'Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo', N'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque, eveniet ullam deleniti, molestiae libero quo officia minus explicabo. Quisquam enim perspiciatis quidem, voluptate aut tenetur fugit porro quia ea fuga.', N'2.jpg', 0, 2)
SET IDENTITY_INSERT [dbo].[Blog] OFF
SET IDENTITY_INSERT [dbo].[Frames] ON 

INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (19, N'khung_1', 10008, N'19.jpg', NULL, NULL, NULL, NULL, 0, 0, 23, N'New')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (21, N'khung_2', 100, N'21.jpg', NULL, NULL, NULL, NULL, 0, 1, 2, N'Old')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (22, N'khung_3', 1006, N'22.jpg', NULL, NULL, NULL, NULL, 0, 2, 19, N'New')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (23, N'khung_4', 1001, N'23.jpg', NULL, NULL, NULL, NULL, 0, 3, 4, N'Old')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (25, N'khung_5', 100, N'25.jpg', NULL, NULL, NULL, NULL, 0, 4, 10, N'Old')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (26, N'khung_6', 100, N'26.jpg', NULL, NULL, NULL, NULL, 0, 5, 4, N'Old')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (32, N'khung_7', 100, N'32.jpg', NULL, NULL, NULL, NULL, 0, 6, 9, N'New')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (36, N'khung_8', 14242, N'36.jpg', NULL, NULL, NULL, NULL, 0, 7, 23, N'New')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (39, N'khung_9', 32324, N'39.jpg', NULL, NULL, NULL, NULL, 0, 7, 45, N'Old')
INSERT [dbo].[Frames] ([Id], [Frames], [Price], [Image_1], [Image_2], [Image_3], [Image_4], [Image_5], [Status], [FrameTypeId], [View], [Note]) VALUES (41, N'khung_10', 1223, N'41.jpg', NULL, NULL, NULL, NULL, 0, 0, 12, N'New')
SET IDENTITY_INSERT [dbo].[Frames] OFF
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (0, N'binh thuong 1', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (1, N'binh thuong 2', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (2, N'binh thuong 3', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (3, N'binh thuong 4', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (4, N'cao cap 1', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (5, N'cao cap 2', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (6, N'cao cap 3', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (7, N'fake 1', 0)
INSERT [dbo].[FrameTypes] ([Id], [FrameTypes], [Status]) VALUES (8, N'fake 2', 0)
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [Name], [Image], [Status]) VALUES (1, N'Paypal', N'1.jpg', 0)
INSERT [dbo].[Payments] ([Id], [Name], [Image], [Status]) VALUES (2, N'Momo', N'2.jpg', 0)
INSERT [dbo].[Payments] ([Id], [Name], [Image], [Status]) VALUES (3, N'Master Card', N'3.jpg', 0)
INSERT [dbo].[Payments] ([Id], [Name], [Image], [Status]) VALUES (4, N'Visa', N'4.jpg', 0)
SET IDENTITY_INSERT [dbo].[Payments] OFF
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([Id], [Name], [Price], [Status]) VALUES (1, N'Alex', 100, 0)
INSERT [dbo].[Shipping] ([Id], [Name], [Price], [Status]) VALUES (2, N'Egor', 120, 0)
INSERT [dbo].[Shipping] ([Id], [Name], [Price], [Status]) VALUES (3, N'Danis', 180, 0)
INSERT [dbo].[Shipping] ([Id], [Name], [Price], [Status]) VALUES (4, N'Shasa', 180, 0)
SET IDENTITY_INSERT [dbo].[Shipping] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Id], [Size], [Price], [Status]) VALUES (1, N'30 x 40', 100, 0)
INSERT [dbo].[Size] ([Id], [Size], [Price], [Status]) VALUES (2, N'10 x 20', 100, 0)
INSERT [dbo].[Size] ([Id], [Size], [Price], [Status]) VALUES (5, N'30 x 60', 120, 0)
INSERT [dbo].[Size] ([Id], [Size], [Price], [Status]) VALUES (6, N'10 x 30', 100, 0)
SET IDENTITY_INSERT [dbo].[Size] OFF
ALTER TABLE [dbo].[Config] ADD  DEFAULT (NULL) FOR [Data]
GO
ALTER TABLE [dbo].[Config] ADD  DEFAULT (NULL) FOR [Link]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [RememberToken]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Frames]  WITH CHECK ADD  CONSTRAINT [FK_Frames_FrameTypes] FOREIGN KEY([FrameTypeId])
REFERENCES [dbo].[FrameTypes] ([Id])
GO
ALTER TABLE [dbo].[Frames] CHECK CONSTRAINT [FK_Frames_FrameTypes]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([FramesId])
REFERENCES [dbo].[Frames] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([SizeId])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustId])
REFERENCES [dbo].[Customers] ([CustId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payments] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ShippingId])
REFERENCES [dbo].[Shipping] ([Id])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
