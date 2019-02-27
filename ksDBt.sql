USE [KnowledgeDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/27/2019 12:10:01 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/27/2019 12:10:01 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/27/2019 12:10:01 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/27/2019 12:10:01 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/27/2019 12:10:01 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/27/2019 12:10:01 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[AccessFailedCount] [int] NOT NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/27/2019 12:10:01 PM ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [uniqueidentifier] NOT NULL,
	[CommentText] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ContributorID] [uniqueidentifier] NOT NULL,
	[PostID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contributors]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contributors](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Contributors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[ID] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[PostID] [uniqueidentifier] NOT NULL,
	[ContributorID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [uniqueidentifier] NOT NULL,
	[Link] [nvarchar](max) NULL,
	[IsSeen] [bit] NOT NULL,
	[NotificationType] [int] NOT NULL,
	[NotifiedBy] [uniqueidentifier] NOT NULL,
	[OwnerId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifiers]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifiers](
	[Id] [uniqueidentifier] NOT NULL,
	[NotifierType] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[NotifiedBy] [uniqueidentifier] NOT NULL,
	[OwnerId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Notifiers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[PostID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ContributorID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 2/27/2019 12:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ApiLink] [nvarchar](max) NULL,
	[PostID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190226024947_InitialMigrate', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190227010725_Notifications', N'2.1.1-rtm-30846')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'2283278711992663', N'Facebook', N'e3de1fc4-3834-4032-baa7-f65ef874fc2e')
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'13832d8b-801b-470c-b7b2-ebf2edee4539', N'naingyeaung2612@gmail.com', N'NAINGYEAUNG2612@GMAIL.COM', N'naingyeaung2612@gmail.com', N'NAINGYEAUNG2612@GMAIL.COM', N'AQAAAAEAACcQAAAAEBNQnPD/0kipLOC3iKQzmxTbst4yMHq7fxFBk8+Xh7BBc2TkG6jmrLO98t9TKx2vLQ==', N'AOSZL4SVYBFMCRECWTBWUCEPS2D27GPO', N'cdaf6c91-2eed-401c-a1b7-62a8991aa11c', NULL)
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'372a1697-cc96-462d-b811-1aa6a3ff99c8', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', N'superadmin@gmail.com', N'SUPERADMIN@GMAIL.COM', N'AQAAAAEAACcQAAAAEBTL1Yew+0CxBJhmMm0fJUQqpyYsDr0SaYn/OncmtpJXHUswWKCnfI86mXaE0j+10g==', N'ST4KW6LIHKUIP5EXEP2N44M2I5HJIOXH', N'16b0d00c-bd3a-4bf7-a6d3-9348948d078e', NULL)
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'e3de1fc4-3834-4032-baa7-f65ef874fc2e', N'nyyairaung19315@gmail.com', N'NYYAIRAUNG19315@GMAIL.COM', N'nyyairaung19315@gmail.com', N'NYYAIRAUNG19315@GMAIL.COM', NULL, N'MPM3AGCPSRKXMKXLCEITHSQ726NS55NS', N'1ff0ce8d-735e-442c-abad-04bca8438c34', NULL)
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'8d2c8b2b-fb25-4d1d-bfc6-11ec9b387d95', N'Hahaa', CAST(N'2019-02-27T10:40:44.0905559' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'70dde102-ded3-4c73-86b3-189688d89a83', N'Every day', CAST(N'2019-02-27T10:39:49.2853597' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'8823fa59-b516-4afc-a1a9-47016d9698cb', N'Mingalar par', CAST(N'2019-02-27T11:39:26.1281263' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9771c95c-5929-4c1b-b321-a6bdfc08b80b', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'98d11fcf-04d7-45a2-965d-613048fb654c', N'Good Morning', CAST(N'2019-02-27T11:38:24.4614814' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'eced9b12-e76c-4730-9168-3be49a29961d')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'9e096b3c-fb30-4265-9744-7da7205def98', N'ggwp', CAST(N'2019-02-27T10:41:12.4170409' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'0bde7e40-1b66-4288-9da4-8da410f4c7d0', N'Hello Everyone', CAST(N'2019-02-27T10:41:48.3623280' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'eced9b12-e76c-4730-9168-3be49a29961d')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'bb81b9ee-920d-4269-80d4-989d328fb4c3', N'God of Empire', CAST(N'2019-02-27T10:39:06.1855295' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'672a977b-5675-4c1c-8b08-c497026f431d', N'This is the rap', CAST(N'2019-02-27T10:35:39.2207181' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'7eb57682-3f53-4ce3-9e53-c7adb253cc5e', N'hey you', CAST(N'2019-02-27T10:41:16.9999920' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'7ea3c172-f2f2-4de3-8b4a-ca8c90326124', N'Nice to meet you', CAST(N'2019-02-27T11:39:31.8661217' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9771c95c-5929-4c1b-b321-a6bdfc08b80b', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'e0e2e2dc-9305-44be-8e78-36c0c0be18ee', N'Heniken', N'131313', N'superadmin@gmail.com', N'89:98', N'f9969b69-6cd5-44fc-ada5-5bcc9d279294.jpg', N'372a1697-cc96-462d-b811-1aa6a3ff99c8', NULL)
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'8114a685-02b7-46e3-8c22-4c6f87412793', N'Ei Maung', N'09773184989', N'naingyeaung2612@gmail.com', N'60:32', N'4ca7abda-3669-4cce-954f-1658425ae1ec.jpg', N'13832d8b-801b-470c-b7b2-ebf2edee4539', NULL)
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'9771c95c-5929-4c1b-b321-a6bdfc08b80b', N'Mr.David', N'09773184989', N'nyyairaung19315@gmail.com', N'25:30', N'd04f236e-f5c4-4913-af64-01ad80bdef5e.jpg', N'e3de1fc4-3834-4032-baa7-f65ef874fc2e', NULL)
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'f3c8032a-face-4ca9-97dc-a40abff975bf', N'eced9b12-e76c-4730-9168-3be49a29961d', 0, 2, N'8114a685-02b7-46e3-8c22-4c6f87412793', N'9771c95c-5929-4c1b-b321-a6bdfc08b80b')
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'e4fcba71-33c2-4580-b0d2-c4c24d10c965', N'b6b08efb-c32f-49e9-a268-d973a038f856', 0, 2, N'9771c95c-5929-4c1b-b321-a6bdfc08b80b', N'8114a685-02b7-46e3-8c22-4c6f87412793')
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'33acdc1e-b969-4bc7-aad8-ce437b6429c8', N'b6b08efb-c32f-49e9-a268-d973a038f856', 0, 2, N'9771c95c-5929-4c1b-b321-a6bdfc08b80b', N'8114a685-02b7-46e3-8c22-4c6f87412793')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'368b6286-f925-4abf-6b3d-08d69c500314', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'cc242565-d220-406c-a79b-44f9e1ff67a7', N'Power of InvokerFig-1', N'e4ade29b-760c-4c95-9040-413f2290391c.jpg', N'eced9b12-e76c-4730-9168-3be49a29961d')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'9e3237ac-e820-4b60-930a-f57c34b4b732', N'Our Brain Tricks UsFig-1', N'e613a64b-82b0-4129-956a-7df2a7c980a3.jpg', N'b6b08efb-c32f-49e9-a268-d973a038f856')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'e752b4e9-388a-43b4-98fa-f5d185f25de4', N'Power of InvokerFig-2', N'd4f033d6-8835-41da-a35e-7f90495bc5e3.jpg', N'eced9b12-e76c-4730-9168-3be49a29961d')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'eced9b12-e76c-4730-9168-3be49a29961d', N'Power of Invoker', N'Proudly presented by Sumiya', CAST(N'2019-02-26T18:39:28.4367711' AS DateTime2), CAST(N'2019-02-26T18:39:28.4368683' AS DateTime2), N'9771c95c-5929-4c1b-b321-a6bdfc08b80b')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'b6b08efb-c32f-49e9-a268-d973a038f856', N'Our Brain Tricks Us', N'ကိုအိေမာင္ တင္ထားတဲ့ ပံုေလးေတြ႕ေတာ့ အေတြးတစ္ခုရလာတယ္။

