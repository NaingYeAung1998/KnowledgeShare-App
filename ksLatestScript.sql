USE [KnowledgeDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Contributors]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Likes]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Notifications]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Notifiers]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Photos]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Posts]    Script Date: 2/28/2019 10:55:45 PM ******/
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
/****** Object:  Table [dbo].[Videos]    Script Date: 2/28/2019 10:55:45 PM ******/
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
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'2283278711992663', N'Facebook', N'c960fc79-a330-4075-9ec5-0294c9d1a7fd')
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'8b0d7443-853c-42ee-8299-13a3f236bec2', N'eimaung@gmail.com', N'EIMAUNG@GMAIL.COM', N'eimaung@gmail.com', N'EIMAUNG@GMAIL.COM', N'AQAAAAEAACcQAAAAEHmNHJVTFMh+OsO7Ovm9Sl3m0hrm1eRuzWJtnn6NNrlBQrTbdWtj0jHCfBeBuI1tbQ==', N'IANJXUELZNRW3WGNKQMOEDO3AOF4IEZH', N'dda6e683-ca17-49d2-9c92-c8e76ad94df9', NULL)
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'bd86595a-ee76-450e-9790-7a6a35082baa', N'aungpyae@gmail.com', N'AUNGPYAE@GMAIL.COM', N'aungpyae@gmail.com', N'AUNGPYAE@GMAIL.COM', N'AQAAAAEAACcQAAAAEGG2IZAUmQj7YfWGnrmAi28QSW4nyvJUpQolc//I/grRcBXPvwooUU9enRwxql0uAA==', N'PNCT6DKRELJ4G37YBPXW6GTRCYFKPBS7', N'55ec31d0-d9b2-481d-ac9b-1ad98187f337', NULL)
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'c960fc79-a330-4075-9ec5-0294c9d1a7fd', N'nyyairaung19315@gmail.com', N'NYYAIRAUNG19315@GMAIL.COM', N'nyyairaung19315@gmail.com', N'NYYAIRAUNG19315@GMAIL.COM', NULL, N'5Q2P67OVB3H5MQARFJWKUXF5S5VHBBCJ', N'764d523e-0d0f-44bf-b0ab-1b5386ad214b', NULL)
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'cbd07c37-6a1d-41b2-bba3-2c4bbb024fa3', N'soethiha@gmail.com', N'SOETHIHA@GMAIL.COM', N'soethiha@gmail.com', N'SOETHIHA@GMAIL.COM', N'AQAAAAEAACcQAAAAEN1e4lc9gwCydzFIASGSCKWxVLZ7vy3nShyONVfSe9ik/wcETD1h0Ij4J0vt6AhMUQ==', N'P7GXMMTMGTEUAUATHRAX65YIYEU6DGVZ', N'99ed6749-a4f8-4246-8061-0a76498252a5', NULL)
INSERT [dbo].[AspNetUsers] ([AccessFailedCount], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [PhoneNumberConfirmed], [TwoFactorEnabled], [Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber]) VALUES (0, 0, 1, NULL, 0, 0, N'f2bd2065-70a6-4781-86a0-5ce62989eabd', N'aungnaingoo@gmail.com', N'AUNGNAINGOO@GMAIL.COM', N'aungnaingoo@gmail.com', N'AUNGNAINGOO@GMAIL.COM', N'AQAAAAEAACcQAAAAEGS88y+a7kP4t5T8Uqp1YbVVl93IfSxBTsif0nT65j8AYujBkBshs3tKUXzTU7ECUw==', N'4QUEN3R4DGP5SGWA4RE6TCDFGHLJMRG5', N'a2696bc3-376a-4d1c-878a-3b9b08a68f21', NULL)
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'5fd5750b-1018-4562-aa01-18260c5b0668', N'Thanks for the information, sir', CAST(N'2019-02-28T19:29:53.8645340' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'dcfc1c41-6c5d-45f0-b71d-054b91fef7a0')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'96c11007-417b-46eb-bb8f-23523f2d97d9', N'Glad it helps you', CAST(N'2019-02-28T22:31:01.7650368' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'cafb0f6d-4168-45fd-b644-3abb00c58026', N'Getting famous recently!', CAST(N'2019-02-28T22:35:29.0536688' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b', N'8d0e8325-cd3e-42ca-8435-e76e4381a084')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'd5a08f76-8082-4d9d-8f44-6fe04a24bb75', N'What a great topic. Very knowledgeable!', CAST(N'2019-02-28T19:30:38.5897860' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'5360a8f9-5d6c-4a9a-910f-76eeaed69968', N'One of the best frameworks', CAST(N'2019-02-28T22:34:48.4839634' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b', N'af601155-1c50-4421-9928-efb5e30c9f54')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'd746bf38-299e-4f02-98cd-88bd43a4d317', N'Nice course for React !', CAST(N'2019-02-28T22:32:03.1930984' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227', N'a85565ff-57d0-4474-a449-4be24474ba08')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'8b44a8fe-0ec1-4373-b3b3-baf232392a63', N'That''s the aim.', CAST(N'2019-02-28T22:36:27.2093398' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'60ec960c-4bd1-44ae-a531-6b9e11428046')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'3fd42f54-c565-4ae6-a702-c29de0758eb3', N'This would help us to organize more', CAST(N'2019-02-28T22:32:40.0693903' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227', N'60ec960c-4bd1-44ae-a531-6b9e11428046')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'e3bea69a-e37f-467c-bca2-e24702bfcf58', N'Yeah useful one for me', CAST(N'2019-02-28T22:35:58.9081854' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'af601155-1c50-4421-9928-efb5e30c9f54')
INSERT [dbo].[Comments] ([ID], [CommentText], [CreatedOn], [ModifiedOn], [ContributorID], [PostID]) VALUES (N'0b8c3d93-111c-4b84-870d-fa2417d652e1', N'Thanks for your feedback', CAST(N'2019-02-28T22:33:20.3989220' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b', N'a85565ff-57d0-4474-a449-4be24474ba08')
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'b2409176-e966-4095-bd04-246bbf197c9b', N'Aung Naing Oo', N'09795405512', N'aungnaingoo@gmail.com', N'17.89:91.34', N'4f20ee56-5b4a-43e4-a427-0abe3bfd2285.jpg', N'f2bd2065-70a6-4781-86a0-5ce62989eabd', NULL)
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'9c66edd6-e40d-4c38-a193-26053140d95b', N'Ei Maung', N'099436743422', N'eimaung@gmail.com', N'60:25', N'bc2c213b-bc62-4730-8ccb-1971ffd1760d.jpg', N'8b0d7443-853c-42ee-8299-13a3f236bec2', NULL)
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'13cc3292-b463-49b2-af95-5495c0798227', N'Soe Thiha Naung', N'09782739367', N'soethiha@gmail.com', N'17.132582:	96.141762', N'03b147fa-fa35-4dea-8a4a-4724abfac007.jpg', N'cbd07c37-6a1d-41b2-bba3-2c4bbb024fa3', NULL)
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'ff19b200-db46-427a-88c9-a2d6295203c4', NULL, NULL, NULL, NULL, NULL, N'c960fc79-a330-4075-9ec5-0294c9d1a7fd', NULL)
INSERT [dbo].[Contributors] ([ID], [Name], [Phone], [Email], [Address], [Avatar], [CreatedBy], [UserId]) VALUES (N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'Aung Pyae Phyo', N'09726354896', N'aungpyae@gmail.com', N'17:92', N'38917830-e09a-4847-8ad5-1bab3931f261.jpg', N'bd86595a-ee76-450e-9790-7a6a35082baa', NULL)
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'b292f934-8ae9-46c3-8b9a-0e24c06d28b5', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40', 0, 2, N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'13cc3292-b463-49b2-af95-5495c0798227')
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'bd4090e6-f899-48d5-bb91-11849fa85487', N'8d0e8325-cd3e-42ca-8435-e76e4381a084', 0, 2, N'9c66edd6-e40d-4c38-a193-26053140d95b', N'13cc3292-b463-49b2-af95-5495c0798227')
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'c896c881-fe10-48c9-b3cf-1edfd0fb3fc3', N'60ec960c-4bd1-44ae-a531-6b9e11428046', 0, 2, N'13cc3292-b463-49b2-af95-5495c0798227', N'eccc4a78-bf6e-4843-b13e-e4dbe7870609')
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'7bad24c6-e9aa-455c-991f-817ba95c1bf1', N'af601155-1c50-4421-9928-efb5e30c9f54', 0, 2, N'9c66edd6-e40d-4c38-a193-26053140d95b', N'eccc4a78-bf6e-4843-b13e-e4dbe7870609')
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'a0f5bee2-fbd3-4774-98ad-82b74da1ca61', N'a85565ff-57d0-4474-a449-4be24474ba08', 0, 2, N'13cc3292-b463-49b2-af95-5495c0798227', N'9c66edd6-e40d-4c38-a193-26053140d95b')
INSERT [dbo].[Notifications] ([Id], [Link], [IsSeen], [NotificationType], [NotifiedBy], [OwnerId]) VALUES (N'25ab110a-b802-40ff-8bb7-c18d515fd5dc', N'dcfc1c41-6c5d-45f0-b71d-054b91fef7a0', 0, 2, N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'13cc3292-b463-49b2-af95-5495c0798227')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'436ff0a6-50d9-41a0-5854-08d69ca38185', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'b21ba1e8-4a7d-4026-3735-08d69d75ddeb', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b', N'cda867de-8ce1-46d3-bb94-ba44864d51f0')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'024ed43f-a30f-490d-3736-08d69d75ddeb', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b', N'41e96cdd-a9d7-4228-a69c-8b078c8593d9')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'd6c7c450-42a4-490c-3737-08d69d75ddeb', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227', N'dcfc1c41-6c5d-45f0-b71d-054b91fef7a0')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'ec481b76-a0fc-4ede-3738-08d69d75ddeb', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b', N'7bb4e8d4-4e57-4dc9-8636-c5b261e954e4')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'3fcb6cf2-b071-4ad5-3739-08d69d75ddeb', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'60ec960c-4bd1-44ae-a531-6b9e11428046')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'33776620-f43b-446e-373a-08d69d75ddeb', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'50a62d4f-4d34-48f8-bf07-55dbff1e4334')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'a4df7779-6b83-4cd3-fee7-08d69d94a739', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b', N'a85565ff-57d0-4474-a449-4be24474ba08')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'7895029a-860a-4902-fee8-08d69d94a739', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609', N'af601155-1c50-4421-9928-efb5e30c9f54')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'6db101e9-daae-4e8e-fee9-08d69d94a739', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227', N'8d0e8325-cd3e-42ca-8435-e76e4381a084')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'753eb7ef-bbaa-438e-ac4b-08d69d985f09', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'b2409176-e966-4095-bd04-246bbf197c9b', N'86a5c3e8-5999-4f8d-8608-ab7fa2c02a37')
INSERT [dbo].[Notifiers] ([Id], [NotifierType], [CreatedOn], [ModifiedOn], [NotifiedBy], [OwnerId]) VALUES (N'9bc1a29f-37f5-42a4-ac4c-08d69d985f09', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'b2409176-e966-4095-bd04-246bbf197c9b', N'a76a0f7a-98bf-4704-9c6f-e5e6d172e020')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'6a067325-fc95-4a84-a277-0b1688782cb9', N'Native PerformanceFig-2', N'28fbcb55-09dd-4b0a-9ac3-4272a34e62d4.jpg', N'cda867de-8ce1-46d3-bb94-ba44864d51f0')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'fcb4b923-826d-47a3-ac08-148a7a4213a2', N'Native PerformanceFig-1', N'9af1214d-2f5a-46cb-bd22-872e038fa068.jpg', N'cda867de-8ce1-46d3-bb94-ba44864d51f0')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'd7f939c2-245a-4871-9457-38550ae38600', N'Angular The JS FrameworkFig-1', N'abbeade3-c9ff-4cb2-9311-815808810050.jpg', N'af601155-1c50-4421-9928-efb5e30c9f54')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'ede6c1d4-2211-4887-80e2-648fdd858504', N'Vue For Your Front EndFig-1', N'dbe7a867-34d9-4757-a143-164c39712959.jpg', N'8d0e8325-cd3e-42ca-8435-e76e4381a084')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'3f4b73db-faa9-4c26-a93a-7c65c2699229', N'Blockchain technology in Real WorldFig-1', N'8778fdb2-d619-4715-b5f0-ea8b023e8fd4.jpg', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'46349ad2-8d21-48a7-b67a-896c5e62372b', N'Bird Mode (Google Satellite)Fig-1', N'6c67a4a4-11e7-4783-a81e-06db1aa7e213.jpg', N'7bb4e8d4-4e57-4dc9-8636-c5b261e954e4')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'e6b2ff0d-a102-437c-b0a3-8e94025fcc66', N'Blockchain technology in Real WorldFig-2', N'3a732ccd-9c4a-43d9-a424-d55fb8d08ba4.jpg', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'72eac776-f9a9-4f3b-ba7a-9db89e0779ce', N'Introducing AndroidFig-1', N'7403598f-25af-4c15-84e6-e4992a821949.jpg', N'50a62d4f-4d34-48f8-bf07-55dbff1e4334')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'7f8ff84c-79f8-49d4-b88c-b7f0a72a1e7e', N'Imagine The SolutionFig-1', N'1b0a14f5-03cd-4b5e-9bd5-928ec5d999e8.jpg', N'60ec960c-4bd1-44ae-a531-6b9e11428046')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'56664046-71ab-498c-85c5-c780f6444abe', N'Introduction To ReactFig-1', N'7b5424a8-a8aa-43bc-8274-784e200fbaf0.jpg', N'a85565ff-57d0-4474-a449-4be24474ba08')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'47501cd5-236a-4359-be55-c8a319c82258', N'Google AIFig-1', N'a6ce47ec-20e9-443b-9997-eee5a3370e0c.jpg', N'86a5c3e8-5999-4f8d-8608-ab7fa2c02a37')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'ce7614db-331d-47bd-b4b1-cd9384c20da1', N'WHY CHOOSE KBZ IBANKINGFig-1', N'75328eed-f2de-4d03-abdd-9b6536d6e7b3.jpg', N'dcfc1c41-6c5d-45f0-b71d-054b91fef7a0')
INSERT [dbo].[Photos] ([ID], [Name], [Link], [PostID]) VALUES (N'4145980b-13a6-48ba-9afa-e6d33563b42a', N'Go LanguageFig-1', N'6a6094be-10b7-4cb4-a82f-d6a765f610f9.jpg', N'a76a0f7a-98bf-4704-9c6f-e5e6d172e020')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'dcfc1c41-6c5d-45f0-b71d-054b91fef7a0', N'WHY CHOOSE KBZ IBANKING', N'KBZ Online Banking offers a great way for viewing your account balances & transactions, transferring money, and paying bills from the comfort of your home and office. It’s simple, secure, and convenient to use anytime anywhere, giving you complete control over your finances.', CAST(N'2019-02-28T18:58:48.5729820' AS DateTime2), CAST(N'2019-02-28T18:58:48.5729824' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'7afbffa3-2015-4358-b7ff-2a8c9162bc40', N'Blockchain technology in Real World', N'ဒီလ ေဖေဖာ္ဝါရီကေန စၿပီး 𝗺𝗺𝗗𝗦 ရဲ႕ ပုံမွန္𝗧𝗲𝗮𝗺 𝗦𝗵𝗮𝗿𝗶𝗻𝗴 𝗦𝗲𝘀𝘀𝗶𝗼𝗻 ကို ပုံစံ အသစ္နဲ႔ present လုပ္ေတာ့မွာပါ။
ယခင္ Team member တစ္ေယာက္ခ်င္းစီ ကိုယ္ႀကိဳက္ႏွစ္သက္ရာ topic ကို present လုပ္တဲ့ ပုံစံကေန လတစ္လ ျခင္းအတြက္ သတ္မွတ္ထားတဲ့ Topic ေအာက္မွာဘဲ group အလိုက္ present လုပ္မယ့္ပုံစံမ်ိဳးကို ေျပာင္းလိုက္ပါၿပီ။
ဒီ လ အတြက္ ေခါင္းစဥ္ကေတာ့ "𝗕𝗹𝗼𝗰𝗸𝗰𝗵𝗮𝗶𝗻 " ကို ေ႐ြးခ်ယ္ထားပါတယ္။

==== 𝗕𝗹𝗼𝗰𝗸𝗰𝗵𝗮𝗶𝗻 ဆိုတာ=====
𝗕𝗹𝗼𝗰𝗸𝗰𝗵𝗮𝗶𝗻 ဆိုတာကို အရွင္းဆုံးပုံစံနဲ႔ generalize လုပ္ရမယ္ ဆိုရင္ေတာ့ “တစ္ေယာက္နဲ႔ တစ္ေယာက္ၾကားက transaction (လႊဲေျပာင္းေပးအပ္မႈ) ေတြ contract (သေဘာတူညီမႈ) ေတြကို သိမ္းဆည္းပုံ Protocol တစ္ခု” လို႔ သတ္မွတ္လိုပါတယ္ ။

"Harvard Business Review" မွာ ပါဝင္တဲ့ “The Truth About Blockchain” ဆိုတဲ့ article ထဲမွာေတာ့ "an open, distributed ledger that can record transactions between two parties efficiently and in a verifiable and permanent way” လို႔ ဆိုထားပါတယ္ ။

သေဘာကေတာ့ "ႏွစ္ဦးႏွစ္ဖက္ၾကားက ေငြေၾကးဆိုင္ရာပဲ ျဖစ္ျဖစ္ ၊ အျခား လႊဲေျပာင္းမႈ တစ္ခုခုကိုပဲ ျဖစ္ျဖစ္ မွတ္သား သိမ္းဆည္းတဲ့အခါမွာ ေနရာတစ္ေနရာ (ဥပမာ central server တစ္ခု) သတ္မွတ္ၿပီး သိမ္းဆည္းျခင္းမ်ိဳး မဟုတ္ဘဲ ပါဝင္ဆက္စပ္ေနတဲ့ အသုံးျပဳသူ အမ်ားၾကားမွာ အခ်က္အလက္ကို ခြဲေဝ ျဖန႔္က်က္ၿပီး သိမ္းဆည္းျခင္း” မ်ိဳး ျဖစ္ပါတယ္ ။

==== အျမင္သာဆုံး အားသာခ်က္ ====
𝗕𝗹𝗼𝗰𝗸𝗰𝗵𝗮𝗶𝗻 နည္းပညာမွာ ထိုသိမ္းဆည္းထားတဲ့ အခ်က္အလက္ေတြကို အျခားမလိုလားအပ္တဲ့ အေျပာင္းအလဲေတြ ဝင္ေရာက္လုပ္ကိုင္မႈ ရွိမရွိကို အလြယ္တကူ စစ္ေဆး အတည္ျပဳႏိုင္မွာျဖစ္ပါတယ္ ။

ဒါအျပင္ သိမ္းဆည္းထားတဲ့ အခ်က္အလက္ေတြကို ျပင္ဆင္လိုတဲ့ အခါမွာလဲ လက္ခံသိမ္းဆည္းေပးထားတဲ့ အသုံးျပဳသူ အမ်ားစုရဲ႕ အတည္ျပဳခ်က္မရဘဲ ျပင္ဆင္ႏိုင္ျခင္း ရွိမွာ မဟုတ္ပါဘူး ။

ေနာက္ထပ္ အျမင္သာဆုံးအားသာခ်က္ တစ္ခုကေတာ့ 𝗕𝗹𝗼𝗰𝗸𝗰𝗵𝗮𝗶𝗻 မွာ သိမ္းဆည္းထားတဲ့ transaction ေတြနဲ႔ အဲဒီ transaction ေတြရဲ႕ value ေတြကို အဲဒီ 𝗕𝗹𝗼𝗰𝗸𝗰𝗵𝗮𝗶𝗻 မွာ ပါဝင္တဲ့ အသုံးျပဳသူေတြ အားလုံးက ျမင္ေတြ႕လိုပါက ျမင္ေတြ႕ႏိုင္ျခင္းပဲ ျဖစ္ပါတယ္ ။

Blockchain ကိုု “ဘယ္ေနရာေတြမွာ အသံုုးဝင္နိုုင္မယ္” ဆိုုတာနဲ့ “လက္ရွိဘယ္ေနရာေတြမွာ သံုုးေနျကတယ္” ဆိုုတာကိုုလဲ ေရွ့အပတ္ေတြမွာ ထည့္သြင္း share ေပးသြားပါဦးမယ္ ။
#TeamSharingThursday', CAST(N'2019-02-27T17:35:38.3817307' AS DateTime2), CAST(N'2019-02-27T17:35:38.3817947' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'a85565ff-57d0-4474-a449-4be24474ba08', N'Introduction To React', N'React makes it painless to create interactive UIs. Design simple views for each state in your application, and React will efficiently update and render just the right components when your data changes. Build encapsulated components that manage their own state, then compose them to make complex UIs. We don’t make assumptions about the rest of your technology stack, so you can develop new features in React without rewriting existing code.', CAST(N'2019-02-28T22:21:50.5448633' AS DateTime2), CAST(N'2019-02-28T22:21:50.5449586' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'50a62d4f-4d34-48f8-bf07-55dbff1e4334', N'Introducing Android', N'Android is a mobile operating system developed by Google. It is based on a modified version of the Linux kernel and other open source software, and is designed primarily for touchscreen mobile devices such as smartphones and tablets. In addition, Google has further developed Android TV for televisions, Android Auto for cars, and Wear OS for wrist watches, each with a specialized user interface. Variants of Android are also used on game consoles, digital cameras, PCs and other electronics.

Initially developed by Android Inc., which Google bought in 2005, Android was unveiled in 2007, with the first commercial Android device launched in September 2008. The operating system has since gone through multiple major releases, with the current version being 9 "Pie", released in August 2018. The core Android source code is known as Android Open Source Project (AOSP), and is primarily licensed under the Apache License.', CAST(N'2019-02-28T19:27:47.4620885' AS DateTime2), CAST(N'2019-02-28T19:27:47.4620889' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'60ec960c-4bd1-44ae-a531-6b9e11428046', N'Imagine The Solution', N'ဒီအပတ္ က်ြန္ေတာ္တိုု့ mmDS ရဲ႕ #ImagineTheSolution က႑မွာ Event Organizer ေတြနဲ့ Event တစ္ခုုခုုကိုု သြားမဲ့ လူငယ္ေတြ ျကံုုေတြ့ရေလ့ရွိတဲ့ အခက္အခဲေတြနဲ့ ပတ္သတ္တဲ့ အပိုုင္းကိုု ေရြးခ်ယ္ထားျပီး “ဘယ္လိုုဆိုု ေျဖရွင္းနိုုင္မယ္” ဆိုုတာကိုု က်ြန္ေတာ္တိုု့ စဥ္းစားမိသေလာက္ တင္ျပသြားမွာ ျဖစ္ပါတယ္ ။

ရည္႐ြယ္ခ်က္ကေတာ့.....
လက္ရွိပြဲစီစဥ္သူ Organizer ေတြ ၊ Event တစ္ခုု ျပဳလုုပ္လိုုတဲ့ Brand / Corporate ေတြ နဲ့ အဲဒီ Event ေတြကိုု ဖိတ္ျကားခံရတဲ့ နယ္ပယ္အသီးသီးက က်ြမ္းက်င္သူေတြ ၊ စိတ္ဝင္စားသူ လူငယ္ေတြအတြက္ အစစအရာရာ ပိုုမိုု အဆင္ေျပလာေစမဲ့ Digital Solutions တစ္ခုုကိုု စိတ္ကူးထဲမွာ တည္ေဆာက္ျကည့္တာ ဆိုုပါေတာ့ ။

ကဲ အဲဒီေတာ့ လက္ရွိျဖစ္ေနတဲ့ ျပသနာေတြကိုု အရင္ စျကည့္ျကရေအာင္ .. 
ပြဲ တစ္ခု စစီစဥ္မယ္ဆိုၾကပါဆို႔ ။

>>>>>>>> 📝ဘယ္ဟာက အခက္ခဲဆုံးအစိတ္အပိုင္းျဖစ္မလဲ?။
ကိုယ့္အျမင္ကေတာ့
၁) ပထမဆုံး အေနနဲ႔ ကိုယ္စီစဥ္မယ့္ ပြဲႏွင့္ကိုက္ညီေသာ လူေတြ ပြဲေန႔မွာေရာက္လာေစဖို႔ က သိပ္ကို အေရးႀကီးတဲ့အခ်က္ပါ။ဒါမွလည္း ပြဲရဲ႕ ေပးခ်င္တဲ့ Message က ကိုယ္ Target ထားထားတဲ့ audience ဆီကိုေရာက္တာမ်ိဳးျဖစ္မွာပါ။
၂) ေနာက္ၿပီး ပြဲရွိေၾကာင္းကိုလည္း လူအမ်ားသိၿပီး သတ္မွတ္ထားတဲ့ေန႔မွာ ေမွ်ာ္မွန္းထားတဲ့ လူဦးေရ ေရာက္လာေအာင္ စီစဥ္ထားႏိုင္ဖို႔လည္းလိုပါတယ္။နည္းရင္လည္း အဆင္မေျပသလို မ်ားရင္လည္း စီစဥ္ထားတဲ့ ေနရာအက်ယ္ အဝန္းေပၚမူတည္ၿပီး အခက္အခဲျဖစ္ႏိုင္တာေၾကာင့္ ပါ။
၃) ေမွ်ာ္မွန္းထားတဲ့လူဦးေရ နဲ႔ ကိုယ့္မွာရွိတဲ့ Budget ကို ခ်ိန္ ၿပီး ကိုယ္ စီစဥ္မယ့္ပြဲအတြက္ သင့္ေလ်ာ္မယ့္ ေနရာ တစ္ခု ရဖို႔ ပါ။
၄) ေအာင္ျမင္တဲ့ ပြဲတစ္ခုမွာ Sponser ကလည္း အေရးႀကီးလွပါတယ္။
ေနာက္က ပံ့ပိုးတဲ့သူရွိမွလည္း Event Organizer ေတြအတြက္ အဆင္ေျပတာပါ။
၅) တကယ္လို႔သာ Local မွာ ကိုယ္စီစဥ္မယ့္ ပြဲပုံစံမ်ိဳး ရွိမယ္ဆို ကိုယ့္ ပြဲမွာ creative ျဖစ္တဲ့အခ်က္ပါဖို႔ကို စဥ္းစားရပါေတာ့မယ္။
၆) ေနာက္တစ္ခုကေတာ့ ပြဲအျပင္အဆင္အတြက္ လိုအပ္တဲ့ Supplierရွာရတာမ်ိဳးပါ။ 
၇) ဒုတိယအႀကိမ္ စီစဥ္တဲ့ ပြဲမ်ိဳးဆို ယခင္က ပြဲလာဖူးတဲ့သူေတြရဲ႕ dataကိုျပန္ရွာၿပီး ေနာက္တစ္ႀကိမ္ပြဲျပန္စီစဥ္တိုင္း inviteလုပ္ရတာမ်ိဳး ေတြက ပြဲစီစဥ္ရသူေတြအေနနဲ႔ ေတာ္ေတာ္ေလး အခ်ိန္ေပး ေခါင္းစားတယ္လို႔ျမင္မိပါတယ္
(ဒီထက္ခက္ခဲတာေတြရွိရင္လည္း မွ်ေဝပါအုံး)', CAST(N'2019-02-28T19:16:50.4624655' AS DateTime2), CAST(N'2019-02-28T19:16:50.4624659' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'86a5c3e8-5999-4f8d-8608-ab7fa2c02a37', N'Google AI', N'By bringing together hardware, software, and AI, we’re making devices faster, smarter and more useful. Learn more about our efforts to use AI to create new product experiences on the Pixel phone and new paradigms for on-device machine learning. Organizations big and small are using TensorFlow, our open-source machine learning library, in creative and powerful ways. Meet the team behind Connecterra, a company that’s using machine learning to keep cows healthy and dairy farms efficient.', CAST(N'2019-02-28T22:48:27.3548868' AS DateTime2), CAST(N'2019-02-28T22:48:27.3549808' AS DateTime2), N'b2409176-e966-4095-bd04-246bbf197c9b')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'cda867de-8ce1-46d3-bb94-ba44864d51f0', N'Native Performance', N'Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts to provide full native performance on both iOS and Android. Delight your users with Flutter''s built-in beautiful Material Design and Cupertino (iOS-flavor) widgets, rich motion APIs, smooth natural scrolling, and platform awareness.', CAST(N'2019-02-28T18:41:27.7499618' AS DateTime2), CAST(N'2019-02-28T18:41:27.7500977' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'7bb4e8d4-4e57-4dc9-8636-c5b261e954e4', N'Bird Mode (Google Satellite)', N'Google Maps ဟာ မူလက ရိုးရိုး မြေပုံအတိုင်းသာ ဖော်ပြရာက.. နောက်တော့ Google Earth ကနေရတဲ့ ပုံတွေကိုသုံးပြီး Satellite မြင်ကွင်း လုပ်ဆောင်ချက် ပါဝင်လာခဲ့တယ်။
အဲ့ဒီမှာ Google Maps Team မှာ ပါဝင်တဲ့သူတွေ တစ်ယောက်နဲ့တစ်ယောက် ပြဿနာတက်တော့တာပဲ။ Satellite လို့ အမည်တပ်ထားပေမယ့် ပုံတော်တော်များများက ဂြိုလ်တုကနေ ရတာမဟုတ်ဘူး။ လေယာဉ်ပျံပေါ်ကနေ ရိုက်ယူထားတာ။ ဒီတော့ ဒီလုပ်ဆောင်ချက်ကို Satellite လို့ခေါ်တာ အပြည့်အဝ မမှန်တော့လို့ ဆိုရမှာပေါ့။ တစ်ချို့က Aerial Photography လို့ တိတိကျကျ ခေါ်ကြစေချင်သတဲ့။
Google Founder တွေဖြစ်တဲ့ Larry Page တို့ Sergey Brin တို့အပါအဝင် လူကြီးတွေကို ပြရတော့မယ်၊ နာမည်က ညှိလို့မရကြသေးဘူး။ အဲ့ဒါနဲ့ ဒီအတိုင်းပြလိုက်တာ အစည်းအဝေး ရောက်တော့မှ လူကြီးတွေကပါ ဝိုင်းပြီး တစ်ယောက်တစ်ပေါက် နာမည်ပေးကုန်ကြရော။
ဖြစ်ချင်တော့.. Google ကလူကြီးတွေက အစည်းအဝေး ဆုံးဖြတ်ချက်တွေကို ရိုးရိုးမချဘူး။ နည်းအဆန်းကြီးတစ်ခုနဲ့ ချကြတယ်။ စက္ကန့် (၆၀) Countdown နာရီတစ်လုံးထားပြီး အဲ့ဒီအချိန်အတွင်း အပြီးဆုံးဖြတ်ရတယ်တဲ့။ အချိန်ပြည့်သွားရင် အဲ့ဒီကိစ္စ ထပ်မပြောတော့ဘူး၊ နောက်ဆုံး ဆုံးဖြတ်ချက် အတည်ပဲဆိုတဲ့နည်းကို သုံးကြတယ်။
ပေးလိုက်ကြတာ နာမည်အမျိုးမျိုး။ Airplane View တို့ Superman တို့ I Feel Picture-y တို့ စုံနေတာပဲတဲ့။ နောက်ဆုံး Sergey Brin က "Bird Mode" လို့ခေါ်ကြစို့လို့ ပြောအပြီးမှာ အချိန်ပြည့်သွားတာနဲ့ Bird Mode ဆိုတဲ့အမည် အတည်ဖြစ်သွားပါရောလား။
စောစောက Satellite လို့ ခေါ်ချင်နေတဲ့ သူတွေရော၊ Aerial Photography လို့ ခေါ်ချင်နေတဲ့ သူတွေရော စိတ်တွေညစ်သွားကြတယ်။ Bird Mode ဆိုတာကြီးကို နှစ်ဖွဲ့လုံး မကြိုက်ကြဘူး။ အဲ့ဒါနဲ့ တစ်ကယ် ကုဒ်ရေးတဲ့အဖွဲ့က တိတ်တိတ်လေး Satellite ဆိုတဲ့နာမည်နဲ့ပဲ Release လုပ်ချလိုက်ရော။ လူကြီးပိုင်းက ဒီကိစ္စကို နောက်ပိုင်းမှာ သတိရပုံ မရတာနဲ့ အခုချိန်ထိ ဒီ Feature ရဲ့နာမည် Satellite ဖြစ်နေတော့တာပဲတဲ့။
Twitter မှာ ဒီကိစ္စတာဝန်ယူခဲ့တဲ့သူ ပြန်ပြောပြ ထားတာလေး သဘောကျမိလို့ ပြန်မျှလိုက်တာ - https://twitter.com/btaylor/status/1099370126678253569
စိတ်တောင်မကောင်းဘူး။ "Bird Mode" လို့ တစ်ကယ်ခေါ်လိုက်ရင် တော်တော်မိုက်သွားမှာ...  :D', CAST(N'2019-02-28T19:10:17.2119208' AS DateTime2), CAST(N'2019-02-28T19:10:17.2119212' AS DateTime2), N'9c66edd6-e40d-4c38-a193-26053140d95b')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'a76a0f7a-98bf-4704-9c6f-e5e6d172e020', N'Go Language', N'2018 was a great year for the Go ecosystem, with package management as one of our major focuses. In February, we started a community-wide discussion about how to integrate package management directly into the Go toolchain, and in August we delivered the first rough implementation of that feature, called Go modules, in Go 1.11. The migration to Go modules will be the most far-reaching change for the Go ecosystem since Go 1. Converting the entire ecosystem—code, users, tools, and so on—from GOPATH to modules will require work in many different areas. The module system will in turn help us deliver better authentication and build speeds to the Go ecosystem. ', CAST(N'2019-02-28T22:53:38.5866948' AS DateTime2), CAST(N'2019-02-28T22:53:38.5866952' AS DateTime2), N'b2409176-e966-4095-bd04-246bbf197c9b')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'8d0e8325-cd3e-42ca-8435-e76e4381a084', N'Vue For Your Front End', N'Vue (pronounced /vjuː/, like view) is a progressive framework for building user interfaces. Unlike other monolithic frameworks, Vue is designed from the ground up to be incrementally adoptable. The core library is focused on the view layer only, and is easy to pick up and integrate with other libraries or existing projects. On the other hand, Vue is also perfectly capable of powering sophisticated Single-Page Applications when used in combination with modern tooling and supporting libraries. If you’d like to learn more about Vue before diving in, we created a video walking through the core principles and a sample project.', CAST(N'2019-02-28T22:29:59.7844592' AS DateTime2), CAST(N'2019-02-28T22:29:59.7844596' AS DateTime2), N'13cc3292-b463-49b2-af95-5495c0798227')
INSERT [dbo].[Posts] ([ID], [Title], [Description], [CreatedOn], [ModifiedOn], [ContributorID]) VALUES (N'af601155-1c50-4421-9928-efb5e30c9f54', N'Angular The JS Framework', N'Learn one way to build applications with Angular and reuse your code and abilities to build apps for any deployment target. For web, mobile web, native mobile and native desktop. Achieve the maximum speed possible on the Web Platform today, and take it further, via Web Workers and server-side rendering. Build features quickly with simple, declarative templates. Extend the template language with your own components and use a wide array of existing components. Get immediate Angular-specific help and feedback with nearly every IDE and editor. All this comes together so you can focus on building amazing apps rather than trying to make the code work. ', CAST(N'2019-02-28T22:26:51.0807472' AS DateTime2), CAST(N'2019-02-28T22:26:51.0807480' AS DateTime2), N'eccc4a78-bf6e-4843-b13e-e4dbe7870609')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'68b0d0d4-dda4-4eaf-fd81-08d69ca38183', NULL, N'https://www.youtube.com/embed/SSo_EIwHSd4', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'ba8d6ce9-18cc-4dc4-fd82-08d69ca38183', NULL, N'https://www.youtube.com/embed/jKYhLpHJv8U', N'7afbffa3-2015-4358-b7ff-2a8c9162bc40')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'927f0243-8bb6-47ff-e039-08d69d75dde8', NULL, N'https://www.youtube.com/embed/W1pNjxmNHNQ', N'cda867de-8ce1-46d3-bb94-ba44864d51f0')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'5761fdff-6692-46bc-e03b-08d69d75dde8', NULL, N'https://www.youtube.com/embed/ZVE8nDZdRmQ', N'dcfc1c41-6c5d-45f0-b71d-054b91fef7a0')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'5e3e4646-6696-475f-e03c-08d69d75dde8', NULL, N'https://www.youtube.com/embed/ZP9Gslb5kx0', N'7bb4e8d4-4e57-4dc9-8636-c5b261e954e4')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'09061d8c-21ec-4ed9-e03d-08d69d75dde8', NULL, N'https://www.youtube.com/embed/88MjoZalHpM', N'60ec960c-4bd1-44ae-a531-6b9e11428046')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'6ffa1050-f444-4b23-e03e-08d69d75dde8', NULL, N'https://www.youtube.com/embed/ZLNO2c7nqjw', N'50a62d4f-4d34-48f8-bf07-55dbff1e4334')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'e9608289-0d35-4042-ac76-08d69d94a738', NULL, N'https://www.youtube.com/embed/sBws8MSXN7A', N'a85565ff-57d0-4474-a449-4be24474ba08')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'd083c9b5-013c-4004-ac77-08d69d94a738', NULL, N'https://www.youtube.com/embed/69VeYoKzL6I', N'af601155-1c50-4421-9928-efb5e30c9f54')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'ff90b6cd-c79f-43ba-ac78-08d69d94a738', NULL, N'https://www.youtube.com/embed/Wy9q22isx3U', N'8d0e8325-cd3e-42ca-8435-e76e4381a084')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'69acdd6d-51a1-43c3-a841-08d69d985f06', NULL, N'https://www.youtube.com/embed/lXUQ-DdSDoE', N'86a5c3e8-5999-4f8d-8608-ab7fa2c02a37')
INSERT [dbo].[Videos] ([ID], [Name], [ApiLink], [PostID]) VALUES (N'5848b70a-7cf6-413f-a842-08d69d985f06', NULL, N'https://www.youtube.com/embed/SqrbIlUwR0U', N'a76a0f7a-98bf-4704-9c6f-e5e6d172e020')
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
