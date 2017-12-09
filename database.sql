USE [master]
GO
/****** Object:  Database [FinalProject]    Script Date: 12/7/2017 11:03:15 AM ******/
CREATE DATABASE [FinalProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FinalProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FinalProject.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FinalProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FinalProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FinalProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FinalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FinalProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FinalProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FinalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FinalProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FinalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FinalProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FinalProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FinalProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FinalProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FinalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FinalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FinalProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FinalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FinalProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FinalProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FinalProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FinalProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FinalProject] SET  MULTI_USER 
GO
ALTER DATABASE [FinalProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FinalProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FinalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FinalProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FinalProject] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FinalProject]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/7/2017 11:03:15 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/7/2017 11:03:15 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/7/2017 11:03:15 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/7/2017 11:03:15 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/7/2017 11:03:15 AM ******/
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
	[StreetAddress] [nvarchar](max) NULL,
	[AboutMe] [nvarchar](300) NULL,
	[NumTimesHelped] [int] NULL,
	[Testimonial] [nvarchar](300) NULL,
	[ProfilePhoto] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 12/7/2017 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[MessageContent] [nvarchar](300) NULL,
	[TimeStamp] [datetime] NOT NULL,
	[TaskID] [int] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Task2]    Script Date: 12/7/2017 11:03:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task2](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[TaskDescription] [nvarchar](300) NOT NULL,
	[TaskTitle] [nvarchar](100) NOT NULL,
	[IsDone] [bit] NULL CONSTRAINT [DF_Task2_IsDone]  DEFAULT ((0)),
	[TimeStamp] [datetime] NOT NULL,
	[IsAssigned] [bit] NULL CONSTRAINT [DF_Task2_IsAssigned]  DEFAULT ((0)),
	[HelpProviderID] [nvarchar](128) NULL,
	[TaskCreatorID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Task2] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'116713053140427429629', N'505d8027-8d12-4028-89b7-0b321355de0c')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'107216121860684589254', N'8e7bfd4a-29b2-4929-b213-d7d178d50815')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'118198247543857850546', N'aa8616d9-04f3-44e2-84c2-877bb9ba213a')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'10159543649440012', N'e0071db5-2e2b-48b8-89e8-0b3782e3fb34')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'43d2810e-305a-4b87-aa4c-a0da52f22129', N'test@test.com', 0, N'AAfxV6+03PzZ40D3X5D0gRmYHl5sNbOW6QA8yXNfffKUR4WoqIYd/73seZBkMPtSLg==', N'6c01bc40-6869-41dc-8660-0885aaf97ac3', NULL, 0, 0, NULL, 1, 0, N'test@test.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'505d8027-8d12-4028-89b7-0b321355de0c', N'sikkspecialist@gmail.com', 0, NULL, N'12c7794a-1bdb-49b4-8d24-659afb5873e1', NULL, 0, 0, NULL, 1, 0, N'sikkspecialist@gmail.com', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'57ee69cd-338c-4c36-8ccf-f6fee6e10487', N'brad@yahoo.com', 0, N'AOo79vKIabfal3cIqC+otPdKHVX9/r0YiSKQCDw/oYbf6ixW229aEbaxlOmPsrn3wA==', N'a89a9003-7324-451d-aee2-4a47023a214e', NULL, 0, 0, NULL, 1, 0, N'brad@yahoo.com', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'8e7bfd4a-29b2-4929-b213-d7d178d50815', N'bdt9123@gmail.com', 0, NULL, N'472b6f28-e938-430c-a205-aeea4705e204', NULL, 0, 0, NULL, 1, 0, N'bdt9123@gmail.com', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'aa8616d9-04f3-44e2-84c2-877bb9ba213a', N'bradcsweet@gmail.com', 0, NULL, N'c6613b08-d5b2-4606-b145-c359e6e5502d', NULL, 0, 0, NULL, 1, 0, N'bradcsweet@gmail.com', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'bbf62cfc-92f3-4b88-ad89-1db489e24a5e', N'test12@test.com', 0, N'AH6c5gl7e5FrPdE3wfFZAd0VliZ90wI0cc5sAbf2x1py0EekakeiGSaAiVR99TiqYQ==', N'66513592-96d8-41c1-81d9-f1de9338b096', NULL, 0, 0, NULL, 1, 0, N'test12@test.com', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'e0071db5-2e2b-48b8-89e8-0b3782e3fb34', N'bradsweet@yahoo.com', 0, NULL, N'ac4666db-714c-479a-88fe-4a740617c666', NULL, 0, 0, NULL, 1, 0, N'bradsweet@yahoo.com', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [StreetAddress], [AboutMe], [NumTimesHelped], [Testimonial], [ProfilePhoto]) VALUES (N'f46d8282-1207-45db-ab00-203708b86f6c', N'test3@yahoo.com', 0, N'AJd/mG4uG7Hxtij5R2rljGDsuHii9I9WQtCYW/O0flOI4aHZyfbF+XIarqFDFI4LkQ==', N'8424e33f-cefe-44c7-85aa-30113f451b0f', NULL, 0, 0, NULL, 1, 0, N'test3@yahoo.com', NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Task2] ON 

INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (3, N'snow removal', N'snow removal', 0, CAST(N'2017-12-05 00:00:00.000' AS DateTime), 0, NULL, N'57ee69cd-338c-4c36-8ccf-f6fee6e10487')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (4, N'raking', N'raking', 0, CAST(N'2017-12-15 00:00:00.000' AS DateTime), 0, NULL, N'8e7bfd4a-29b2-4929-b213-d7d178d50815')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (5, N'mow lawn', N'lawn care', 0, CAST(N'2017-12-16 00:00:00.000' AS DateTime), NULL, NULL, N'8e7bfd4a-29b2-4929-b213-d7d178d50815')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (13, N'ijwoeif', N'oijwoefij', 0, CAST(N'2017-12-06 01:01:00.000' AS DateTime), 0, NULL, N'aa8616d9-04f3-44e2-84c2-877bb9ba213a')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (14, N'gutter', N'gutter', 0, CAST(N'2017-12-06 09:48:00.000' AS DateTime), 0, NULL, N'aa8616d9-04f3-44e2-84c2-877bb9ba213a')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (15, N'wash windows', N'wash windows', 0, CAST(N'2017-12-06 10:18:00.000' AS DateTime), 0, NULL, N'e0071db5-2e2b-48b8-89e8-0b3782e3fb34')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (16, N'ladder', N'holding a ladder', 0, CAST(N'2017-12-06 10:23:00.000' AS DateTime), 0, NULL, N'e0071db5-2e2b-48b8-89e8-0b3782e3fb34')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (17, N'sweep', N'sweep', 0, CAST(N'2017-12-06 10:25:00.000' AS DateTime), 0, NULL, N'e0071db5-2e2b-48b8-89e8-0b3782e3fb34')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (18, N'rake', N'rake', 0, CAST(N'2017-12-06 10:31:17.960' AS DateTime), 0, NULL, N'e0071db5-2e2b-48b8-89e8-0b3782e3fb34')
INSERT [dbo].[Task2] ([TaskID], [TaskDescription], [TaskTitle], [IsDone], [TimeStamp], [IsAssigned], [HelpProviderID], [TaskCreatorID]) VALUES (19, N'task', N'title ', 0, CAST(N'2017-12-06 11:03:10.907' AS DateTime), 0, NULL, N'e0071db5-2e2b-48b8-89e8-0b3782e3fb34')
SET IDENTITY_INSERT [dbo].[Task2] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/7/2017 11:03:15 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/7/2017 11:03:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/7/2017 11:03:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 12/7/2017 11:03:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/7/2017 11:03:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/7/2017 11:03:15 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_Message_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
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
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Task2] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Task2] ([TaskID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Task2]
GO
ALTER TABLE [dbo].[Task2]  WITH CHECK ADD  CONSTRAINT [FK_Task2_AspNetUsers] FOREIGN KEY([TaskCreatorID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Task2] CHECK CONSTRAINT [FK_Task2_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [FinalProject] SET  READ_WRITE 
GO