အရပ္ရွည္တယ္ဆိုတာ ပုတဲ့သူနဲ႔ တြဲေနလို႔ ရွည္တာလား၊ တကယ္ပဲ အရပ္ရွည္တာလား ဆိုတာ သိဖို႔လိုတယ္။

ေအာက္က ပံုမွာ လိေမၼာ္ေရာင္ စက္ဝိုင္း ႏွစ္ခု အရြယ္အတူတူပါပဲ။ စက္ဝိုင္းေသးေသးေလးေတြနဲ႔ ယွဥ္ေတာ့ ႀကီးသလိုျဖစ္ေနတယ္။

ကိုယ့္ကိုယ္ကို ဘယ္စက္ဝိုင္းနဲ႔ ယွဥ္မလဲ ဆိုတာ သိပ္အေရးႀကီးပါတယ္။', CAST(N'2019-02-27T07:37:58.1793480' AS DateTime2), CAST(N'2019-02-27T07:37:58.1794088' AS DateTime2), N'8114a685-02b7-46e3-8c22-4c6f87412793')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'af5443aa-5417-48e1-97ca-08d69be341ec', NULL, N'https://www.youtube.com/embed/_p3K0MMWn4Y', N'eced9b12-e76c-4730-9168-3be49a29961d')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'fb7c60b9-69a8-458b-97cb-08d69be341ec', NULL, N'https://www.youtube.com/embed/05goVkbW08Y', N'eced9b12-e76c-4730-9168-3be49a29961d')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'fc99841c-ad0d-44d5-18e8-08d69c500313', NULL, N'https://www.youtube.com/embed/Wm0O_1Xqn5o', N'b6b08efb-c32f-49e9-a268-d973a038f856')
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
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Contributors_ContributorID] FOREIGN KEY([ContributorID])
REFERENCES [dbo].[Contributors] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Contributors_ContributorID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts_PostID]
GO
ALTER TABLE [dbo].[Contributors]  WITH CHECK ADD  CONSTRAINT [FK_Contributors_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Contributors] CHECK CONSTRAINT [FK_Contributors_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Contributors_ContributorID] FOREIGN KEY([ContributorID])
REFERENCES [dbo].[Contributors] ([ID])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Contributors_ContributorID]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Posts_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([ID])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Posts_PostID]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Contributors_NotifiedBy] FOREIGN KEY([NotifiedBy])
REFERENCES [dbo].[Contributors] ([ID])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_Contributors_NotifiedBy]
GO
ALTER TABLE [dbo].[Notifiers]  WITH CHECK ADD  CONSTRAINT [FK_Notifiers_Contributors_NotifiedBy] FOREIGN KEY([NotifiedBy])
REFERENCES [dbo].[Contributors] ([ID])
GO
ALTER TABLE [dbo].[Notifiers] CHECK CONSTRAINT [FK_Notifiers_Contributors_NotifiedBy]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Posts_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([ID])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Posts_PostID]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Contributors_ContributorID] FOREIGN KEY([ContributorID])
REFERENCES [dbo].[Contributors] ([ID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Contributors_ContributorID]
GO
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD  CONSTRAINT [FK_Videos_Posts_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([ID])
GO
ALTER TABLE [dbo].[Videos] CHECK CONSTRAINT [FK_Videos_Posts_PostID]
GO
