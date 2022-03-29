USE [InsuranceManagement]
GO
/****** Object:  Table [dbo].[EndOfDay]    Script Date: 3/27/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndOfDay](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DateInAd] [date] NOT NULL,
	[DateInBs] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MappedDate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCompany]    Script Date: 3/27/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompany](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[HeadOfficeAddress] [nvarchar](500) NOT NULL,
	[BranchOfficeAddress] [nvarchar](500) NOT NULL,
	[HeadOfDepartment] [nvarchar](500) NOT NULL,
	[Position] [nvarchar](500) NOT NULL,
	[AgreementDate] [datetime] NOT NULL,
	[EstablishedDate] [datetime] NULL,
	[AddedBy] [nvarchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanDetail]    Script Date: 3/27/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InsuranceCompanyId] [bigint] NOT NULL,
	[MembershipNo] [nvarchar](50) NOT NULL,
	[MemberName] [nvarchar](100) NOT NULL,
	[MemberAddress] [nvarchar](500) NOT NULL,
	[MemberBeneficiary] [nvarchar](100) NOT NULL,
	[MemberRelationship] [nvarchar](50) NOT NULL,
	[MemberGender] [nvarchar](50) NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[PeriodInMonth] [int] NOT NULL,
	[MaturedDate] [datetime] NOT NULL,
	[RenewDate] [datetime] NULL,
	[LoanAmount] [decimal](18, 2) NOT NULL,
	[Premium] [decimal](18, 2) NOT NULL,
	[InsuranceAmount] [decimal](18, 2) NOT NULL,
	[MaturedAmount] [decimal](18, 2) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[AddedBy] [nvarchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EndOfDay] ON 
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1, CAST(N'2021-04-14' AS Date), N'2078-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2, CAST(N'2021-04-15' AS Date), N'2078-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3, CAST(N'2021-04-16' AS Date), N'2078-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4, CAST(N'2021-04-17' AS Date), N'2078-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (5, CAST(N'2021-04-18' AS Date), N'2078-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (6, CAST(N'2021-04-19' AS Date), N'2078-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (7, CAST(N'2021-04-20' AS Date), N'2078-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (8, CAST(N'2021-04-21' AS Date), N'2078-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (9, CAST(N'2021-04-22' AS Date), N'2078-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (10, CAST(N'2021-04-23' AS Date), N'2078-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (11, CAST(N'2021-04-24' AS Date), N'2078-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (12, CAST(N'2021-04-25' AS Date), N'2078-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (13, CAST(N'2021-04-26' AS Date), N'2078-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (14, CAST(N'2021-04-27' AS Date), N'2078-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (15, CAST(N'2021-04-28' AS Date), N'2078-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (16, CAST(N'2021-04-29' AS Date), N'2078-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (17, CAST(N'2021-04-30' AS Date), N'2078-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (18, CAST(N'2021-05-01' AS Date), N'2078-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (19, CAST(N'2021-05-02' AS Date), N'2078-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (20, CAST(N'2021-05-03' AS Date), N'2078-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (21, CAST(N'2021-05-04' AS Date), N'2078-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (22, CAST(N'2021-05-05' AS Date), N'2078-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (23, CAST(N'2021-05-06' AS Date), N'2078-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (24, CAST(N'2021-05-07' AS Date), N'2078-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (25, CAST(N'2021-05-08' AS Date), N'2078-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (26, CAST(N'2021-05-09' AS Date), N'2078-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (27, CAST(N'2021-05-10' AS Date), N'2078-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (28, CAST(N'2021-05-11' AS Date), N'2078-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (29, CAST(N'2021-05-12' AS Date), N'2078-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (30, CAST(N'2021-05-13' AS Date), N'2078-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (31, CAST(N'2021-05-14' AS Date), N'2078-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (32, CAST(N'2021-05-15' AS Date), N'2078-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (33, CAST(N'2021-05-16' AS Date), N'2078-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (34, CAST(N'2021-05-17' AS Date), N'2078-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (35, CAST(N'2021-05-18' AS Date), N'2078-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (36, CAST(N'2021-05-19' AS Date), N'2078-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (37, CAST(N'2021-05-20' AS Date), N'2078-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (38, CAST(N'2021-05-21' AS Date), N'2078-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (39, CAST(N'2021-05-22' AS Date), N'2078-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (40, CAST(N'2021-05-23' AS Date), N'2078-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (41, CAST(N'2021-05-24' AS Date), N'2078-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (42, CAST(N'2021-05-25' AS Date), N'2078-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (43, CAST(N'2021-05-26' AS Date), N'2078-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (44, CAST(N'2021-05-27' AS Date), N'2078-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (45, CAST(N'2021-05-28' AS Date), N'2078-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (46, CAST(N'2021-05-29' AS Date), N'2078-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (47, CAST(N'2021-05-30' AS Date), N'2078-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (48, CAST(N'2021-05-31' AS Date), N'2078-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (49, CAST(N'2021-06-01' AS Date), N'2078-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (50, CAST(N'2021-06-02' AS Date), N'2078-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (51, CAST(N'2021-06-03' AS Date), N'2078-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (52, CAST(N'2021-06-04' AS Date), N'2078-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (53, CAST(N'2021-06-05' AS Date), N'2078-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (54, CAST(N'2021-06-06' AS Date), N'2078-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (55, CAST(N'2021-06-07' AS Date), N'2078-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (56, CAST(N'2021-06-08' AS Date), N'2078-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (57, CAST(N'2021-06-09' AS Date), N'2078-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (58, CAST(N'2021-06-10' AS Date), N'2078-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (59, CAST(N'2021-06-11' AS Date), N'2078-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (60, CAST(N'2021-06-12' AS Date), N'2078-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (61, CAST(N'2021-06-13' AS Date), N'2078-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (62, CAST(N'2021-06-14' AS Date), N'2078-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (63, CAST(N'2021-06-15' AS Date), N'2078-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (64, CAST(N'2021-06-16' AS Date), N'2078-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (65, CAST(N'2021-06-17' AS Date), N'2078-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (66, CAST(N'2021-06-18' AS Date), N'2078-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (67, CAST(N'2021-06-19' AS Date), N'2078-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (68, CAST(N'2021-06-20' AS Date), N'2078-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (69, CAST(N'2021-06-21' AS Date), N'2078-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (70, CAST(N'2021-06-22' AS Date), N'2078-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (71, CAST(N'2021-06-23' AS Date), N'2078-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (72, CAST(N'2021-06-24' AS Date), N'2078-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (73, CAST(N'2021-06-25' AS Date), N'2078-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (74, CAST(N'2021-06-26' AS Date), N'2078-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (75, CAST(N'2021-06-27' AS Date), N'2078-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (76, CAST(N'2021-06-28' AS Date), N'2078-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (77, CAST(N'2021-06-29' AS Date), N'2078-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (78, CAST(N'2021-06-30' AS Date), N'2078-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (79, CAST(N'2021-07-01' AS Date), N'2078-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (80, CAST(N'2021-07-02' AS Date), N'2078-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (81, CAST(N'2021-07-03' AS Date), N'2078-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (82, CAST(N'2021-07-04' AS Date), N'2078-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (83, CAST(N'2021-07-05' AS Date), N'2078-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (84, CAST(N'2021-07-06' AS Date), N'2078-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (85, CAST(N'2021-07-07' AS Date), N'2078-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (86, CAST(N'2021-07-08' AS Date), N'2078-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (87, CAST(N'2021-07-09' AS Date), N'2078-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (88, CAST(N'2021-07-10' AS Date), N'2078-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (89, CAST(N'2021-07-11' AS Date), N'2078-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (90, CAST(N'2021-07-12' AS Date), N'2078-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (91, CAST(N'2021-07-13' AS Date), N'2078-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (92, CAST(N'2021-07-14' AS Date), N'2078-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (93, CAST(N'2021-07-15' AS Date), N'2078-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (94, CAST(N'2021-07-16' AS Date), N'2078-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (95, CAST(N'2021-07-17' AS Date), N'2078-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (96, CAST(N'2021-07-18' AS Date), N'2078-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (97, CAST(N'2021-07-19' AS Date), N'2078-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (98, CAST(N'2021-07-20' AS Date), N'2078-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (99, CAST(N'2021-07-21' AS Date), N'2078-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (100, CAST(N'2021-07-22' AS Date), N'2078-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (101, CAST(N'2021-07-23' AS Date), N'2078-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (102, CAST(N'2021-07-24' AS Date), N'2078-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (103, CAST(N'2021-07-25' AS Date), N'2078-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (104, CAST(N'2021-07-26' AS Date), N'2078-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (105, CAST(N'2021-07-27' AS Date), N'2078-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (106, CAST(N'2021-07-28' AS Date), N'2078-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (107, CAST(N'2021-07-29' AS Date), N'2078-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (108, CAST(N'2021-07-30' AS Date), N'2078-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (109, CAST(N'2021-07-31' AS Date), N'2078-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (110, CAST(N'2021-08-01' AS Date), N'2078-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (111, CAST(N'2021-08-02' AS Date), N'2078-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (112, CAST(N'2021-08-03' AS Date), N'2078-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (113, CAST(N'2021-08-04' AS Date), N'2078-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (114, CAST(N'2021-08-05' AS Date), N'2078-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (115, CAST(N'2021-08-06' AS Date), N'2078-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (116, CAST(N'2021-08-07' AS Date), N'2078-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (117, CAST(N'2021-08-08' AS Date), N'2078-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (118, CAST(N'2021-08-09' AS Date), N'2078-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (119, CAST(N'2021-08-10' AS Date), N'2078-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (120, CAST(N'2021-08-11' AS Date), N'2078-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (121, CAST(N'2021-08-12' AS Date), N'2078-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (122, CAST(N'2021-08-13' AS Date), N'2078-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (123, CAST(N'2021-08-14' AS Date), N'2078-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (124, CAST(N'2021-08-15' AS Date), N'2078-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (125, CAST(N'2021-08-16' AS Date), N'2078-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (126, CAST(N'2021-08-17' AS Date), N'2078-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (127, CAST(N'2021-08-18' AS Date), N'2078-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (128, CAST(N'2021-08-19' AS Date), N'2078-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (129, CAST(N'2021-08-20' AS Date), N'2078-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (130, CAST(N'2021-08-21' AS Date), N'2078-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (131, CAST(N'2021-08-22' AS Date), N'2078-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (132, CAST(N'2021-08-23' AS Date), N'2078-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (133, CAST(N'2021-08-24' AS Date), N'2078-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (134, CAST(N'2021-08-25' AS Date), N'2078-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (135, CAST(N'2021-08-26' AS Date), N'2078-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (136, CAST(N'2021-08-27' AS Date), N'2078-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (137, CAST(N'2021-08-28' AS Date), N'2078-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (138, CAST(N'2021-08-29' AS Date), N'2078-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (139, CAST(N'2021-08-30' AS Date), N'2078-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (140, CAST(N'2021-08-31' AS Date), N'2078-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (141, CAST(N'2021-09-01' AS Date), N'2078-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (142, CAST(N'2021-09-02' AS Date), N'2078-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (143, CAST(N'2021-09-03' AS Date), N'2078-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (144, CAST(N'2021-09-04' AS Date), N'2078-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (145, CAST(N'2021-09-05' AS Date), N'2078-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (146, CAST(N'2021-09-06' AS Date), N'2078-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (147, CAST(N'2021-09-07' AS Date), N'2078-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (148, CAST(N'2021-09-08' AS Date), N'2078-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (149, CAST(N'2021-09-09' AS Date), N'2078-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (150, CAST(N'2021-09-10' AS Date), N'2078-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (151, CAST(N'2021-09-11' AS Date), N'2078-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (152, CAST(N'2021-09-12' AS Date), N'2078-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (153, CAST(N'2021-09-13' AS Date), N'2078-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (154, CAST(N'2021-09-14' AS Date), N'2078-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (155, CAST(N'2021-09-15' AS Date), N'2078-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (156, CAST(N'2021-09-16' AS Date), N'2078-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (157, CAST(N'2021-09-17' AS Date), N'2078-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (158, CAST(N'2021-09-18' AS Date), N'2078-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (159, CAST(N'2021-09-19' AS Date), N'2078-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (160, CAST(N'2021-09-20' AS Date), N'2078-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (161, CAST(N'2021-09-21' AS Date), N'2078-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (162, CAST(N'2021-09-22' AS Date), N'2078-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (163, CAST(N'2021-09-23' AS Date), N'2078-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (164, CAST(N'2021-09-24' AS Date), N'2078-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (165, CAST(N'2021-09-25' AS Date), N'2078-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (166, CAST(N'2021-09-26' AS Date), N'2078-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (167, CAST(N'2021-09-27' AS Date), N'2078-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (168, CAST(N'2021-09-28' AS Date), N'2078-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (169, CAST(N'2021-09-29' AS Date), N'2078-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (170, CAST(N'2021-09-30' AS Date), N'2078-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (171, CAST(N'2021-10-01' AS Date), N'2078-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (172, CAST(N'2021-10-02' AS Date), N'2078-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (173, CAST(N'2021-10-03' AS Date), N'2078-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (174, CAST(N'2021-10-04' AS Date), N'2078-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (175, CAST(N'2021-10-05' AS Date), N'2078-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (176, CAST(N'2021-10-06' AS Date), N'2078-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (177, CAST(N'2021-10-07' AS Date), N'2078-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (178, CAST(N'2021-10-08' AS Date), N'2078-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (179, CAST(N'2021-10-09' AS Date), N'2078-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (180, CAST(N'2021-10-10' AS Date), N'2078-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (181, CAST(N'2021-10-11' AS Date), N'2078-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (182, CAST(N'2021-10-12' AS Date), N'2078-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (183, CAST(N'2021-10-13' AS Date), N'2078-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (184, CAST(N'2021-10-14' AS Date), N'2078-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (185, CAST(N'2021-10-15' AS Date), N'2078-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (186, CAST(N'2021-10-16' AS Date), N'2078-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (187, CAST(N'2021-10-17' AS Date), N'2078-06-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (188, CAST(N'2021-10-18' AS Date), N'2078-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (189, CAST(N'2021-10-19' AS Date), N'2078-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (190, CAST(N'2021-10-20' AS Date), N'2078-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (191, CAST(N'2021-10-21' AS Date), N'2078-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (192, CAST(N'2021-10-22' AS Date), N'2078-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (193, CAST(N'2021-10-23' AS Date), N'2078-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (194, CAST(N'2021-10-24' AS Date), N'2078-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (195, CAST(N'2021-10-25' AS Date), N'2078-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (196, CAST(N'2021-10-26' AS Date), N'2078-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (197, CAST(N'2021-10-27' AS Date), N'2078-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (198, CAST(N'2021-10-28' AS Date), N'2078-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (199, CAST(N'2021-10-29' AS Date), N'2078-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (200, CAST(N'2021-10-30' AS Date), N'2078-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (201, CAST(N'2021-10-31' AS Date), N'2078-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (202, CAST(N'2021-11-01' AS Date), N'2078-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (203, CAST(N'2021-11-02' AS Date), N'2078-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (204, CAST(N'2021-11-03' AS Date), N'2078-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (205, CAST(N'2021-11-04' AS Date), N'2078-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (206, CAST(N'2021-11-05' AS Date), N'2078-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (207, CAST(N'2021-11-06' AS Date), N'2078-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (208, CAST(N'2021-11-07' AS Date), N'2078-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (209, CAST(N'2021-11-08' AS Date), N'2078-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (210, CAST(N'2021-11-09' AS Date), N'2078-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (211, CAST(N'2021-11-10' AS Date), N'2078-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (212, CAST(N'2021-11-11' AS Date), N'2078-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (213, CAST(N'2021-11-12' AS Date), N'2078-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (214, CAST(N'2021-11-13' AS Date), N'2078-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (215, CAST(N'2021-11-14' AS Date), N'2078-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (216, CAST(N'2021-11-15' AS Date), N'2078-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (217, CAST(N'2021-11-16' AS Date), N'2078-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (218, CAST(N'2021-11-17' AS Date), N'2078-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (219, CAST(N'2021-11-18' AS Date), N'2078-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (220, CAST(N'2021-11-19' AS Date), N'2078-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (221, CAST(N'2021-11-20' AS Date), N'2078-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (222, CAST(N'2021-11-21' AS Date), N'2078-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (223, CAST(N'2021-11-22' AS Date), N'2078-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (224, CAST(N'2021-11-23' AS Date), N'2078-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (225, CAST(N'2021-11-24' AS Date), N'2078-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (226, CAST(N'2021-11-25' AS Date), N'2078-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (227, CAST(N'2021-11-26' AS Date), N'2078-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (228, CAST(N'2021-11-27' AS Date), N'2078-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (229, CAST(N'2021-11-28' AS Date), N'2078-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (230, CAST(N'2021-11-29' AS Date), N'2078-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (231, CAST(N'2021-11-30' AS Date), N'2078-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (232, CAST(N'2021-12-01' AS Date), N'2078-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (233, CAST(N'2021-12-02' AS Date), N'2078-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (234, CAST(N'2021-12-03' AS Date), N'2078-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (235, CAST(N'2021-12-04' AS Date), N'2078-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (236, CAST(N'2021-12-05' AS Date), N'2078-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (237, CAST(N'2021-12-06' AS Date), N'2078-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (238, CAST(N'2021-12-07' AS Date), N'2078-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (239, CAST(N'2021-12-08' AS Date), N'2078-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (240, CAST(N'2021-12-09' AS Date), N'2078-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (241, CAST(N'2021-12-10' AS Date), N'2078-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (242, CAST(N'2021-12-11' AS Date), N'2078-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (243, CAST(N'2021-12-12' AS Date), N'2078-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (244, CAST(N'2021-12-13' AS Date), N'2078-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (245, CAST(N'2021-12-14' AS Date), N'2078-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (246, CAST(N'2021-12-15' AS Date), N'2078-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (247, CAST(N'2021-12-16' AS Date), N'2078-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (248, CAST(N'2021-12-17' AS Date), N'2078-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (249, CAST(N'2021-12-18' AS Date), N'2078-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (250, CAST(N'2021-12-19' AS Date), N'2078-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (251, CAST(N'2021-12-20' AS Date), N'2078-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (252, CAST(N'2021-12-21' AS Date), N'2078-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (253, CAST(N'2021-12-22' AS Date), N'2078-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (254, CAST(N'2021-12-23' AS Date), N'2078-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (255, CAST(N'2021-12-24' AS Date), N'2078-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (256, CAST(N'2021-12-25' AS Date), N'2078-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (257, CAST(N'2021-12-26' AS Date), N'2078-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (258, CAST(N'2021-12-27' AS Date), N'2078-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (259, CAST(N'2021-12-28' AS Date), N'2078-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (260, CAST(N'2021-12-29' AS Date), N'2078-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (261, CAST(N'2021-12-30' AS Date), N'2078-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (262, CAST(N'2021-12-31' AS Date), N'2078-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (263, CAST(N'2022-01-01' AS Date), N'2078-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (264, CAST(N'2022-01-02' AS Date), N'2078-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (265, CAST(N'2022-01-03' AS Date), N'2078-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (266, CAST(N'2022-01-04' AS Date), N'2078-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (267, CAST(N'2022-01-05' AS Date), N'2078-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (268, CAST(N'2022-01-06' AS Date), N'2078-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (269, CAST(N'2022-01-07' AS Date), N'2078-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (270, CAST(N'2022-01-08' AS Date), N'2078-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (271, CAST(N'2022-01-09' AS Date), N'2078-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (272, CAST(N'2022-01-10' AS Date), N'2078-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (273, CAST(N'2022-01-11' AS Date), N'2078-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (274, CAST(N'2022-01-12' AS Date), N'2078-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (275, CAST(N'2022-01-13' AS Date), N'2078-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (276, CAST(N'2022-01-14' AS Date), N'2078-09-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (277, CAST(N'2022-01-15' AS Date), N'2078-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (278, CAST(N'2022-01-16' AS Date), N'2078-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (279, CAST(N'2022-01-17' AS Date), N'2078-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (280, CAST(N'2022-01-18' AS Date), N'2078-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (281, CAST(N'2022-01-19' AS Date), N'2078-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (282, CAST(N'2022-01-20' AS Date), N'2078-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (283, CAST(N'2022-01-21' AS Date), N'2078-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (284, CAST(N'2022-01-22' AS Date), N'2078-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (285, CAST(N'2022-01-23' AS Date), N'2078-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (286, CAST(N'2022-01-24' AS Date), N'2078-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (287, CAST(N'2022-01-25' AS Date), N'2078-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (288, CAST(N'2022-01-26' AS Date), N'2078-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (289, CAST(N'2022-01-27' AS Date), N'2078-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (290, CAST(N'2022-01-28' AS Date), N'2078-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (291, CAST(N'2022-01-29' AS Date), N'2078-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (292, CAST(N'2022-01-30' AS Date), N'2078-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (293, CAST(N'2022-01-31' AS Date), N'2078-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (294, CAST(N'2022-02-01' AS Date), N'2078-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (295, CAST(N'2022-02-02' AS Date), N'2078-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (296, CAST(N'2022-02-03' AS Date), N'2078-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (297, CAST(N'2022-02-04' AS Date), N'2078-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (298, CAST(N'2022-02-05' AS Date), N'2078-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (299, CAST(N'2022-02-06' AS Date), N'2078-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (300, CAST(N'2022-02-07' AS Date), N'2078-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (301, CAST(N'2022-02-08' AS Date), N'2078-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (302, CAST(N'2022-02-09' AS Date), N'2078-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (303, CAST(N'2022-02-10' AS Date), N'2078-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (304, CAST(N'2022-02-11' AS Date), N'2078-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (305, CAST(N'2022-02-12' AS Date), N'2078-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (306, CAST(N'2022-02-13' AS Date), N'2078-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (307, CAST(N'2022-02-14' AS Date), N'2078-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (308, CAST(N'2022-02-15' AS Date), N'2078-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (309, CAST(N'2022-02-16' AS Date), N'2078-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (310, CAST(N'2022-02-17' AS Date), N'2078-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (311, CAST(N'2022-02-18' AS Date), N'2078-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (312, CAST(N'2022-02-19' AS Date), N'2078-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (313, CAST(N'2022-02-20' AS Date), N'2078-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (314, CAST(N'2022-02-21' AS Date), N'2078-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (315, CAST(N'2022-02-22' AS Date), N'2078-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (316, CAST(N'2022-02-23' AS Date), N'2078-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (317, CAST(N'2022-02-24' AS Date), N'2078-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (318, CAST(N'2022-02-25' AS Date), N'2078-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (319, CAST(N'2022-02-26' AS Date), N'2078-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (320, CAST(N'2022-02-27' AS Date), N'2078-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (321, CAST(N'2022-02-28' AS Date), N'2078-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (322, CAST(N'2022-03-01' AS Date), N'2078-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (323, CAST(N'2022-03-02' AS Date), N'2078-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (324, CAST(N'2022-03-03' AS Date), N'2078-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (325, CAST(N'2022-03-04' AS Date), N'2078-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (326, CAST(N'2022-03-05' AS Date), N'2078-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (327, CAST(N'2022-03-06' AS Date), N'2078-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (328, CAST(N'2022-03-07' AS Date), N'2078-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (329, CAST(N'2022-03-08' AS Date), N'2078-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (330, CAST(N'2022-03-09' AS Date), N'2078-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (331, CAST(N'2022-03-10' AS Date), N'2078-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (332, CAST(N'2022-03-11' AS Date), N'2078-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (333, CAST(N'2022-03-12' AS Date), N'2078-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (334, CAST(N'2022-03-13' AS Date), N'2078-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (335, CAST(N'2022-03-14' AS Date), N'2078-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (336, CAST(N'2022-03-15' AS Date), N'2078-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (337, CAST(N'2022-03-16' AS Date), N'2078-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (338, CAST(N'2022-03-17' AS Date), N'2078-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (339, CAST(N'2022-03-18' AS Date), N'2078-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (340, CAST(N'2022-03-19' AS Date), N'2078-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (341, CAST(N'2022-03-20' AS Date), N'2078-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (342, CAST(N'2022-03-21' AS Date), N'2078-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (343, CAST(N'2022-03-22' AS Date), N'2078-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (344, CAST(N'2022-03-23' AS Date), N'2078-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (345, CAST(N'2022-03-24' AS Date), N'2078-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (346, CAST(N'2022-03-25' AS Date), N'2078-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (347, CAST(N'2022-03-26' AS Date), N'2078-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (348, CAST(N'2022-03-27' AS Date), N'2078-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (349, CAST(N'2022-03-28' AS Date), N'2078-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (350, CAST(N'2022-03-29' AS Date), N'2078-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (351, CAST(N'2022-03-30' AS Date), N'2078-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (352, CAST(N'2022-03-31' AS Date), N'2078-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (353, CAST(N'2022-04-01' AS Date), N'2078-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (354, CAST(N'2022-04-02' AS Date), N'2078-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (355, CAST(N'2022-04-03' AS Date), N'2078-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (356, CAST(N'2022-04-04' AS Date), N'2078-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (357, CAST(N'2022-04-05' AS Date), N'2078-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (358, CAST(N'2022-04-06' AS Date), N'2078-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (359, CAST(N'2022-04-07' AS Date), N'2078-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (360, CAST(N'2022-04-08' AS Date), N'2078-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (361, CAST(N'2022-04-09' AS Date), N'2078-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (362, CAST(N'2022-04-10' AS Date), N'2078-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (363, CAST(N'2022-04-11' AS Date), N'2078-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (364, CAST(N'2022-04-12' AS Date), N'2078-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (365, CAST(N'2022-04-13' AS Date), N'2078-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (366, CAST(N'2022-04-14' AS Date), N'2079-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (367, CAST(N'2022-04-15' AS Date), N'2079-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (368, CAST(N'2022-04-16' AS Date), N'2079-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (369, CAST(N'2022-04-17' AS Date), N'2079-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (370, CAST(N'2022-04-18' AS Date), N'2079-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (371, CAST(N'2022-04-19' AS Date), N'2079-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (372, CAST(N'2022-04-20' AS Date), N'2079-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (373, CAST(N'2022-04-21' AS Date), N'2079-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (374, CAST(N'2022-04-22' AS Date), N'2079-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (375, CAST(N'2022-04-23' AS Date), N'2079-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (376, CAST(N'2022-04-24' AS Date), N'2079-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (377, CAST(N'2022-04-25' AS Date), N'2079-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (378, CAST(N'2022-04-26' AS Date), N'2079-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (379, CAST(N'2022-04-27' AS Date), N'2079-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (380, CAST(N'2022-04-28' AS Date), N'2079-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (381, CAST(N'2022-04-29' AS Date), N'2079-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (382, CAST(N'2022-04-30' AS Date), N'2079-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (383, CAST(N'2022-05-01' AS Date), N'2079-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (384, CAST(N'2022-05-02' AS Date), N'2079-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (385, CAST(N'2022-05-03' AS Date), N'2079-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (386, CAST(N'2022-05-04' AS Date), N'2079-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (387, CAST(N'2022-05-05' AS Date), N'2079-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (388, CAST(N'2022-05-06' AS Date), N'2079-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (389, CAST(N'2022-05-07' AS Date), N'2079-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (390, CAST(N'2022-05-08' AS Date), N'2079-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (391, CAST(N'2022-05-09' AS Date), N'2079-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (392, CAST(N'2022-05-10' AS Date), N'2079-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (393, CAST(N'2022-05-11' AS Date), N'2079-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (394, CAST(N'2022-05-12' AS Date), N'2079-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (395, CAST(N'2022-05-13' AS Date), N'2079-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (396, CAST(N'2022-05-14' AS Date), N'2079-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (397, CAST(N'2022-05-15' AS Date), N'2079-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (398, CAST(N'2022-05-16' AS Date), N'2079-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (399, CAST(N'2022-05-17' AS Date), N'2079-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (400, CAST(N'2022-05-18' AS Date), N'2079-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (401, CAST(N'2022-05-19' AS Date), N'2079-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (402, CAST(N'2022-05-20' AS Date), N'2079-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (403, CAST(N'2022-05-21' AS Date), N'2079-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (404, CAST(N'2022-05-22' AS Date), N'2079-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (405, CAST(N'2022-05-23' AS Date), N'2079-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (406, CAST(N'2022-05-24' AS Date), N'2079-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (407, CAST(N'2022-05-25' AS Date), N'2079-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (408, CAST(N'2022-05-26' AS Date), N'2079-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (409, CAST(N'2022-05-27' AS Date), N'2079-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (410, CAST(N'2022-05-28' AS Date), N'2079-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (411, CAST(N'2022-05-29' AS Date), N'2079-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (412, CAST(N'2022-05-30' AS Date), N'2079-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (413, CAST(N'2022-05-31' AS Date), N'2079-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (414, CAST(N'2022-06-01' AS Date), N'2079-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (415, CAST(N'2022-06-02' AS Date), N'2079-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (416, CAST(N'2022-06-03' AS Date), N'2079-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (417, CAST(N'2022-06-04' AS Date), N'2079-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (418, CAST(N'2022-06-05' AS Date), N'2079-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (419, CAST(N'2022-06-06' AS Date), N'2079-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (420, CAST(N'2022-06-07' AS Date), N'2079-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (421, CAST(N'2022-06-08' AS Date), N'2079-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (422, CAST(N'2022-06-09' AS Date), N'2079-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (423, CAST(N'2022-06-10' AS Date), N'2079-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (424, CAST(N'2022-06-11' AS Date), N'2079-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (425, CAST(N'2022-06-12' AS Date), N'2079-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (426, CAST(N'2022-06-13' AS Date), N'2079-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (427, CAST(N'2022-06-14' AS Date), N'2079-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (428, CAST(N'2022-06-15' AS Date), N'2079-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (429, CAST(N'2022-06-16' AS Date), N'2079-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (430, CAST(N'2022-06-17' AS Date), N'2079-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (431, CAST(N'2022-06-18' AS Date), N'2079-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (432, CAST(N'2022-06-19' AS Date), N'2079-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (433, CAST(N'2022-06-20' AS Date), N'2079-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (434, CAST(N'2022-06-21' AS Date), N'2079-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (435, CAST(N'2022-06-22' AS Date), N'2079-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (436, CAST(N'2022-06-23' AS Date), N'2079-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (437, CAST(N'2022-06-24' AS Date), N'2079-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (438, CAST(N'2022-06-25' AS Date), N'2079-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (439, CAST(N'2022-06-26' AS Date), N'2079-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (440, CAST(N'2022-06-27' AS Date), N'2079-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (441, CAST(N'2022-06-28' AS Date), N'2079-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (442, CAST(N'2022-06-29' AS Date), N'2079-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (443, CAST(N'2022-06-30' AS Date), N'2079-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (444, CAST(N'2022-07-01' AS Date), N'2079-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (445, CAST(N'2022-07-02' AS Date), N'2079-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (446, CAST(N'2022-07-03' AS Date), N'2079-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (447, CAST(N'2022-07-04' AS Date), N'2079-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (448, CAST(N'2022-07-05' AS Date), N'2079-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (449, CAST(N'2022-07-06' AS Date), N'2079-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (450, CAST(N'2022-07-07' AS Date), N'2079-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (451, CAST(N'2022-07-08' AS Date), N'2079-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (452, CAST(N'2022-07-09' AS Date), N'2079-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (453, CAST(N'2022-07-10' AS Date), N'2079-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (454, CAST(N'2022-07-11' AS Date), N'2079-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (455, CAST(N'2022-07-12' AS Date), N'2079-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (456, CAST(N'2022-07-13' AS Date), N'2079-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (457, CAST(N'2022-07-14' AS Date), N'2079-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (458, CAST(N'2022-07-15' AS Date), N'2079-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (459, CAST(N'2022-07-16' AS Date), N'2079-03-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (460, CAST(N'2022-07-17' AS Date), N'2079-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (461, CAST(N'2022-07-18' AS Date), N'2079-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (462, CAST(N'2022-07-19' AS Date), N'2079-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (463, CAST(N'2022-07-20' AS Date), N'2079-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (464, CAST(N'2022-07-21' AS Date), N'2079-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (465, CAST(N'2022-07-22' AS Date), N'2079-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (466, CAST(N'2022-07-23' AS Date), N'2079-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (467, CAST(N'2022-07-24' AS Date), N'2079-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (468, CAST(N'2022-07-25' AS Date), N'2079-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (469, CAST(N'2022-07-26' AS Date), N'2079-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (470, CAST(N'2022-07-27' AS Date), N'2079-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (471, CAST(N'2022-07-28' AS Date), N'2079-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (472, CAST(N'2022-07-29' AS Date), N'2079-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (473, CAST(N'2022-07-30' AS Date), N'2079-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (474, CAST(N'2022-07-31' AS Date), N'2079-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (475, CAST(N'2022-08-01' AS Date), N'2079-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (476, CAST(N'2022-08-02' AS Date), N'2079-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (477, CAST(N'2022-08-03' AS Date), N'2079-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (478, CAST(N'2022-08-04' AS Date), N'2079-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (479, CAST(N'2022-08-05' AS Date), N'2079-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (480, CAST(N'2022-08-06' AS Date), N'2079-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (481, CAST(N'2022-08-07' AS Date), N'2079-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (482, CAST(N'2022-08-08' AS Date), N'2079-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (483, CAST(N'2022-08-09' AS Date), N'2079-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (484, CAST(N'2022-08-10' AS Date), N'2079-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (485, CAST(N'2022-08-11' AS Date), N'2079-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (486, CAST(N'2022-08-12' AS Date), N'2079-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (487, CAST(N'2022-08-13' AS Date), N'2079-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (488, CAST(N'2022-08-14' AS Date), N'2079-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (489, CAST(N'2022-08-15' AS Date), N'2079-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (490, CAST(N'2022-08-16' AS Date), N'2079-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (491, CAST(N'2022-08-17' AS Date), N'2079-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (492, CAST(N'2022-08-18' AS Date), N'2079-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (493, CAST(N'2022-08-19' AS Date), N'2079-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (494, CAST(N'2022-08-20' AS Date), N'2079-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (495, CAST(N'2022-08-21' AS Date), N'2079-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (496, CAST(N'2022-08-22' AS Date), N'2079-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (497, CAST(N'2022-08-23' AS Date), N'2079-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (498, CAST(N'2022-08-24' AS Date), N'2079-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (499, CAST(N'2022-08-25' AS Date), N'2079-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (500, CAST(N'2022-08-26' AS Date), N'2079-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (501, CAST(N'2022-08-27' AS Date), N'2079-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (502, CAST(N'2022-08-28' AS Date), N'2079-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (503, CAST(N'2022-08-29' AS Date), N'2079-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (504, CAST(N'2022-08-30' AS Date), N'2079-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (505, CAST(N'2022-08-31' AS Date), N'2079-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (506, CAST(N'2022-09-01' AS Date), N'2079-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (507, CAST(N'2022-09-02' AS Date), N'2079-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (508, CAST(N'2022-09-03' AS Date), N'2079-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (509, CAST(N'2022-09-04' AS Date), N'2079-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (510, CAST(N'2022-09-05' AS Date), N'2079-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (511, CAST(N'2022-09-06' AS Date), N'2079-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (512, CAST(N'2022-09-07' AS Date), N'2079-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (513, CAST(N'2022-09-08' AS Date), N'2079-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (514, CAST(N'2022-09-09' AS Date), N'2079-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (515, CAST(N'2022-09-10' AS Date), N'2079-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (516, CAST(N'2022-09-11' AS Date), N'2079-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (517, CAST(N'2022-09-12' AS Date), N'2079-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (518, CAST(N'2022-09-13' AS Date), N'2079-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (519, CAST(N'2022-09-14' AS Date), N'2079-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (520, CAST(N'2022-09-15' AS Date), N'2079-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (521, CAST(N'2022-09-16' AS Date), N'2079-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (522, CAST(N'2022-09-17' AS Date), N'2079-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (523, CAST(N'2022-09-18' AS Date), N'2079-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (524, CAST(N'2022-09-19' AS Date), N'2079-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (525, CAST(N'2022-09-20' AS Date), N'2079-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (526, CAST(N'2022-09-21' AS Date), N'2079-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (527, CAST(N'2022-09-22' AS Date), N'2079-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (528, CAST(N'2022-09-23' AS Date), N'2079-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (529, CAST(N'2022-09-24' AS Date), N'2079-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (530, CAST(N'2022-09-25' AS Date), N'2079-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (531, CAST(N'2022-09-26' AS Date), N'2079-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (532, CAST(N'2022-09-27' AS Date), N'2079-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (533, CAST(N'2022-09-28' AS Date), N'2079-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (534, CAST(N'2022-09-29' AS Date), N'2079-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (535, CAST(N'2022-09-30' AS Date), N'2079-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (536, CAST(N'2022-10-01' AS Date), N'2079-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (537, CAST(N'2022-10-02' AS Date), N'2079-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (538, CAST(N'2022-10-03' AS Date), N'2079-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (539, CAST(N'2022-10-04' AS Date), N'2079-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (540, CAST(N'2022-10-05' AS Date), N'2079-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (541, CAST(N'2022-10-06' AS Date), N'2079-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (542, CAST(N'2022-10-07' AS Date), N'2079-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (543, CAST(N'2022-10-08' AS Date), N'2079-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (544, CAST(N'2022-10-09' AS Date), N'2079-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (545, CAST(N'2022-10-10' AS Date), N'2079-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (546, CAST(N'2022-10-11' AS Date), N'2079-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (547, CAST(N'2022-10-12' AS Date), N'2079-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (548, CAST(N'2022-10-13' AS Date), N'2079-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (549, CAST(N'2022-10-14' AS Date), N'2079-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (550, CAST(N'2022-10-15' AS Date), N'2079-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (551, CAST(N'2022-10-16' AS Date), N'2079-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (552, CAST(N'2022-10-17' AS Date), N'2079-06-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (553, CAST(N'2022-10-18' AS Date), N'2079-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (554, CAST(N'2022-10-19' AS Date), N'2079-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (555, CAST(N'2022-10-20' AS Date), N'2079-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (556, CAST(N'2022-10-21' AS Date), N'2079-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (557, CAST(N'2022-10-22' AS Date), N'2079-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (558, CAST(N'2022-10-23' AS Date), N'2079-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (559, CAST(N'2022-10-24' AS Date), N'2079-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (560, CAST(N'2022-10-25' AS Date), N'2079-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (561, CAST(N'2022-10-26' AS Date), N'2079-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (562, CAST(N'2022-10-27' AS Date), N'2079-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (563, CAST(N'2022-10-28' AS Date), N'2079-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (564, CAST(N'2022-10-29' AS Date), N'2079-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (565, CAST(N'2022-10-30' AS Date), N'2079-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (566, CAST(N'2022-10-31' AS Date), N'2079-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (567, CAST(N'2022-11-01' AS Date), N'2079-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (568, CAST(N'2022-11-02' AS Date), N'2079-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (569, CAST(N'2022-11-03' AS Date), N'2079-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (570, CAST(N'2022-11-04' AS Date), N'2079-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (571, CAST(N'2022-11-05' AS Date), N'2079-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (572, CAST(N'2022-11-06' AS Date), N'2079-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (573, CAST(N'2022-11-07' AS Date), N'2079-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (574, CAST(N'2022-11-08' AS Date), N'2079-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (575, CAST(N'2022-11-09' AS Date), N'2079-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (576, CAST(N'2022-11-10' AS Date), N'2079-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (577, CAST(N'2022-11-11' AS Date), N'2079-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (578, CAST(N'2022-11-12' AS Date), N'2079-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (579, CAST(N'2022-11-13' AS Date), N'2079-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (580, CAST(N'2022-11-14' AS Date), N'2079-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (581, CAST(N'2022-11-15' AS Date), N'2079-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (582, CAST(N'2022-11-16' AS Date), N'2079-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (583, CAST(N'2022-11-17' AS Date), N'2079-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (584, CAST(N'2022-11-18' AS Date), N'2079-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (585, CAST(N'2022-11-19' AS Date), N'2079-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (586, CAST(N'2022-11-20' AS Date), N'2079-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (587, CAST(N'2022-11-21' AS Date), N'2079-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (588, CAST(N'2022-11-22' AS Date), N'2079-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (589, CAST(N'2022-11-23' AS Date), N'2079-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (590, CAST(N'2022-11-24' AS Date), N'2079-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (591, CAST(N'2022-11-25' AS Date), N'2079-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (592, CAST(N'2022-11-26' AS Date), N'2079-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (593, CAST(N'2022-11-27' AS Date), N'2079-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (594, CAST(N'2022-11-28' AS Date), N'2079-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (595, CAST(N'2022-11-29' AS Date), N'2079-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (596, CAST(N'2022-11-30' AS Date), N'2079-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (597, CAST(N'2022-12-01' AS Date), N'2079-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (598, CAST(N'2022-12-02' AS Date), N'2079-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (599, CAST(N'2022-12-03' AS Date), N'2079-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (600, CAST(N'2022-12-04' AS Date), N'2079-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (601, CAST(N'2022-12-05' AS Date), N'2079-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (602, CAST(N'2022-12-06' AS Date), N'2079-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (603, CAST(N'2022-12-07' AS Date), N'2079-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (604, CAST(N'2022-12-08' AS Date), N'2079-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (605, CAST(N'2022-12-09' AS Date), N'2079-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (606, CAST(N'2022-12-10' AS Date), N'2079-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (607, CAST(N'2022-12-11' AS Date), N'2079-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (608, CAST(N'2022-12-12' AS Date), N'2079-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (609, CAST(N'2022-12-13' AS Date), N'2079-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (610, CAST(N'2022-12-14' AS Date), N'2079-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (611, CAST(N'2022-12-15' AS Date), N'2079-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (612, CAST(N'2022-12-16' AS Date), N'2079-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (613, CAST(N'2022-12-17' AS Date), N'2079-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (614, CAST(N'2022-12-18' AS Date), N'2079-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (615, CAST(N'2022-12-19' AS Date), N'2079-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (616, CAST(N'2022-12-20' AS Date), N'2079-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (617, CAST(N'2022-12-21' AS Date), N'2079-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (618, CAST(N'2022-12-22' AS Date), N'2079-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (619, CAST(N'2022-12-23' AS Date), N'2079-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (620, CAST(N'2022-12-24' AS Date), N'2079-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (621, CAST(N'2022-12-25' AS Date), N'2079-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (622, CAST(N'2022-12-26' AS Date), N'2079-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (623, CAST(N'2022-12-27' AS Date), N'2079-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (624, CAST(N'2022-12-28' AS Date), N'2079-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (625, CAST(N'2022-12-29' AS Date), N'2079-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (626, CAST(N'2022-12-30' AS Date), N'2079-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (627, CAST(N'2022-12-31' AS Date), N'2079-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (628, CAST(N'2023-01-01' AS Date), N'2079-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (629, CAST(N'2023-01-02' AS Date), N'2079-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (630, CAST(N'2023-01-03' AS Date), N'2079-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (631, CAST(N'2023-01-04' AS Date), N'2079-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (632, CAST(N'2023-01-05' AS Date), N'2079-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (633, CAST(N'2023-01-06' AS Date), N'2079-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (634, CAST(N'2023-01-07' AS Date), N'2079-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (635, CAST(N'2023-01-08' AS Date), N'2079-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (636, CAST(N'2023-01-09' AS Date), N'2079-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (637, CAST(N'2023-01-10' AS Date), N'2079-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (638, CAST(N'2023-01-11' AS Date), N'2079-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (639, CAST(N'2023-01-12' AS Date), N'2079-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (640, CAST(N'2023-01-13' AS Date), N'2079-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (641, CAST(N'2023-01-14' AS Date), N'2079-09-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (642, CAST(N'2023-01-15' AS Date), N'2079-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (643, CAST(N'2023-01-16' AS Date), N'2079-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (644, CAST(N'2023-01-17' AS Date), N'2079-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (645, CAST(N'2023-01-18' AS Date), N'2079-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (646, CAST(N'2023-01-19' AS Date), N'2079-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (647, CAST(N'2023-01-20' AS Date), N'2079-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (648, CAST(N'2023-01-21' AS Date), N'2079-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (649, CAST(N'2023-01-22' AS Date), N'2079-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (650, CAST(N'2023-01-23' AS Date), N'2079-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (651, CAST(N'2023-01-24' AS Date), N'2079-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (652, CAST(N'2023-01-25' AS Date), N'2079-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (653, CAST(N'2023-01-26' AS Date), N'2079-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (654, CAST(N'2023-01-27' AS Date), N'2079-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (655, CAST(N'2023-01-28' AS Date), N'2079-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (656, CAST(N'2023-01-29' AS Date), N'2079-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (657, CAST(N'2023-01-30' AS Date), N'2079-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (658, CAST(N'2023-01-31' AS Date), N'2079-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (659, CAST(N'2023-02-01' AS Date), N'2079-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (660, CAST(N'2023-02-02' AS Date), N'2079-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (661, CAST(N'2023-02-03' AS Date), N'2079-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (662, CAST(N'2023-02-04' AS Date), N'2079-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (663, CAST(N'2023-02-05' AS Date), N'2079-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (664, CAST(N'2023-02-06' AS Date), N'2079-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (665, CAST(N'2023-02-07' AS Date), N'2079-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (666, CAST(N'2023-02-08' AS Date), N'2079-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (667, CAST(N'2023-02-09' AS Date), N'2079-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (668, CAST(N'2023-02-10' AS Date), N'2079-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (669, CAST(N'2023-02-11' AS Date), N'2079-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (670, CAST(N'2023-02-12' AS Date), N'2079-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (671, CAST(N'2023-02-13' AS Date), N'2079-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (672, CAST(N'2023-02-14' AS Date), N'2079-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (673, CAST(N'2023-02-15' AS Date), N'2079-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (674, CAST(N'2023-02-16' AS Date), N'2079-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (675, CAST(N'2023-02-17' AS Date), N'2079-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (676, CAST(N'2023-02-18' AS Date), N'2079-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (677, CAST(N'2023-02-19' AS Date), N'2079-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (678, CAST(N'2023-02-20' AS Date), N'2079-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (679, CAST(N'2023-02-21' AS Date), N'2079-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (680, CAST(N'2023-02-22' AS Date), N'2079-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (681, CAST(N'2023-02-23' AS Date), N'2079-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (682, CAST(N'2023-02-24' AS Date), N'2079-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (683, CAST(N'2023-02-25' AS Date), N'2079-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (684, CAST(N'2023-02-26' AS Date), N'2079-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (685, CAST(N'2023-02-27' AS Date), N'2079-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (686, CAST(N'2023-02-28' AS Date), N'2079-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (687, CAST(N'2023-03-01' AS Date), N'2079-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (688, CAST(N'2023-03-02' AS Date), N'2079-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (689, CAST(N'2023-03-03' AS Date), N'2079-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (690, CAST(N'2023-03-04' AS Date), N'2079-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (691, CAST(N'2023-03-05' AS Date), N'2079-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (692, CAST(N'2023-03-06' AS Date), N'2079-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (693, CAST(N'2023-03-07' AS Date), N'2079-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (694, CAST(N'2023-03-08' AS Date), N'2079-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (695, CAST(N'2023-03-09' AS Date), N'2079-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (696, CAST(N'2023-03-10' AS Date), N'2079-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (697, CAST(N'2023-03-11' AS Date), N'2079-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (698, CAST(N'2023-03-12' AS Date), N'2079-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (699, CAST(N'2023-03-13' AS Date), N'2079-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (700, CAST(N'2023-03-14' AS Date), N'2079-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (701, CAST(N'2023-03-15' AS Date), N'2079-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (702, CAST(N'2023-03-16' AS Date), N'2079-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (703, CAST(N'2023-03-17' AS Date), N'2079-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (704, CAST(N'2023-03-18' AS Date), N'2079-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (705, CAST(N'2023-03-19' AS Date), N'2079-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (706, CAST(N'2023-03-20' AS Date), N'2079-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (707, CAST(N'2023-03-21' AS Date), N'2079-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (708, CAST(N'2023-03-22' AS Date), N'2079-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (709, CAST(N'2023-03-23' AS Date), N'2079-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (710, CAST(N'2023-03-24' AS Date), N'2079-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (711, CAST(N'2023-03-25' AS Date), N'2079-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (712, CAST(N'2023-03-26' AS Date), N'2079-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (713, CAST(N'2023-03-27' AS Date), N'2079-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (714, CAST(N'2023-03-28' AS Date), N'2079-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (715, CAST(N'2023-03-29' AS Date), N'2079-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (716, CAST(N'2023-03-30' AS Date), N'2079-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (717, CAST(N'2023-03-31' AS Date), N'2079-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (718, CAST(N'2023-04-01' AS Date), N'2079-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (719, CAST(N'2023-04-02' AS Date), N'2079-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (720, CAST(N'2023-04-03' AS Date), N'2079-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (721, CAST(N'2023-04-04' AS Date), N'2079-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (722, CAST(N'2023-04-05' AS Date), N'2079-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (723, CAST(N'2023-04-06' AS Date), N'2079-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (724, CAST(N'2023-04-07' AS Date), N'2079-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (725, CAST(N'2023-04-08' AS Date), N'2079-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (726, CAST(N'2023-04-09' AS Date), N'2079-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (727, CAST(N'2023-04-10' AS Date), N'2079-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (728, CAST(N'2023-04-11' AS Date), N'2079-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (729, CAST(N'2023-04-12' AS Date), N'2079-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (730, CAST(N'2023-04-13' AS Date), N'2079-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (731, CAST(N'2023-04-14' AS Date), N'2080-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (732, CAST(N'2023-04-15' AS Date), N'2080-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (733, CAST(N'2023-04-16' AS Date), N'2080-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (734, CAST(N'2023-04-17' AS Date), N'2080-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (735, CAST(N'2023-04-18' AS Date), N'2080-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (736, CAST(N'2023-04-19' AS Date), N'2080-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (737, CAST(N'2023-04-20' AS Date), N'2080-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (738, CAST(N'2023-04-21' AS Date), N'2080-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (739, CAST(N'2023-04-22' AS Date), N'2080-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (740, CAST(N'2023-04-23' AS Date), N'2080-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (741, CAST(N'2023-04-24' AS Date), N'2080-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (742, CAST(N'2023-04-25' AS Date), N'2080-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (743, CAST(N'2023-04-26' AS Date), N'2080-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (744, CAST(N'2023-04-27' AS Date), N'2080-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (745, CAST(N'2023-04-28' AS Date), N'2080-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (746, CAST(N'2023-04-29' AS Date), N'2080-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (747, CAST(N'2023-04-30' AS Date), N'2080-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (748, CAST(N'2023-05-01' AS Date), N'2080-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (749, CAST(N'2023-05-02' AS Date), N'2080-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (750, CAST(N'2023-05-03' AS Date), N'2080-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (751, CAST(N'2023-05-04' AS Date), N'2080-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (752, CAST(N'2023-05-05' AS Date), N'2080-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (753, CAST(N'2023-05-06' AS Date), N'2080-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (754, CAST(N'2023-05-07' AS Date), N'2080-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (755, CAST(N'2023-05-08' AS Date), N'2080-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (756, CAST(N'2023-05-09' AS Date), N'2080-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (757, CAST(N'2023-05-10' AS Date), N'2080-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (758, CAST(N'2023-05-11' AS Date), N'2080-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (759, CAST(N'2023-05-12' AS Date), N'2080-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (760, CAST(N'2023-05-13' AS Date), N'2080-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (761, CAST(N'2023-05-14' AS Date), N'2080-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (762, CAST(N'2023-05-15' AS Date), N'2080-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (763, CAST(N'2023-05-16' AS Date), N'2080-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (764, CAST(N'2023-05-17' AS Date), N'2080-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (765, CAST(N'2023-05-18' AS Date), N'2080-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (766, CAST(N'2023-05-19' AS Date), N'2080-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (767, CAST(N'2023-05-20' AS Date), N'2080-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (768, CAST(N'2023-05-21' AS Date), N'2080-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (769, CAST(N'2023-05-22' AS Date), N'2080-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (770, CAST(N'2023-05-23' AS Date), N'2080-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (771, CAST(N'2023-05-24' AS Date), N'2080-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (772, CAST(N'2023-05-25' AS Date), N'2080-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (773, CAST(N'2023-05-26' AS Date), N'2080-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (774, CAST(N'2023-05-27' AS Date), N'2080-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (775, CAST(N'2023-05-28' AS Date), N'2080-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (776, CAST(N'2023-05-29' AS Date), N'2080-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (777, CAST(N'2023-05-30' AS Date), N'2080-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (778, CAST(N'2023-05-31' AS Date), N'2080-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (779, CAST(N'2023-06-01' AS Date), N'2080-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (780, CAST(N'2023-06-02' AS Date), N'2080-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (781, CAST(N'2023-06-03' AS Date), N'2080-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (782, CAST(N'2023-06-04' AS Date), N'2080-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (783, CAST(N'2023-06-05' AS Date), N'2080-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (784, CAST(N'2023-06-06' AS Date), N'2080-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (785, CAST(N'2023-06-07' AS Date), N'2080-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (786, CAST(N'2023-06-08' AS Date), N'2080-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (787, CAST(N'2023-06-09' AS Date), N'2080-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (788, CAST(N'2023-06-10' AS Date), N'2080-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (789, CAST(N'2023-06-11' AS Date), N'2080-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (790, CAST(N'2023-06-12' AS Date), N'2080-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (791, CAST(N'2023-06-13' AS Date), N'2080-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (792, CAST(N'2023-06-14' AS Date), N'2080-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (793, CAST(N'2023-06-15' AS Date), N'2080-02-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (794, CAST(N'2023-06-16' AS Date), N'2080-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (795, CAST(N'2023-06-17' AS Date), N'2080-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (796, CAST(N'2023-06-18' AS Date), N'2080-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (797, CAST(N'2023-06-19' AS Date), N'2080-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (798, CAST(N'2023-06-20' AS Date), N'2080-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (799, CAST(N'2023-06-21' AS Date), N'2080-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (800, CAST(N'2023-06-22' AS Date), N'2080-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (801, CAST(N'2023-06-23' AS Date), N'2080-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (802, CAST(N'2023-06-24' AS Date), N'2080-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (803, CAST(N'2023-06-25' AS Date), N'2080-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (804, CAST(N'2023-06-26' AS Date), N'2080-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (805, CAST(N'2023-06-27' AS Date), N'2080-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (806, CAST(N'2023-06-28' AS Date), N'2080-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (807, CAST(N'2023-06-29' AS Date), N'2080-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (808, CAST(N'2023-06-30' AS Date), N'2080-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (809, CAST(N'2023-07-01' AS Date), N'2080-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (810, CAST(N'2023-07-02' AS Date), N'2080-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (811, CAST(N'2023-07-03' AS Date), N'2080-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (812, CAST(N'2023-07-04' AS Date), N'2080-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (813, CAST(N'2023-07-05' AS Date), N'2080-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (814, CAST(N'2023-07-06' AS Date), N'2080-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (815, CAST(N'2023-07-07' AS Date), N'2080-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (816, CAST(N'2023-07-08' AS Date), N'2080-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (817, CAST(N'2023-07-09' AS Date), N'2080-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (818, CAST(N'2023-07-10' AS Date), N'2080-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (819, CAST(N'2023-07-11' AS Date), N'2080-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (820, CAST(N'2023-07-12' AS Date), N'2080-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (821, CAST(N'2023-07-13' AS Date), N'2080-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (822, CAST(N'2023-07-14' AS Date), N'2080-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (823, CAST(N'2023-07-15' AS Date), N'2080-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (824, CAST(N'2023-07-16' AS Date), N'2080-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (825, CAST(N'2023-07-17' AS Date), N'2080-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (826, CAST(N'2023-07-18' AS Date), N'2080-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (827, CAST(N'2023-07-19' AS Date), N'2080-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (828, CAST(N'2023-07-20' AS Date), N'2080-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (829, CAST(N'2023-07-21' AS Date), N'2080-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (830, CAST(N'2023-07-22' AS Date), N'2080-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (831, CAST(N'2023-07-23' AS Date), N'2080-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (832, CAST(N'2023-07-24' AS Date), N'2080-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (833, CAST(N'2023-07-25' AS Date), N'2080-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (834, CAST(N'2023-07-26' AS Date), N'2080-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (835, CAST(N'2023-07-27' AS Date), N'2080-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (836, CAST(N'2023-07-28' AS Date), N'2080-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (837, CAST(N'2023-07-29' AS Date), N'2080-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (838, CAST(N'2023-07-30' AS Date), N'2080-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (839, CAST(N'2023-07-31' AS Date), N'2080-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (840, CAST(N'2023-08-01' AS Date), N'2080-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (841, CAST(N'2023-08-02' AS Date), N'2080-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (842, CAST(N'2023-08-03' AS Date), N'2080-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (843, CAST(N'2023-08-04' AS Date), N'2080-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (844, CAST(N'2023-08-05' AS Date), N'2080-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (845, CAST(N'2023-08-06' AS Date), N'2080-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (846, CAST(N'2023-08-07' AS Date), N'2080-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (847, CAST(N'2023-08-08' AS Date), N'2080-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (848, CAST(N'2023-08-09' AS Date), N'2080-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (849, CAST(N'2023-08-10' AS Date), N'2080-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (850, CAST(N'2023-08-11' AS Date), N'2080-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (851, CAST(N'2023-08-12' AS Date), N'2080-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (852, CAST(N'2023-08-13' AS Date), N'2080-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (853, CAST(N'2023-08-14' AS Date), N'2080-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (854, CAST(N'2023-08-15' AS Date), N'2080-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (855, CAST(N'2023-08-16' AS Date), N'2080-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (856, CAST(N'2023-08-17' AS Date), N'2080-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (857, CAST(N'2023-08-18' AS Date), N'2080-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (858, CAST(N'2023-08-19' AS Date), N'2080-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (859, CAST(N'2023-08-20' AS Date), N'2080-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (860, CAST(N'2023-08-21' AS Date), N'2080-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (861, CAST(N'2023-08-22' AS Date), N'2080-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (862, CAST(N'2023-08-23' AS Date), N'2080-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (863, CAST(N'2023-08-24' AS Date), N'2080-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (864, CAST(N'2023-08-25' AS Date), N'2080-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (865, CAST(N'2023-08-26' AS Date), N'2080-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (866, CAST(N'2023-08-27' AS Date), N'2080-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (867, CAST(N'2023-08-28' AS Date), N'2080-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (868, CAST(N'2023-08-29' AS Date), N'2080-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (869, CAST(N'2023-08-30' AS Date), N'2080-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (870, CAST(N'2023-08-31' AS Date), N'2080-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (871, CAST(N'2023-09-01' AS Date), N'2080-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (872, CAST(N'2023-09-02' AS Date), N'2080-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (873, CAST(N'2023-09-03' AS Date), N'2080-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (874, CAST(N'2023-09-04' AS Date), N'2080-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (875, CAST(N'2023-09-05' AS Date), N'2080-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (876, CAST(N'2023-09-06' AS Date), N'2080-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (877, CAST(N'2023-09-07' AS Date), N'2080-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (878, CAST(N'2023-09-08' AS Date), N'2080-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (879, CAST(N'2023-09-09' AS Date), N'2080-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (880, CAST(N'2023-09-10' AS Date), N'2080-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (881, CAST(N'2023-09-11' AS Date), N'2080-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (882, CAST(N'2023-09-12' AS Date), N'2080-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (883, CAST(N'2023-09-13' AS Date), N'2080-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (884, CAST(N'2023-09-14' AS Date), N'2080-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (885, CAST(N'2023-09-15' AS Date), N'2080-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (886, CAST(N'2023-09-16' AS Date), N'2080-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (887, CAST(N'2023-09-17' AS Date), N'2080-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (888, CAST(N'2023-09-18' AS Date), N'2080-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (889, CAST(N'2023-09-19' AS Date), N'2080-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (890, CAST(N'2023-09-20' AS Date), N'2080-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (891, CAST(N'2023-09-21' AS Date), N'2080-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (892, CAST(N'2023-09-22' AS Date), N'2080-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (893, CAST(N'2023-09-23' AS Date), N'2080-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (894, CAST(N'2023-09-24' AS Date), N'2080-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (895, CAST(N'2023-09-25' AS Date), N'2080-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (896, CAST(N'2023-09-26' AS Date), N'2080-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (897, CAST(N'2023-09-27' AS Date), N'2080-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (898, CAST(N'2023-09-28' AS Date), N'2080-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (899, CAST(N'2023-09-29' AS Date), N'2080-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (900, CAST(N'2023-09-30' AS Date), N'2080-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (901, CAST(N'2023-10-01' AS Date), N'2080-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (902, CAST(N'2023-10-02' AS Date), N'2080-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (903, CAST(N'2023-10-03' AS Date), N'2080-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (904, CAST(N'2023-10-04' AS Date), N'2080-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (905, CAST(N'2023-10-05' AS Date), N'2080-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (906, CAST(N'2023-10-06' AS Date), N'2080-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (907, CAST(N'2023-10-07' AS Date), N'2080-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (908, CAST(N'2023-10-08' AS Date), N'2080-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (909, CAST(N'2023-10-09' AS Date), N'2080-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (910, CAST(N'2023-10-10' AS Date), N'2080-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (911, CAST(N'2023-10-11' AS Date), N'2080-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (912, CAST(N'2023-10-12' AS Date), N'2080-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (913, CAST(N'2023-10-13' AS Date), N'2080-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (914, CAST(N'2023-10-14' AS Date), N'2080-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (915, CAST(N'2023-10-15' AS Date), N'2080-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (916, CAST(N'2023-10-16' AS Date), N'2080-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (917, CAST(N'2023-10-17' AS Date), N'2080-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (918, CAST(N'2023-10-18' AS Date), N'2080-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (919, CAST(N'2023-10-19' AS Date), N'2080-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (920, CAST(N'2023-10-20' AS Date), N'2080-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (921, CAST(N'2023-10-21' AS Date), N'2080-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (922, CAST(N'2023-10-22' AS Date), N'2080-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (923, CAST(N'2023-10-23' AS Date), N'2080-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (924, CAST(N'2023-10-24' AS Date), N'2080-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (925, CAST(N'2023-10-25' AS Date), N'2080-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (926, CAST(N'2023-10-26' AS Date), N'2080-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (927, CAST(N'2023-10-27' AS Date), N'2080-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (928, CAST(N'2023-10-28' AS Date), N'2080-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (929, CAST(N'2023-10-29' AS Date), N'2080-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (930, CAST(N'2023-10-30' AS Date), N'2080-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (931, CAST(N'2023-10-31' AS Date), N'2080-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (932, CAST(N'2023-11-01' AS Date), N'2080-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (933, CAST(N'2023-11-02' AS Date), N'2080-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (934, CAST(N'2023-11-03' AS Date), N'2080-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (935, CAST(N'2023-11-04' AS Date), N'2080-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (936, CAST(N'2023-11-05' AS Date), N'2080-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (937, CAST(N'2023-11-06' AS Date), N'2080-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (938, CAST(N'2023-11-07' AS Date), N'2080-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (939, CAST(N'2023-11-08' AS Date), N'2080-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (940, CAST(N'2023-11-09' AS Date), N'2080-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (941, CAST(N'2023-11-10' AS Date), N'2080-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (942, CAST(N'2023-11-11' AS Date), N'2080-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (943, CAST(N'2023-11-12' AS Date), N'2080-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (944, CAST(N'2023-11-13' AS Date), N'2080-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (945, CAST(N'2023-11-14' AS Date), N'2080-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (946, CAST(N'2023-11-15' AS Date), N'2080-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (947, CAST(N'2023-11-16' AS Date), N'2080-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (948, CAST(N'2023-11-17' AS Date), N'2080-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (949, CAST(N'2023-11-18' AS Date), N'2080-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (950, CAST(N'2023-11-19' AS Date), N'2080-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (951, CAST(N'2023-11-20' AS Date), N'2080-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (952, CAST(N'2023-11-21' AS Date), N'2080-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (953, CAST(N'2023-11-22' AS Date), N'2080-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (954, CAST(N'2023-11-23' AS Date), N'2080-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (955, CAST(N'2023-11-24' AS Date), N'2080-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (956, CAST(N'2023-11-25' AS Date), N'2080-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (957, CAST(N'2023-11-26' AS Date), N'2080-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (958, CAST(N'2023-11-27' AS Date), N'2080-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (959, CAST(N'2023-11-28' AS Date), N'2080-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (960, CAST(N'2023-11-29' AS Date), N'2080-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (961, CAST(N'2023-11-30' AS Date), N'2080-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (962, CAST(N'2023-12-01' AS Date), N'2080-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (963, CAST(N'2023-12-02' AS Date), N'2080-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (964, CAST(N'2023-12-03' AS Date), N'2080-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (965, CAST(N'2023-12-04' AS Date), N'2080-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (966, CAST(N'2023-12-05' AS Date), N'2080-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (967, CAST(N'2023-12-06' AS Date), N'2080-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (968, CAST(N'2023-12-07' AS Date), N'2080-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (969, CAST(N'2023-12-08' AS Date), N'2080-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (970, CAST(N'2023-12-09' AS Date), N'2080-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (971, CAST(N'2023-12-10' AS Date), N'2080-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (972, CAST(N'2023-12-11' AS Date), N'2080-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (973, CAST(N'2023-12-12' AS Date), N'2080-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (974, CAST(N'2023-12-13' AS Date), N'2080-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (975, CAST(N'2023-12-14' AS Date), N'2080-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (976, CAST(N'2023-12-15' AS Date), N'2080-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (977, CAST(N'2023-12-16' AS Date), N'2080-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (978, CAST(N'2023-12-17' AS Date), N'2080-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (979, CAST(N'2023-12-18' AS Date), N'2080-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (980, CAST(N'2023-12-19' AS Date), N'2080-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (981, CAST(N'2023-12-20' AS Date), N'2080-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (982, CAST(N'2023-12-21' AS Date), N'2080-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (983, CAST(N'2023-12-22' AS Date), N'2080-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (984, CAST(N'2023-12-23' AS Date), N'2080-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (985, CAST(N'2023-12-24' AS Date), N'2080-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (986, CAST(N'2023-12-25' AS Date), N'2080-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (987, CAST(N'2023-12-26' AS Date), N'2080-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (988, CAST(N'2023-12-27' AS Date), N'2080-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (989, CAST(N'2023-12-28' AS Date), N'2080-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (990, CAST(N'2023-12-29' AS Date), N'2080-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (991, CAST(N'2023-12-30' AS Date), N'2080-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (992, CAST(N'2023-12-31' AS Date), N'2080-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (993, CAST(N'2024-01-01' AS Date), N'2080-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (994, CAST(N'2024-01-02' AS Date), N'2080-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (995, CAST(N'2024-01-03' AS Date), N'2080-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (996, CAST(N'2024-01-04' AS Date), N'2080-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (997, CAST(N'2024-01-05' AS Date), N'2080-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (998, CAST(N'2024-01-06' AS Date), N'2080-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (999, CAST(N'2024-01-07' AS Date), N'2080-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1000, CAST(N'2024-01-08' AS Date), N'2080-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1001, CAST(N'2024-01-09' AS Date), N'2080-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1002, CAST(N'2024-01-10' AS Date), N'2080-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1003, CAST(N'2024-01-11' AS Date), N'2080-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1004, CAST(N'2024-01-12' AS Date), N'2080-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1005, CAST(N'2024-01-13' AS Date), N'2080-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1006, CAST(N'2024-01-14' AS Date), N'2080-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1007, CAST(N'2024-01-15' AS Date), N'2080-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1008, CAST(N'2024-01-16' AS Date), N'2080-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1009, CAST(N'2024-01-17' AS Date), N'2080-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1010, CAST(N'2024-01-18' AS Date), N'2080-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1011, CAST(N'2024-01-19' AS Date), N'2080-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1012, CAST(N'2024-01-20' AS Date), N'2080-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1013, CAST(N'2024-01-21' AS Date), N'2080-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1014, CAST(N'2024-01-22' AS Date), N'2080-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1015, CAST(N'2024-01-23' AS Date), N'2080-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1016, CAST(N'2024-01-24' AS Date), N'2080-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1017, CAST(N'2024-01-25' AS Date), N'2080-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1018, CAST(N'2024-01-26' AS Date), N'2080-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1019, CAST(N'2024-01-27' AS Date), N'2080-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1020, CAST(N'2024-01-28' AS Date), N'2080-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1021, CAST(N'2024-01-29' AS Date), N'2080-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1022, CAST(N'2024-01-30' AS Date), N'2080-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1023, CAST(N'2024-01-31' AS Date), N'2080-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1024, CAST(N'2024-02-01' AS Date), N'2080-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1025, CAST(N'2024-02-02' AS Date), N'2080-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1026, CAST(N'2024-02-03' AS Date), N'2080-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1027, CAST(N'2024-02-04' AS Date), N'2080-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1028, CAST(N'2024-02-05' AS Date), N'2080-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1029, CAST(N'2024-02-06' AS Date), N'2080-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1030, CAST(N'2024-02-07' AS Date), N'2080-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1031, CAST(N'2024-02-08' AS Date), N'2080-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1032, CAST(N'2024-02-09' AS Date), N'2080-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1033, CAST(N'2024-02-10' AS Date), N'2080-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1034, CAST(N'2024-02-11' AS Date), N'2080-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1035, CAST(N'2024-02-12' AS Date), N'2080-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1036, CAST(N'2024-02-13' AS Date), N'2080-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1037, CAST(N'2024-02-14' AS Date), N'2080-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1038, CAST(N'2024-02-15' AS Date), N'2080-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1039, CAST(N'2024-02-16' AS Date), N'2080-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1040, CAST(N'2024-02-17' AS Date), N'2080-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1041, CAST(N'2024-02-18' AS Date), N'2080-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1042, CAST(N'2024-02-19' AS Date), N'2080-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1043, CAST(N'2024-02-20' AS Date), N'2080-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1044, CAST(N'2024-02-21' AS Date), N'2080-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1045, CAST(N'2024-02-22' AS Date), N'2080-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1046, CAST(N'2024-02-23' AS Date), N'2080-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1047, CAST(N'2024-02-24' AS Date), N'2080-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1048, CAST(N'2024-02-25' AS Date), N'2080-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1049, CAST(N'2024-02-26' AS Date), N'2080-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1050, CAST(N'2024-02-27' AS Date), N'2080-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1051, CAST(N'2024-02-28' AS Date), N'2080-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1052, CAST(N'2024-02-29' AS Date), N'2080-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1053, CAST(N'2024-03-01' AS Date), N'2080-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1054, CAST(N'2024-03-02' AS Date), N'2080-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1055, CAST(N'2024-03-03' AS Date), N'2080-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1056, CAST(N'2024-03-04' AS Date), N'2080-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1057, CAST(N'2024-03-05' AS Date), N'2080-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1058, CAST(N'2024-03-06' AS Date), N'2080-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1059, CAST(N'2024-03-07' AS Date), N'2080-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1060, CAST(N'2024-03-08' AS Date), N'2080-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1061, CAST(N'2024-03-09' AS Date), N'2080-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1062, CAST(N'2024-03-10' AS Date), N'2080-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1063, CAST(N'2024-03-11' AS Date), N'2080-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1064, CAST(N'2024-03-12' AS Date), N'2080-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1065, CAST(N'2024-03-13' AS Date), N'2080-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1066, CAST(N'2024-03-14' AS Date), N'2080-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1067, CAST(N'2024-03-15' AS Date), N'2080-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1068, CAST(N'2024-03-16' AS Date), N'2080-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1069, CAST(N'2024-03-17' AS Date), N'2080-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1070, CAST(N'2024-03-18' AS Date), N'2080-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1071, CAST(N'2024-03-19' AS Date), N'2080-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1072, CAST(N'2024-03-20' AS Date), N'2080-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1073, CAST(N'2024-03-21' AS Date), N'2080-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1074, CAST(N'2024-03-22' AS Date), N'2080-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1075, CAST(N'2024-03-23' AS Date), N'2080-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1076, CAST(N'2024-03-24' AS Date), N'2080-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1077, CAST(N'2024-03-25' AS Date), N'2080-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1078, CAST(N'2024-03-26' AS Date), N'2080-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1079, CAST(N'2024-03-27' AS Date), N'2080-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1080, CAST(N'2024-03-28' AS Date), N'2080-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1081, CAST(N'2024-03-29' AS Date), N'2080-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1082, CAST(N'2024-03-30' AS Date), N'2080-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1083, CAST(N'2024-03-31' AS Date), N'2080-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1084, CAST(N'2024-04-01' AS Date), N'2080-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1085, CAST(N'2024-04-02' AS Date), N'2080-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1086, CAST(N'2024-04-03' AS Date), N'2080-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1087, CAST(N'2024-04-04' AS Date), N'2080-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1088, CAST(N'2024-04-05' AS Date), N'2080-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1089, CAST(N'2024-04-06' AS Date), N'2080-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1090, CAST(N'2024-04-07' AS Date), N'2080-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1091, CAST(N'2024-04-08' AS Date), N'2080-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1092, CAST(N'2024-04-09' AS Date), N'2080-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1093, CAST(N'2024-04-10' AS Date), N'2080-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1094, CAST(N'2024-04-11' AS Date), N'2080-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1095, CAST(N'2024-04-12' AS Date), N'2080-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1096, CAST(N'2024-04-13' AS Date), N'2081-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1097, CAST(N'2024-04-14' AS Date), N'2081-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1098, CAST(N'2024-04-15' AS Date), N'2081-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1099, CAST(N'2024-04-16' AS Date), N'2081-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1100, CAST(N'2024-04-17' AS Date), N'2081-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1101, CAST(N'2024-04-18' AS Date), N'2081-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1102, CAST(N'2024-04-19' AS Date), N'2081-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1103, CAST(N'2024-04-20' AS Date), N'2081-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1104, CAST(N'2024-04-21' AS Date), N'2081-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1105, CAST(N'2024-04-22' AS Date), N'2081-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1106, CAST(N'2024-04-23' AS Date), N'2081-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1107, CAST(N'2024-04-24' AS Date), N'2081-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1108, CAST(N'2024-04-25' AS Date), N'2081-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1109, CAST(N'2024-04-26' AS Date), N'2081-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1110, CAST(N'2024-04-27' AS Date), N'2081-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1111, CAST(N'2024-04-28' AS Date), N'2081-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1112, CAST(N'2024-04-29' AS Date), N'2081-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1113, CAST(N'2024-04-30' AS Date), N'2081-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1114, CAST(N'2024-05-01' AS Date), N'2081-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1115, CAST(N'2024-05-02' AS Date), N'2081-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1116, CAST(N'2024-05-03' AS Date), N'2081-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1117, CAST(N'2024-05-04' AS Date), N'2081-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1118, CAST(N'2024-05-05' AS Date), N'2081-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1119, CAST(N'2024-05-06' AS Date), N'2081-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1120, CAST(N'2024-05-07' AS Date), N'2081-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1121, CAST(N'2024-05-08' AS Date), N'2081-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1122, CAST(N'2024-05-09' AS Date), N'2081-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1123, CAST(N'2024-05-10' AS Date), N'2081-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1124, CAST(N'2024-05-11' AS Date), N'2081-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1125, CAST(N'2024-05-12' AS Date), N'2081-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1126, CAST(N'2024-05-13' AS Date), N'2081-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1127, CAST(N'2024-05-14' AS Date), N'2081-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1128, CAST(N'2024-05-15' AS Date), N'2081-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1129, CAST(N'2024-05-16' AS Date), N'2081-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1130, CAST(N'2024-05-17' AS Date), N'2081-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1131, CAST(N'2024-05-18' AS Date), N'2081-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1132, CAST(N'2024-05-19' AS Date), N'2081-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1133, CAST(N'2024-05-20' AS Date), N'2081-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1134, CAST(N'2024-05-21' AS Date), N'2081-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1135, CAST(N'2024-05-22' AS Date), N'2081-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1136, CAST(N'2024-05-23' AS Date), N'2081-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1137, CAST(N'2024-05-24' AS Date), N'2081-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1138, CAST(N'2024-05-25' AS Date), N'2081-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1139, CAST(N'2024-05-26' AS Date), N'2081-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1140, CAST(N'2024-05-27' AS Date), N'2081-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1141, CAST(N'2024-05-28' AS Date), N'2081-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1142, CAST(N'2024-05-29' AS Date), N'2081-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1143, CAST(N'2024-05-30' AS Date), N'2081-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1144, CAST(N'2024-05-31' AS Date), N'2081-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1145, CAST(N'2024-06-01' AS Date), N'2081-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1146, CAST(N'2024-06-02' AS Date), N'2081-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1147, CAST(N'2024-06-03' AS Date), N'2081-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1148, CAST(N'2024-06-04' AS Date), N'2081-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1149, CAST(N'2024-06-05' AS Date), N'2081-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1150, CAST(N'2024-06-06' AS Date), N'2081-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1151, CAST(N'2024-06-07' AS Date), N'2081-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1152, CAST(N'2024-06-08' AS Date), N'2081-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1153, CAST(N'2024-06-09' AS Date), N'2081-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1154, CAST(N'2024-06-10' AS Date), N'2081-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1155, CAST(N'2024-06-11' AS Date), N'2081-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1156, CAST(N'2024-06-12' AS Date), N'2081-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1157, CAST(N'2024-06-13' AS Date), N'2081-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1158, CAST(N'2024-06-14' AS Date), N'2081-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1159, CAST(N'2024-06-15' AS Date), N'2081-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1160, CAST(N'2024-06-16' AS Date), N'2081-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1161, CAST(N'2024-06-17' AS Date), N'2081-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1162, CAST(N'2024-06-18' AS Date), N'2081-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1163, CAST(N'2024-06-19' AS Date), N'2081-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1164, CAST(N'2024-06-20' AS Date), N'2081-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1165, CAST(N'2024-06-21' AS Date), N'2081-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1166, CAST(N'2024-06-22' AS Date), N'2081-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1167, CAST(N'2024-06-23' AS Date), N'2081-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1168, CAST(N'2024-06-24' AS Date), N'2081-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1169, CAST(N'2024-06-25' AS Date), N'2081-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1170, CAST(N'2024-06-26' AS Date), N'2081-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1171, CAST(N'2024-06-27' AS Date), N'2081-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1172, CAST(N'2024-06-28' AS Date), N'2081-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1173, CAST(N'2024-06-29' AS Date), N'2081-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1174, CAST(N'2024-06-30' AS Date), N'2081-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1175, CAST(N'2024-07-01' AS Date), N'2081-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1176, CAST(N'2024-07-02' AS Date), N'2081-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1177, CAST(N'2024-07-03' AS Date), N'2081-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1178, CAST(N'2024-07-04' AS Date), N'2081-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1179, CAST(N'2024-07-05' AS Date), N'2081-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1180, CAST(N'2024-07-06' AS Date), N'2081-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1181, CAST(N'2024-07-07' AS Date), N'2081-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1182, CAST(N'2024-07-08' AS Date), N'2081-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1183, CAST(N'2024-07-09' AS Date), N'2081-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1184, CAST(N'2024-07-10' AS Date), N'2081-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1185, CAST(N'2024-07-11' AS Date), N'2081-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1186, CAST(N'2024-07-12' AS Date), N'2081-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1187, CAST(N'2024-07-13' AS Date), N'2081-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1188, CAST(N'2024-07-14' AS Date), N'2081-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1189, CAST(N'2024-07-15' AS Date), N'2081-03-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1190, CAST(N'2024-07-16' AS Date), N'2081-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1191, CAST(N'2024-07-17' AS Date), N'2081-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1192, CAST(N'2024-07-18' AS Date), N'2081-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1193, CAST(N'2024-07-19' AS Date), N'2081-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1194, CAST(N'2024-07-20' AS Date), N'2081-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1195, CAST(N'2024-07-21' AS Date), N'2081-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1196, CAST(N'2024-07-22' AS Date), N'2081-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1197, CAST(N'2024-07-23' AS Date), N'2081-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1198, CAST(N'2024-07-24' AS Date), N'2081-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1199, CAST(N'2024-07-25' AS Date), N'2081-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1200, CAST(N'2024-07-26' AS Date), N'2081-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1201, CAST(N'2024-07-27' AS Date), N'2081-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1202, CAST(N'2024-07-28' AS Date), N'2081-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1203, CAST(N'2024-07-29' AS Date), N'2081-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1204, CAST(N'2024-07-30' AS Date), N'2081-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1205, CAST(N'2024-07-31' AS Date), N'2081-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1206, CAST(N'2024-08-01' AS Date), N'2081-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1207, CAST(N'2024-08-02' AS Date), N'2081-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1208, CAST(N'2024-08-03' AS Date), N'2081-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1209, CAST(N'2024-08-04' AS Date), N'2081-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1210, CAST(N'2024-08-05' AS Date), N'2081-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1211, CAST(N'2024-08-06' AS Date), N'2081-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1212, CAST(N'2024-08-07' AS Date), N'2081-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1213, CAST(N'2024-08-08' AS Date), N'2081-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1214, CAST(N'2024-08-09' AS Date), N'2081-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1215, CAST(N'2024-08-10' AS Date), N'2081-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1216, CAST(N'2024-08-11' AS Date), N'2081-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1217, CAST(N'2024-08-12' AS Date), N'2081-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1218, CAST(N'2031-04-13' AS Date), N'2087-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1219, CAST(N'2031-04-14' AS Date), N'2087-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1220, CAST(N'2031-04-15' AS Date), N'2087-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1221, CAST(N'2031-04-16' AS Date), N'2088-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1222, CAST(N'2031-04-17' AS Date), N'2088-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1223, CAST(N'2031-04-18' AS Date), N'2088-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1224, CAST(N'2031-04-19' AS Date), N'2088-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1225, CAST(N'2031-04-20' AS Date), N'2088-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1226, CAST(N'2031-04-21' AS Date), N'2088-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1227, CAST(N'2031-04-22' AS Date), N'2088-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1228, CAST(N'2031-04-23' AS Date), N'2088-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1229, CAST(N'2031-04-24' AS Date), N'2088-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1230, CAST(N'2031-04-25' AS Date), N'2088-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1231, CAST(N'2031-04-26' AS Date), N'2088-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1232, CAST(N'2031-04-27' AS Date), N'2088-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1233, CAST(N'2031-04-28' AS Date), N'2088-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1234, CAST(N'2031-04-29' AS Date), N'2088-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1235, CAST(N'2031-04-30' AS Date), N'2088-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1236, CAST(N'2031-05-01' AS Date), N'2088-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1237, CAST(N'2031-05-02' AS Date), N'2088-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1238, CAST(N'2031-05-03' AS Date), N'2088-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1239, CAST(N'2031-05-04' AS Date), N'2088-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1240, CAST(N'2031-05-05' AS Date), N'2088-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1241, CAST(N'2031-05-06' AS Date), N'2088-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1242, CAST(N'2031-05-07' AS Date), N'2088-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1243, CAST(N'2031-05-08' AS Date), N'2088-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1244, CAST(N'2031-05-09' AS Date), N'2088-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1245, CAST(N'2031-05-10' AS Date), N'2088-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1246, CAST(N'2031-05-11' AS Date), N'2088-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1247, CAST(N'2031-05-12' AS Date), N'2088-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1248, CAST(N'2031-05-13' AS Date), N'2088-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1249, CAST(N'2031-05-14' AS Date), N'2088-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1250, CAST(N'2031-05-15' AS Date), N'2088-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1251, CAST(N'2031-05-16' AS Date), N'2088-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1252, CAST(N'2031-05-17' AS Date), N'2088-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1253, CAST(N'2031-05-18' AS Date), N'2088-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1254, CAST(N'2031-05-19' AS Date), N'2088-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1255, CAST(N'2031-05-20' AS Date), N'2088-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1256, CAST(N'2031-05-21' AS Date), N'2088-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1257, CAST(N'2031-05-22' AS Date), N'2088-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1258, CAST(N'2031-05-23' AS Date), N'2088-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1259, CAST(N'2031-05-24' AS Date), N'2088-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1260, CAST(N'2031-05-25' AS Date), N'2088-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1261, CAST(N'2031-05-26' AS Date), N'2088-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1262, CAST(N'2031-05-27' AS Date), N'2088-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1263, CAST(N'2031-05-28' AS Date), N'2088-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1264, CAST(N'2031-05-29' AS Date), N'2088-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1265, CAST(N'2031-05-30' AS Date), N'2088-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1266, CAST(N'2031-05-31' AS Date), N'2088-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1267, CAST(N'2031-06-01' AS Date), N'2088-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1268, CAST(N'2031-06-02' AS Date), N'2088-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1269, CAST(N'2031-06-03' AS Date), N'2088-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1270, CAST(N'2031-06-04' AS Date), N'2088-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1271, CAST(N'2031-06-05' AS Date), N'2088-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1272, CAST(N'2031-06-06' AS Date), N'2088-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1273, CAST(N'2031-06-07' AS Date), N'2088-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1274, CAST(N'2031-06-08' AS Date), N'2088-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1275, CAST(N'2031-06-09' AS Date), N'2088-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1276, CAST(N'2031-06-10' AS Date), N'2088-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1277, CAST(N'2031-06-11' AS Date), N'2088-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1278, CAST(N'2031-06-12' AS Date), N'2088-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1279, CAST(N'2031-06-13' AS Date), N'2088-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1280, CAST(N'2031-06-14' AS Date), N'2088-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1281, CAST(N'2031-06-15' AS Date), N'2088-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1282, CAST(N'2031-06-16' AS Date), N'2088-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1283, CAST(N'2031-06-17' AS Date), N'2088-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1284, CAST(N'2031-06-18' AS Date), N'2088-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1285, CAST(N'2031-06-19' AS Date), N'2088-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1286, CAST(N'2031-06-20' AS Date), N'2088-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1287, CAST(N'2031-06-21' AS Date), N'2088-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1288, CAST(N'2031-06-22' AS Date), N'2088-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1289, CAST(N'2031-06-23' AS Date), N'2088-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1290, CAST(N'2031-06-24' AS Date), N'2088-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1291, CAST(N'2031-06-25' AS Date), N'2088-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1292, CAST(N'2031-06-26' AS Date), N'2088-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1293, CAST(N'2031-06-27' AS Date), N'2088-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1294, CAST(N'2031-06-28' AS Date), N'2088-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1295, CAST(N'2031-06-29' AS Date), N'2088-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1296, CAST(N'2031-06-30' AS Date), N'2088-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1297, CAST(N'2031-07-01' AS Date), N'2088-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1298, CAST(N'2031-07-02' AS Date), N'2088-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1299, CAST(N'2031-07-03' AS Date), N'2088-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1300, CAST(N'2031-07-04' AS Date), N'2088-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1301, CAST(N'2031-07-05' AS Date), N'2088-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1302, CAST(N'2031-07-06' AS Date), N'2088-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1303, CAST(N'2031-07-07' AS Date), N'2088-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1304, CAST(N'2031-07-08' AS Date), N'2088-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1305, CAST(N'2031-07-09' AS Date), N'2088-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1306, CAST(N'2031-07-10' AS Date), N'2088-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1307, CAST(N'2031-07-11' AS Date), N'2088-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1308, CAST(N'2031-07-12' AS Date), N'2088-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1309, CAST(N'2031-07-13' AS Date), N'2088-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1310, CAST(N'2031-07-14' AS Date), N'2088-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1311, CAST(N'2031-07-15' AS Date), N'2088-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1312, CAST(N'2031-07-16' AS Date), N'2088-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1313, CAST(N'2031-07-17' AS Date), N'2088-03-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1314, CAST(N'2031-07-18' AS Date), N'2088-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1315, CAST(N'2031-07-19' AS Date), N'2088-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1316, CAST(N'2031-07-20' AS Date), N'2088-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1317, CAST(N'2031-07-21' AS Date), N'2088-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1318, CAST(N'2031-07-22' AS Date), N'2088-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1319, CAST(N'2031-07-23' AS Date), N'2088-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1320, CAST(N'2031-07-24' AS Date), N'2088-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1321, CAST(N'2031-07-25' AS Date), N'2088-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1322, CAST(N'2031-07-26' AS Date), N'2088-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1323, CAST(N'2031-07-27' AS Date), N'2088-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1324, CAST(N'2031-07-28' AS Date), N'2088-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1325, CAST(N'2031-07-29' AS Date), N'2088-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1326, CAST(N'2031-07-30' AS Date), N'2088-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1327, CAST(N'2031-07-31' AS Date), N'2088-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1328, CAST(N'2031-08-01' AS Date), N'2088-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1329, CAST(N'2031-08-02' AS Date), N'2088-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1330, CAST(N'2031-08-03' AS Date), N'2088-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1331, CAST(N'2031-08-04' AS Date), N'2088-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1332, CAST(N'2031-08-05' AS Date), N'2088-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1333, CAST(N'2031-08-06' AS Date), N'2088-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1334, CAST(N'2031-08-07' AS Date), N'2088-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1335, CAST(N'2031-08-08' AS Date), N'2088-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1336, CAST(N'2031-08-09' AS Date), N'2088-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1337, CAST(N'2031-08-10' AS Date), N'2088-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1338, CAST(N'2031-08-11' AS Date), N'2088-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1339, CAST(N'2031-08-12' AS Date), N'2088-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1340, CAST(N'2031-08-13' AS Date), N'2088-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1341, CAST(N'2031-08-14' AS Date), N'2088-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1342, CAST(N'2031-08-15' AS Date), N'2088-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1343, CAST(N'2031-08-16' AS Date), N'2088-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1344, CAST(N'2031-08-17' AS Date), N'2088-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1345, CAST(N'2031-08-18' AS Date), N'2088-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1346, CAST(N'2031-08-19' AS Date), N'2088-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1347, CAST(N'2031-08-20' AS Date), N'2088-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1348, CAST(N'2031-08-21' AS Date), N'2088-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1349, CAST(N'2031-08-22' AS Date), N'2088-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1350, CAST(N'2031-08-23' AS Date), N'2088-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1351, CAST(N'2031-08-24' AS Date), N'2088-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1352, CAST(N'2031-08-25' AS Date), N'2088-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1353, CAST(N'2031-08-26' AS Date), N'2088-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1354, CAST(N'2031-08-27' AS Date), N'2088-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1355, CAST(N'2031-08-28' AS Date), N'2088-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1356, CAST(N'2031-08-29' AS Date), N'2088-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1357, CAST(N'2031-08-30' AS Date), N'2088-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1358, CAST(N'2031-08-31' AS Date), N'2088-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1359, CAST(N'2031-09-01' AS Date), N'2088-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1360, CAST(N'2031-09-02' AS Date), N'2088-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1361, CAST(N'2031-09-03' AS Date), N'2088-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1362, CAST(N'2031-09-04' AS Date), N'2088-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1363, CAST(N'2031-09-05' AS Date), N'2088-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1364, CAST(N'2031-09-06' AS Date), N'2088-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1365, CAST(N'2031-09-07' AS Date), N'2088-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1366, CAST(N'2031-09-08' AS Date), N'2088-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1367, CAST(N'2031-09-09' AS Date), N'2088-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1368, CAST(N'2031-09-10' AS Date), N'2088-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1369, CAST(N'2031-09-11' AS Date), N'2088-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1370, CAST(N'2031-09-12' AS Date), N'2088-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1371, CAST(N'2031-09-13' AS Date), N'2088-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1372, CAST(N'2031-09-14' AS Date), N'2088-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1373, CAST(N'2031-09-15' AS Date), N'2088-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1374, CAST(N'2031-09-16' AS Date), N'2088-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1375, CAST(N'2031-09-17' AS Date), N'2088-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1376, CAST(N'2031-09-18' AS Date), N'2088-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1377, CAST(N'2031-09-19' AS Date), N'2088-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1378, CAST(N'2031-09-20' AS Date), N'2088-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1379, CAST(N'2031-09-21' AS Date), N'2088-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1380, CAST(N'2031-09-22' AS Date), N'2088-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1381, CAST(N'2031-09-23' AS Date), N'2088-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1382, CAST(N'2031-09-24' AS Date), N'2088-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1383, CAST(N'2031-09-25' AS Date), N'2088-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1384, CAST(N'2031-09-26' AS Date), N'2088-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1385, CAST(N'2031-09-27' AS Date), N'2088-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1386, CAST(N'2031-09-28' AS Date), N'2088-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1387, CAST(N'2031-09-29' AS Date), N'2088-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1388, CAST(N'2031-09-30' AS Date), N'2088-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1389, CAST(N'2031-10-01' AS Date), N'2088-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1390, CAST(N'2031-10-02' AS Date), N'2088-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1391, CAST(N'2031-10-03' AS Date), N'2088-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1392, CAST(N'2031-10-04' AS Date), N'2088-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1393, CAST(N'2031-10-05' AS Date), N'2088-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1394, CAST(N'2031-10-06' AS Date), N'2088-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1395, CAST(N'2031-10-07' AS Date), N'2088-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1396, CAST(N'2031-10-08' AS Date), N'2088-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1397, CAST(N'2031-10-09' AS Date), N'2088-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1398, CAST(N'2031-10-10' AS Date), N'2088-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1399, CAST(N'2031-10-11' AS Date), N'2088-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1400, CAST(N'2031-10-12' AS Date), N'2088-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1401, CAST(N'2031-10-13' AS Date), N'2088-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1402, CAST(N'2031-10-14' AS Date), N'2088-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1403, CAST(N'2031-10-15' AS Date), N'2088-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1404, CAST(N'2031-10-16' AS Date), N'2088-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1405, CAST(N'2031-10-17' AS Date), N'2088-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1406, CAST(N'2031-10-18' AS Date), N'2088-06-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1407, CAST(N'2031-10-19' AS Date), N'2088-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1408, CAST(N'2031-10-20' AS Date), N'2088-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1409, CAST(N'2031-10-21' AS Date), N'2088-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1410, CAST(N'2031-10-22' AS Date), N'2088-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1411, CAST(N'2031-10-23' AS Date), N'2088-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1412, CAST(N'2031-10-24' AS Date), N'2088-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1413, CAST(N'2031-10-25' AS Date), N'2088-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1414, CAST(N'2031-10-26' AS Date), N'2088-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1415, CAST(N'2031-10-27' AS Date), N'2088-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1416, CAST(N'2031-10-28' AS Date), N'2088-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1417, CAST(N'2031-10-29' AS Date), N'2088-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1418, CAST(N'2031-10-30' AS Date), N'2088-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1419, CAST(N'2031-10-31' AS Date), N'2088-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1420, CAST(N'2031-11-01' AS Date), N'2088-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1421, CAST(N'2031-11-02' AS Date), N'2088-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1422, CAST(N'2031-11-03' AS Date), N'2088-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1423, CAST(N'2031-11-04' AS Date), N'2088-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1424, CAST(N'2031-11-05' AS Date), N'2088-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1425, CAST(N'2031-11-06' AS Date), N'2088-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1426, CAST(N'2031-11-07' AS Date), N'2088-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1427, CAST(N'2031-11-08' AS Date), N'2088-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1428, CAST(N'2031-11-09' AS Date), N'2088-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1429, CAST(N'2031-11-10' AS Date), N'2088-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1430, CAST(N'2031-11-11' AS Date), N'2088-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1431, CAST(N'2031-11-12' AS Date), N'2088-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1432, CAST(N'2031-11-13' AS Date), N'2088-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1433, CAST(N'2031-11-14' AS Date), N'2088-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1434, CAST(N'2031-11-15' AS Date), N'2088-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1435, CAST(N'2031-11-16' AS Date), N'2088-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1436, CAST(N'2031-11-17' AS Date), N'2088-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1437, CAST(N'2031-11-18' AS Date), N'2088-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1438, CAST(N'2031-11-19' AS Date), N'2088-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1439, CAST(N'2031-11-20' AS Date), N'2088-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1440, CAST(N'2031-11-21' AS Date), N'2088-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1441, CAST(N'2031-11-22' AS Date), N'2088-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1442, CAST(N'2031-11-23' AS Date), N'2088-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1443, CAST(N'2031-11-24' AS Date), N'2088-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1444, CAST(N'2031-11-25' AS Date), N'2088-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1445, CAST(N'2031-11-26' AS Date), N'2088-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1446, CAST(N'2031-11-27' AS Date), N'2088-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1447, CAST(N'2031-11-28' AS Date), N'2088-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1448, CAST(N'2031-11-29' AS Date), N'2088-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1449, CAST(N'2031-11-30' AS Date), N'2088-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1450, CAST(N'2031-12-01' AS Date), N'2088-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1451, CAST(N'2031-12-02' AS Date), N'2088-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1452, CAST(N'2031-12-03' AS Date), N'2088-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1453, CAST(N'2031-12-04' AS Date), N'2088-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1454, CAST(N'2031-12-05' AS Date), N'2088-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1455, CAST(N'2031-12-06' AS Date), N'2088-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1456, CAST(N'2031-12-07' AS Date), N'2088-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1457, CAST(N'2031-12-08' AS Date), N'2088-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1458, CAST(N'2031-12-09' AS Date), N'2088-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1459, CAST(N'2031-12-10' AS Date), N'2088-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1460, CAST(N'2031-12-11' AS Date), N'2088-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1461, CAST(N'2031-12-12' AS Date), N'2088-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1462, CAST(N'2031-12-13' AS Date), N'2088-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1463, CAST(N'2031-12-14' AS Date), N'2088-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1464, CAST(N'2031-12-15' AS Date), N'2088-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1465, CAST(N'2031-12-16' AS Date), N'2088-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1466, CAST(N'2031-12-17' AS Date), N'2088-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1467, CAST(N'2031-12-18' AS Date), N'2088-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1468, CAST(N'2031-12-19' AS Date), N'2088-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1469, CAST(N'2031-12-20' AS Date), N'2088-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1470, CAST(N'2031-12-21' AS Date), N'2088-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1471, CAST(N'2031-12-22' AS Date), N'2088-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1472, CAST(N'2031-12-23' AS Date), N'2088-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1473, CAST(N'2031-12-24' AS Date), N'2088-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1474, CAST(N'2031-12-25' AS Date), N'2088-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1475, CAST(N'2031-12-26' AS Date), N'2088-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1476, CAST(N'2031-12-27' AS Date), N'2088-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1477, CAST(N'2031-12-28' AS Date), N'2088-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1478, CAST(N'2031-12-29' AS Date), N'2088-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1479, CAST(N'2031-12-30' AS Date), N'2088-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1480, CAST(N'2031-12-31' AS Date), N'2088-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1481, CAST(N'2032-01-01' AS Date), N'2088-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1482, CAST(N'2032-01-02' AS Date), N'2088-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1483, CAST(N'2032-01-03' AS Date), N'2088-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1484, CAST(N'2032-01-04' AS Date), N'2088-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1485, CAST(N'2032-01-05' AS Date), N'2088-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1486, CAST(N'2032-01-06' AS Date), N'2088-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1487, CAST(N'2032-01-07' AS Date), N'2088-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1488, CAST(N'2032-01-08' AS Date), N'2088-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1489, CAST(N'2032-01-09' AS Date), N'2088-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1490, CAST(N'2032-01-10' AS Date), N'2088-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1491, CAST(N'2032-01-11' AS Date), N'2088-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1492, CAST(N'2032-01-12' AS Date), N'2088-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1493, CAST(N'2032-01-13' AS Date), N'2088-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1494, CAST(N'2032-01-14' AS Date), N'2088-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1495, CAST(N'2032-01-15' AS Date), N'2088-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1496, CAST(N'2032-01-16' AS Date), N'2088-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1497, CAST(N'2032-01-17' AS Date), N'2088-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1498, CAST(N'2032-01-18' AS Date), N'2088-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1499, CAST(N'2032-01-19' AS Date), N'2088-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1500, CAST(N'2032-01-20' AS Date), N'2088-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1501, CAST(N'2032-01-21' AS Date), N'2088-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1502, CAST(N'2032-01-22' AS Date), N'2088-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1503, CAST(N'2032-01-23' AS Date), N'2088-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1504, CAST(N'2032-01-24' AS Date), N'2088-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1505, CAST(N'2032-01-25' AS Date), N'2088-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1506, CAST(N'2032-01-26' AS Date), N'2088-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1507, CAST(N'2032-01-27' AS Date), N'2088-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1508, CAST(N'2032-01-28' AS Date), N'2088-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1509, CAST(N'2032-01-29' AS Date), N'2088-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1510, CAST(N'2032-01-30' AS Date), N'2088-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1511, CAST(N'2032-01-31' AS Date), N'2088-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1512, CAST(N'2032-02-01' AS Date), N'2088-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1513, CAST(N'2032-02-02' AS Date), N'2088-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1514, CAST(N'2032-02-03' AS Date), N'2088-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1515, CAST(N'2032-02-04' AS Date), N'2088-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1516, CAST(N'2032-02-05' AS Date), N'2088-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1517, CAST(N'2032-02-06' AS Date), N'2088-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1518, CAST(N'2032-02-07' AS Date), N'2088-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1519, CAST(N'2032-02-08' AS Date), N'2088-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1520, CAST(N'2032-02-09' AS Date), N'2088-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1521, CAST(N'2032-02-10' AS Date), N'2088-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1522, CAST(N'2032-02-11' AS Date), N'2088-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1523, CAST(N'2032-02-12' AS Date), N'2088-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1524, CAST(N'2032-02-13' AS Date), N'2088-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1525, CAST(N'2032-02-14' AS Date), N'2088-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1526, CAST(N'2032-02-15' AS Date), N'2088-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1527, CAST(N'2032-02-16' AS Date), N'2088-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1528, CAST(N'2032-02-17' AS Date), N'2088-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1529, CAST(N'2032-02-18' AS Date), N'2088-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1530, CAST(N'2032-02-19' AS Date), N'2088-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1531, CAST(N'2032-02-20' AS Date), N'2088-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1532, CAST(N'2032-02-21' AS Date), N'2088-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1533, CAST(N'2032-02-22' AS Date), N'2088-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1534, CAST(N'2032-02-23' AS Date), N'2088-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1535, CAST(N'2032-02-24' AS Date), N'2088-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1536, CAST(N'2032-02-25' AS Date), N'2088-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1537, CAST(N'2032-02-26' AS Date), N'2088-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1538, CAST(N'2032-02-27' AS Date), N'2088-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1539, CAST(N'2032-02-28' AS Date), N'2088-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1540, CAST(N'2032-02-29' AS Date), N'2088-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1541, CAST(N'2032-03-01' AS Date), N'2088-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1542, CAST(N'2032-03-02' AS Date), N'2088-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1543, CAST(N'2032-03-03' AS Date), N'2088-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1544, CAST(N'2032-03-04' AS Date), N'2088-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1545, CAST(N'2032-03-05' AS Date), N'2088-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1546, CAST(N'2032-03-06' AS Date), N'2088-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1547, CAST(N'2032-03-07' AS Date), N'2088-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1548, CAST(N'2032-03-08' AS Date), N'2088-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1549, CAST(N'2032-03-09' AS Date), N'2088-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1550, CAST(N'2032-03-10' AS Date), N'2088-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1551, CAST(N'2032-03-11' AS Date), N'2088-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1552, CAST(N'2032-03-12' AS Date), N'2088-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1553, CAST(N'2032-03-13' AS Date), N'2088-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1554, CAST(N'2032-03-14' AS Date), N'2088-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1555, CAST(N'2032-03-15' AS Date), N'2088-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1556, CAST(N'2032-03-16' AS Date), N'2088-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1557, CAST(N'2032-03-17' AS Date), N'2088-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1558, CAST(N'2032-03-18' AS Date), N'2088-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1559, CAST(N'2032-03-19' AS Date), N'2088-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1560, CAST(N'2032-03-20' AS Date), N'2088-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1561, CAST(N'2032-03-21' AS Date), N'2088-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1562, CAST(N'2032-03-22' AS Date), N'2088-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1563, CAST(N'2032-03-23' AS Date), N'2088-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1564, CAST(N'2032-03-24' AS Date), N'2088-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1565, CAST(N'2032-03-25' AS Date), N'2088-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1566, CAST(N'2032-03-26' AS Date), N'2088-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1567, CAST(N'2032-03-27' AS Date), N'2088-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1568, CAST(N'2032-03-28' AS Date), N'2088-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1569, CAST(N'2032-03-29' AS Date), N'2088-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1570, CAST(N'2032-03-30' AS Date), N'2088-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1571, CAST(N'2032-03-31' AS Date), N'2088-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1572, CAST(N'2032-04-01' AS Date), N'2088-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1573, CAST(N'2032-04-02' AS Date), N'2088-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1574, CAST(N'2032-04-03' AS Date), N'2088-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1575, CAST(N'2032-04-04' AS Date), N'2088-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1576, CAST(N'2032-04-05' AS Date), N'2088-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1577, CAST(N'2032-04-06' AS Date), N'2088-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1578, CAST(N'2032-04-07' AS Date), N'2088-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1579, CAST(N'2032-04-08' AS Date), N'2088-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1580, CAST(N'2032-04-09' AS Date), N'2088-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1581, CAST(N'2032-04-10' AS Date), N'2088-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1582, CAST(N'2032-04-11' AS Date), N'2088-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1583, CAST(N'2032-04-12' AS Date), N'2088-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1584, CAST(N'2032-04-13' AS Date), N'2088-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1585, CAST(N'2032-04-14' AS Date), N'2088-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1586, CAST(N'2032-04-15' AS Date), N'2089-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1587, CAST(N'2032-04-16' AS Date), N'2089-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1588, CAST(N'2032-04-17' AS Date), N'2089-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1589, CAST(N'2032-04-18' AS Date), N'2089-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1590, CAST(N'2032-04-19' AS Date), N'2089-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1591, CAST(N'2032-04-20' AS Date), N'2089-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1592, CAST(N'2032-04-21' AS Date), N'2089-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1593, CAST(N'2032-04-22' AS Date), N'2089-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1594, CAST(N'2032-04-23' AS Date), N'2089-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1595, CAST(N'2032-04-24' AS Date), N'2089-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1596, CAST(N'2032-04-25' AS Date), N'2089-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1597, CAST(N'2032-04-26' AS Date), N'2089-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1598, CAST(N'2032-04-27' AS Date), N'2089-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1599, CAST(N'2032-04-28' AS Date), N'2089-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1600, CAST(N'2032-04-29' AS Date), N'2089-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1601, CAST(N'2032-04-30' AS Date), N'2089-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1602, CAST(N'2032-05-01' AS Date), N'2089-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1603, CAST(N'2032-05-02' AS Date), N'2089-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1604, CAST(N'2032-05-03' AS Date), N'2089-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1605, CAST(N'2032-05-04' AS Date), N'2089-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1606, CAST(N'2032-05-05' AS Date), N'2089-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1607, CAST(N'2032-05-06' AS Date), N'2089-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1608, CAST(N'2032-05-07' AS Date), N'2089-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1609, CAST(N'2032-05-08' AS Date), N'2089-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1610, CAST(N'2032-05-09' AS Date), N'2089-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1611, CAST(N'2032-05-10' AS Date), N'2089-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1612, CAST(N'2032-05-11' AS Date), N'2089-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1613, CAST(N'2032-05-12' AS Date), N'2089-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1614, CAST(N'2032-05-13' AS Date), N'2089-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1615, CAST(N'2032-05-14' AS Date), N'2089-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1616, CAST(N'2032-05-15' AS Date), N'2089-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1617, CAST(N'2032-05-16' AS Date), N'2089-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1618, CAST(N'2032-05-17' AS Date), N'2089-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1619, CAST(N'2032-05-18' AS Date), N'2089-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1620, CAST(N'2032-05-19' AS Date), N'2089-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1621, CAST(N'2032-05-20' AS Date), N'2089-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1622, CAST(N'2032-05-21' AS Date), N'2089-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1623, CAST(N'2032-05-22' AS Date), N'2089-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1624, CAST(N'2032-05-23' AS Date), N'2089-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1625, CAST(N'2032-05-24' AS Date), N'2089-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1626, CAST(N'2032-05-25' AS Date), N'2089-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1627, CAST(N'2032-05-26' AS Date), N'2089-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1628, CAST(N'2032-05-27' AS Date), N'2089-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1629, CAST(N'2032-05-28' AS Date), N'2089-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1630, CAST(N'2032-05-29' AS Date), N'2089-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1631, CAST(N'2032-05-30' AS Date), N'2089-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1632, CAST(N'2032-05-31' AS Date), N'2089-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1633, CAST(N'2032-06-01' AS Date), N'2089-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1634, CAST(N'2032-06-02' AS Date), N'2089-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1635, CAST(N'2032-06-03' AS Date), N'2089-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1636, CAST(N'2032-06-04' AS Date), N'2089-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1637, CAST(N'2032-06-05' AS Date), N'2089-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1638, CAST(N'2032-06-06' AS Date), N'2089-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1639, CAST(N'2032-06-07' AS Date), N'2089-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1640, CAST(N'2032-06-08' AS Date), N'2089-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1641, CAST(N'2032-06-09' AS Date), N'2089-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1642, CAST(N'2032-06-10' AS Date), N'2089-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1643, CAST(N'2032-06-11' AS Date), N'2089-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1644, CAST(N'2032-06-12' AS Date), N'2089-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1645, CAST(N'2032-06-13' AS Date), N'2089-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1646, CAST(N'2032-06-14' AS Date), N'2089-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1647, CAST(N'2032-06-15' AS Date), N'2089-02-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1648, CAST(N'2032-06-16' AS Date), N'2089-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1649, CAST(N'2032-06-17' AS Date), N'2089-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1650, CAST(N'2032-06-18' AS Date), N'2089-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1651, CAST(N'2032-06-19' AS Date), N'2089-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1652, CAST(N'2032-06-20' AS Date), N'2089-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1653, CAST(N'2032-06-21' AS Date), N'2089-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1654, CAST(N'2032-06-22' AS Date), N'2089-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1655, CAST(N'2032-06-23' AS Date), N'2089-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1656, CAST(N'2032-06-24' AS Date), N'2089-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1657, CAST(N'2032-06-25' AS Date), N'2089-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1658, CAST(N'2032-06-26' AS Date), N'2089-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1659, CAST(N'2032-06-27' AS Date), N'2089-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1660, CAST(N'2032-06-28' AS Date), N'2089-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1661, CAST(N'2032-06-29' AS Date), N'2089-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1662, CAST(N'2032-06-30' AS Date), N'2089-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1663, CAST(N'2032-07-01' AS Date), N'2089-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1664, CAST(N'2032-07-02' AS Date), N'2089-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1665, CAST(N'2032-07-03' AS Date), N'2089-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1666, CAST(N'2032-07-04' AS Date), N'2089-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1667, CAST(N'2032-07-05' AS Date), N'2089-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1668, CAST(N'2032-07-06' AS Date), N'2089-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1669, CAST(N'2032-07-07' AS Date), N'2089-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1670, CAST(N'2032-07-08' AS Date), N'2089-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1671, CAST(N'2032-07-09' AS Date), N'2089-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1672, CAST(N'2032-07-10' AS Date), N'2089-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1673, CAST(N'2032-07-11' AS Date), N'2089-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1674, CAST(N'2032-07-12' AS Date), N'2089-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1675, CAST(N'2032-07-13' AS Date), N'2089-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1676, CAST(N'2032-07-14' AS Date), N'2089-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1677, CAST(N'2032-07-15' AS Date), N'2089-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1678, CAST(N'2032-07-16' AS Date), N'2089-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1679, CAST(N'2032-07-17' AS Date), N'2089-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1680, CAST(N'2032-07-18' AS Date), N'2089-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1681, CAST(N'2032-07-19' AS Date), N'2089-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1682, CAST(N'2032-07-20' AS Date), N'2089-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1683, CAST(N'2032-07-21' AS Date), N'2089-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1684, CAST(N'2032-07-22' AS Date), N'2089-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1685, CAST(N'2032-07-23' AS Date), N'2089-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1686, CAST(N'2032-07-24' AS Date), N'2089-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1687, CAST(N'2032-07-25' AS Date), N'2089-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1688, CAST(N'2032-07-26' AS Date), N'2089-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1689, CAST(N'2032-07-27' AS Date), N'2089-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1690, CAST(N'2032-07-28' AS Date), N'2089-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1691, CAST(N'2032-07-29' AS Date), N'2089-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1692, CAST(N'2032-07-30' AS Date), N'2089-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1693, CAST(N'2032-07-31' AS Date), N'2089-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1694, CAST(N'2032-08-01' AS Date), N'2089-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1695, CAST(N'2032-08-02' AS Date), N'2089-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1696, CAST(N'2032-08-03' AS Date), N'2089-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1697, CAST(N'2032-08-04' AS Date), N'2089-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1698, CAST(N'2032-08-05' AS Date), N'2089-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1699, CAST(N'2032-08-06' AS Date), N'2089-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1700, CAST(N'2032-08-07' AS Date), N'2089-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1701, CAST(N'2032-08-08' AS Date), N'2089-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1702, CAST(N'2032-08-09' AS Date), N'2089-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1703, CAST(N'2032-08-10' AS Date), N'2089-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1704, CAST(N'2032-08-11' AS Date), N'2089-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1705, CAST(N'2032-08-12' AS Date), N'2089-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1706, CAST(N'2032-08-13' AS Date), N'2089-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1707, CAST(N'2032-08-14' AS Date), N'2089-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1708, CAST(N'2032-08-15' AS Date), N'2089-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1709, CAST(N'2032-08-16' AS Date), N'2089-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1710, CAST(N'2032-08-17' AS Date), N'2089-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1711, CAST(N'2032-08-18' AS Date), N'2089-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1712, CAST(N'2032-08-19' AS Date), N'2089-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1713, CAST(N'2032-08-20' AS Date), N'2089-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1714, CAST(N'2032-08-21' AS Date), N'2089-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1715, CAST(N'2032-08-22' AS Date), N'2089-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1716, CAST(N'2032-08-23' AS Date), N'2089-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1717, CAST(N'2032-08-24' AS Date), N'2089-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1718, CAST(N'2032-08-25' AS Date), N'2089-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1719, CAST(N'2032-08-26' AS Date), N'2089-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1720, CAST(N'2032-08-27' AS Date), N'2089-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1721, CAST(N'2032-08-28' AS Date), N'2089-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1722, CAST(N'2032-08-29' AS Date), N'2089-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1723, CAST(N'2032-08-30' AS Date), N'2089-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1724, CAST(N'2032-08-31' AS Date), N'2089-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1725, CAST(N'2032-09-01' AS Date), N'2089-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1726, CAST(N'2032-09-02' AS Date), N'2089-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1727, CAST(N'2032-09-03' AS Date), N'2089-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1728, CAST(N'2032-09-04' AS Date), N'2089-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1729, CAST(N'2032-09-05' AS Date), N'2089-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1730, CAST(N'2032-09-06' AS Date), N'2089-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1731, CAST(N'2032-09-07' AS Date), N'2089-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1732, CAST(N'2032-09-08' AS Date), N'2089-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1733, CAST(N'2032-09-09' AS Date), N'2089-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1734, CAST(N'2032-09-10' AS Date), N'2089-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1735, CAST(N'2032-09-11' AS Date), N'2089-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1736, CAST(N'2032-09-12' AS Date), N'2089-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1737, CAST(N'2032-09-13' AS Date), N'2089-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1738, CAST(N'2032-09-14' AS Date), N'2089-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1739, CAST(N'2032-09-15' AS Date), N'2089-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1740, CAST(N'2032-09-16' AS Date), N'2089-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1741, CAST(N'2032-09-17' AS Date), N'2089-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1742, CAST(N'2032-09-18' AS Date), N'2089-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1743, CAST(N'2032-09-19' AS Date), N'2089-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1744, CAST(N'2032-09-20' AS Date), N'2089-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1745, CAST(N'2032-09-21' AS Date), N'2089-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1746, CAST(N'2032-09-22' AS Date), N'2089-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1747, CAST(N'2032-09-23' AS Date), N'2089-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1748, CAST(N'2032-09-24' AS Date), N'2089-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1749, CAST(N'2032-09-25' AS Date), N'2089-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1750, CAST(N'2032-09-26' AS Date), N'2089-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1751, CAST(N'2032-09-27' AS Date), N'2089-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1752, CAST(N'2032-09-28' AS Date), N'2089-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1753, CAST(N'2032-09-29' AS Date), N'2089-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1754, CAST(N'2032-09-30' AS Date), N'2089-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1755, CAST(N'2032-10-01' AS Date), N'2089-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1756, CAST(N'2032-10-02' AS Date), N'2089-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1757, CAST(N'2032-10-03' AS Date), N'2089-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1758, CAST(N'2032-10-04' AS Date), N'2089-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1759, CAST(N'2032-10-05' AS Date), N'2089-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1760, CAST(N'2032-10-06' AS Date), N'2089-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1761, CAST(N'2032-10-07' AS Date), N'2089-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1762, CAST(N'2032-10-08' AS Date), N'2089-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1763, CAST(N'2032-10-09' AS Date), N'2089-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1764, CAST(N'2032-10-10' AS Date), N'2089-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1765, CAST(N'2032-10-11' AS Date), N'2089-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1766, CAST(N'2032-10-12' AS Date), N'2089-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1767, CAST(N'2032-10-13' AS Date), N'2089-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1768, CAST(N'2032-10-14' AS Date), N'2089-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1769, CAST(N'2032-10-15' AS Date), N'2089-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1770, CAST(N'2032-10-16' AS Date), N'2089-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1771, CAST(N'2032-10-17' AS Date), N'2089-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1772, CAST(N'2032-10-18' AS Date), N'2089-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1773, CAST(N'2032-10-19' AS Date), N'2089-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1774, CAST(N'2032-10-20' AS Date), N'2089-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1775, CAST(N'2032-10-21' AS Date), N'2089-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1776, CAST(N'2032-10-22' AS Date), N'2089-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1777, CAST(N'2032-10-23' AS Date), N'2089-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1778, CAST(N'2032-10-24' AS Date), N'2089-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1779, CAST(N'2032-10-25' AS Date), N'2089-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1780, CAST(N'2032-10-26' AS Date), N'2089-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1781, CAST(N'2032-10-27' AS Date), N'2089-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1782, CAST(N'2032-10-28' AS Date), N'2089-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1783, CAST(N'2032-10-29' AS Date), N'2089-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1784, CAST(N'2032-10-30' AS Date), N'2089-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1785, CAST(N'2032-10-31' AS Date), N'2089-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1786, CAST(N'2032-11-01' AS Date), N'2089-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1787, CAST(N'2032-11-02' AS Date), N'2089-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1788, CAST(N'2032-11-03' AS Date), N'2089-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1789, CAST(N'2032-11-04' AS Date), N'2089-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1790, CAST(N'2032-11-05' AS Date), N'2089-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1791, CAST(N'2032-11-06' AS Date), N'2089-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1792, CAST(N'2032-11-07' AS Date), N'2089-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1793, CAST(N'2032-11-08' AS Date), N'2089-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1794, CAST(N'2032-11-09' AS Date), N'2089-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1795, CAST(N'2032-11-10' AS Date), N'2089-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1796, CAST(N'2032-11-11' AS Date), N'2089-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1797, CAST(N'2032-11-12' AS Date), N'2089-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1798, CAST(N'2032-11-13' AS Date), N'2089-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1799, CAST(N'2032-11-14' AS Date), N'2089-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1800, CAST(N'2032-11-15' AS Date), N'2089-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1801, CAST(N'2032-11-16' AS Date), N'2089-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1802, CAST(N'2032-11-17' AS Date), N'2089-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1803, CAST(N'2032-11-18' AS Date), N'2089-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1804, CAST(N'2032-11-19' AS Date), N'2089-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1805, CAST(N'2032-11-20' AS Date), N'2089-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1806, CAST(N'2032-11-21' AS Date), N'2089-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1807, CAST(N'2032-11-22' AS Date), N'2089-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1808, CAST(N'2032-11-23' AS Date), N'2089-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1809, CAST(N'2032-11-24' AS Date), N'2089-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1810, CAST(N'2032-11-25' AS Date), N'2089-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1811, CAST(N'2032-11-26' AS Date), N'2089-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1812, CAST(N'2032-11-27' AS Date), N'2089-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1813, CAST(N'2032-11-28' AS Date), N'2089-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1814, CAST(N'2032-11-29' AS Date), N'2089-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1815, CAST(N'2032-11-30' AS Date), N'2089-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1816, CAST(N'2032-12-01' AS Date), N'2089-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1817, CAST(N'2032-12-02' AS Date), N'2089-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1818, CAST(N'2032-12-03' AS Date), N'2089-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1819, CAST(N'2032-12-04' AS Date), N'2089-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1820, CAST(N'2032-12-05' AS Date), N'2089-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1821, CAST(N'2032-12-06' AS Date), N'2089-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1822, CAST(N'2032-12-07' AS Date), N'2089-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1823, CAST(N'2032-12-08' AS Date), N'2089-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1824, CAST(N'2032-12-09' AS Date), N'2089-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1825, CAST(N'2032-12-10' AS Date), N'2089-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1826, CAST(N'2032-12-11' AS Date), N'2089-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1827, CAST(N'2032-12-12' AS Date), N'2089-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1828, CAST(N'2032-12-13' AS Date), N'2089-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1829, CAST(N'2032-12-14' AS Date), N'2089-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1830, CAST(N'2032-12-15' AS Date), N'2089-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1831, CAST(N'2032-12-16' AS Date), N'2089-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1832, CAST(N'2032-12-17' AS Date), N'2089-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1833, CAST(N'2032-12-18' AS Date), N'2089-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1834, CAST(N'2032-12-19' AS Date), N'2089-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1835, CAST(N'2032-12-20' AS Date), N'2089-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1836, CAST(N'2032-12-21' AS Date), N'2089-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1837, CAST(N'2032-12-22' AS Date), N'2089-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1838, CAST(N'2032-12-23' AS Date), N'2089-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1839, CAST(N'2032-12-24' AS Date), N'2089-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1840, CAST(N'2032-12-25' AS Date), N'2089-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1841, CAST(N'2032-12-26' AS Date), N'2089-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1842, CAST(N'2032-12-27' AS Date), N'2089-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1843, CAST(N'2032-12-28' AS Date), N'2089-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1844, CAST(N'2032-12-29' AS Date), N'2089-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1845, CAST(N'2032-12-30' AS Date), N'2089-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1846, CAST(N'2032-12-31' AS Date), N'2089-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1847, CAST(N'2033-01-01' AS Date), N'2089-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1848, CAST(N'2033-01-02' AS Date), N'2089-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1849, CAST(N'2033-01-03' AS Date), N'2089-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1850, CAST(N'2033-01-04' AS Date), N'2089-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1851, CAST(N'2033-01-05' AS Date), N'2089-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1852, CAST(N'2033-01-06' AS Date), N'2089-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1853, CAST(N'2033-01-07' AS Date), N'2089-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1854, CAST(N'2033-01-08' AS Date), N'2089-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1855, CAST(N'2033-01-09' AS Date), N'2089-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1856, CAST(N'2033-01-10' AS Date), N'2089-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1857, CAST(N'2033-01-11' AS Date), N'2089-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1858, CAST(N'2033-01-12' AS Date), N'2089-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1859, CAST(N'2033-01-13' AS Date), N'2089-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1860, CAST(N'2033-01-14' AS Date), N'2089-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1861, CAST(N'2033-01-15' AS Date), N'2089-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1862, CAST(N'2033-01-16' AS Date), N'2089-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1863, CAST(N'2033-01-17' AS Date), N'2089-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1864, CAST(N'2033-01-18' AS Date), N'2089-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1865, CAST(N'2033-01-19' AS Date), N'2089-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1866, CAST(N'2033-01-20' AS Date), N'2089-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1867, CAST(N'2033-01-21' AS Date), N'2089-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1868, CAST(N'2033-01-22' AS Date), N'2089-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1869, CAST(N'2033-01-23' AS Date), N'2089-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1870, CAST(N'2033-01-24' AS Date), N'2089-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1871, CAST(N'2033-01-25' AS Date), N'2089-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1872, CAST(N'2033-01-26' AS Date), N'2089-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1873, CAST(N'2033-01-27' AS Date), N'2089-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1874, CAST(N'2033-01-28' AS Date), N'2089-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1875, CAST(N'2033-01-29' AS Date), N'2089-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1876, CAST(N'2033-01-30' AS Date), N'2089-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1877, CAST(N'2033-01-31' AS Date), N'2089-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1878, CAST(N'2033-02-01' AS Date), N'2089-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1879, CAST(N'2033-02-02' AS Date), N'2089-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1880, CAST(N'2033-02-03' AS Date), N'2089-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1881, CAST(N'2033-02-04' AS Date), N'2089-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1882, CAST(N'2033-02-05' AS Date), N'2089-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1883, CAST(N'2033-02-06' AS Date), N'2089-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1884, CAST(N'2033-02-07' AS Date), N'2089-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1885, CAST(N'2033-02-08' AS Date), N'2089-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1886, CAST(N'2033-02-09' AS Date), N'2089-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1887, CAST(N'2033-02-10' AS Date), N'2089-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1888, CAST(N'2033-02-11' AS Date), N'2089-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1889, CAST(N'2033-02-12' AS Date), N'2089-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1890, CAST(N'2033-02-13' AS Date), N'2089-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1891, CAST(N'2033-02-14' AS Date), N'2089-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1892, CAST(N'2033-02-15' AS Date), N'2089-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1893, CAST(N'2033-02-16' AS Date), N'2089-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1894, CAST(N'2033-02-17' AS Date), N'2089-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1895, CAST(N'2033-02-18' AS Date), N'2089-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1896, CAST(N'2033-02-19' AS Date), N'2089-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1897, CAST(N'2033-02-20' AS Date), N'2089-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1898, CAST(N'2033-02-21' AS Date), N'2089-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1899, CAST(N'2033-02-22' AS Date), N'2089-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1900, CAST(N'2033-02-23' AS Date), N'2089-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1901, CAST(N'2033-02-24' AS Date), N'2089-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1902, CAST(N'2033-02-25' AS Date), N'2089-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1903, CAST(N'2033-02-26' AS Date), N'2089-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1904, CAST(N'2033-02-27' AS Date), N'2089-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1905, CAST(N'2033-02-28' AS Date), N'2089-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1906, CAST(N'2033-03-01' AS Date), N'2089-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1907, CAST(N'2033-03-02' AS Date), N'2089-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1908, CAST(N'2033-03-03' AS Date), N'2089-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1909, CAST(N'2033-03-04' AS Date), N'2089-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1910, CAST(N'2033-03-05' AS Date), N'2089-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1911, CAST(N'2033-03-06' AS Date), N'2089-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1912, CAST(N'2033-03-07' AS Date), N'2089-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1913, CAST(N'2033-03-08' AS Date), N'2089-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1914, CAST(N'2033-03-09' AS Date), N'2089-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1915, CAST(N'2033-03-10' AS Date), N'2089-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1916, CAST(N'2033-03-11' AS Date), N'2089-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1917, CAST(N'2033-03-12' AS Date), N'2089-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1918, CAST(N'2033-03-13' AS Date), N'2089-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1919, CAST(N'2033-03-14' AS Date), N'2089-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1920, CAST(N'2033-03-15' AS Date), N'2089-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1921, CAST(N'2033-03-16' AS Date), N'2089-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1922, CAST(N'2033-03-17' AS Date), N'2089-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1923, CAST(N'2033-03-18' AS Date), N'2089-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1924, CAST(N'2033-03-19' AS Date), N'2089-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1925, CAST(N'2033-03-20' AS Date), N'2089-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1926, CAST(N'2033-03-21' AS Date), N'2089-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1927, CAST(N'2033-03-22' AS Date), N'2089-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1928, CAST(N'2033-03-23' AS Date), N'2089-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1929, CAST(N'2033-03-24' AS Date), N'2089-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1930, CAST(N'2033-03-25' AS Date), N'2089-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1931, CAST(N'2033-03-26' AS Date), N'2089-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1932, CAST(N'2033-03-27' AS Date), N'2089-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1933, CAST(N'2033-03-28' AS Date), N'2089-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1934, CAST(N'2033-03-29' AS Date), N'2089-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1935, CAST(N'2033-03-30' AS Date), N'2089-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1936, CAST(N'2033-03-31' AS Date), N'2089-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1937, CAST(N'2033-04-01' AS Date), N'2089-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1938, CAST(N'2033-04-02' AS Date), N'2089-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1939, CAST(N'2033-04-03' AS Date), N'2089-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1940, CAST(N'2033-04-04' AS Date), N'2089-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1941, CAST(N'2033-04-05' AS Date), N'2089-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1942, CAST(N'2033-04-06' AS Date), N'2089-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1943, CAST(N'2033-04-07' AS Date), N'2089-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1944, CAST(N'2033-04-08' AS Date), N'2089-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1945, CAST(N'2033-04-09' AS Date), N'2089-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1946, CAST(N'2033-04-10' AS Date), N'2089-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1947, CAST(N'2033-04-11' AS Date), N'2089-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1948, CAST(N'2033-04-12' AS Date), N'2089-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1949, CAST(N'2033-04-13' AS Date), N'2089-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1950, CAST(N'2033-04-14' AS Date), N'2089-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1951, CAST(N'2033-04-15' AS Date), N'2090-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1952, CAST(N'2033-04-16' AS Date), N'2090-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1953, CAST(N'2033-04-17' AS Date), N'2090-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1954, CAST(N'2033-04-18' AS Date), N'2090-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1955, CAST(N'2033-04-19' AS Date), N'2090-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1956, CAST(N'2033-04-20' AS Date), N'2090-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1957, CAST(N'2033-04-21' AS Date), N'2090-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1958, CAST(N'2033-04-22' AS Date), N'2090-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1959, CAST(N'2033-04-23' AS Date), N'2090-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1960, CAST(N'2033-04-24' AS Date), N'2090-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1961, CAST(N'2033-04-25' AS Date), N'2090-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1962, CAST(N'2033-04-26' AS Date), N'2090-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1963, CAST(N'2033-04-27' AS Date), N'2090-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1964, CAST(N'2033-04-28' AS Date), N'2090-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1965, CAST(N'2033-04-29' AS Date), N'2090-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1966, CAST(N'2033-04-30' AS Date), N'2090-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1967, CAST(N'2033-05-01' AS Date), N'2090-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1968, CAST(N'2033-05-02' AS Date), N'2090-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1969, CAST(N'2033-05-03' AS Date), N'2090-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1970, CAST(N'2033-05-04' AS Date), N'2090-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1971, CAST(N'2033-05-05' AS Date), N'2090-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1972, CAST(N'2033-05-06' AS Date), N'2090-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1973, CAST(N'2033-05-07' AS Date), N'2090-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1974, CAST(N'2033-05-08' AS Date), N'2090-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1975, CAST(N'2033-05-09' AS Date), N'2090-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1976, CAST(N'2033-05-10' AS Date), N'2090-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1977, CAST(N'2033-05-11' AS Date), N'2090-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1978, CAST(N'2033-05-12' AS Date), N'2090-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1979, CAST(N'2033-05-13' AS Date), N'2090-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1980, CAST(N'2033-05-14' AS Date), N'2090-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1981, CAST(N'2033-05-15' AS Date), N'2090-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1982, CAST(N'2033-05-16' AS Date), N'2090-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1983, CAST(N'2033-05-17' AS Date), N'2090-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1984, CAST(N'2033-05-18' AS Date), N'2090-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1985, CAST(N'2033-05-19' AS Date), N'2090-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1986, CAST(N'2033-05-20' AS Date), N'2090-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1987, CAST(N'2033-05-21' AS Date), N'2090-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1988, CAST(N'2033-05-22' AS Date), N'2090-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1989, CAST(N'2033-05-23' AS Date), N'2090-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1990, CAST(N'2033-05-24' AS Date), N'2090-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1991, CAST(N'2033-05-25' AS Date), N'2090-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1992, CAST(N'2033-05-26' AS Date), N'2090-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1993, CAST(N'2033-05-27' AS Date), N'2090-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1994, CAST(N'2033-05-28' AS Date), N'2090-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1995, CAST(N'2033-05-29' AS Date), N'2090-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1996, CAST(N'2033-05-30' AS Date), N'2090-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1997, CAST(N'2033-05-31' AS Date), N'2090-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1998, CAST(N'2033-06-01' AS Date), N'2090-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (1999, CAST(N'2033-06-02' AS Date), N'2090-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2000, CAST(N'2033-06-03' AS Date), N'2090-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2001, CAST(N'2033-06-04' AS Date), N'2090-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2002, CAST(N'2033-06-05' AS Date), N'2090-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2003, CAST(N'2033-06-06' AS Date), N'2090-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2004, CAST(N'2033-06-07' AS Date), N'2090-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2005, CAST(N'2033-06-08' AS Date), N'2090-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2006, CAST(N'2033-06-09' AS Date), N'2090-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2007, CAST(N'2033-06-10' AS Date), N'2090-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2008, CAST(N'2033-06-11' AS Date), N'2090-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2009, CAST(N'2033-06-12' AS Date), N'2090-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2010, CAST(N'2033-06-13' AS Date), N'2090-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2011, CAST(N'2033-06-14' AS Date), N'2090-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2012, CAST(N'2033-06-15' AS Date), N'2090-02-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2013, CAST(N'2033-06-16' AS Date), N'2090-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2014, CAST(N'2033-06-17' AS Date), N'2090-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2015, CAST(N'2033-06-18' AS Date), N'2090-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2016, CAST(N'2033-06-19' AS Date), N'2090-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2017, CAST(N'2033-06-20' AS Date), N'2090-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2018, CAST(N'2033-06-21' AS Date), N'2090-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2019, CAST(N'2033-06-22' AS Date), N'2090-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2020, CAST(N'2033-06-23' AS Date), N'2090-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2021, CAST(N'2033-06-24' AS Date), N'2090-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2022, CAST(N'2033-06-25' AS Date), N'2090-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2023, CAST(N'2033-06-26' AS Date), N'2090-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2024, CAST(N'2033-06-27' AS Date), N'2090-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2025, CAST(N'2033-06-28' AS Date), N'2090-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2026, CAST(N'2033-06-29' AS Date), N'2090-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2027, CAST(N'2033-06-30' AS Date), N'2090-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2028, CAST(N'2033-07-01' AS Date), N'2090-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2029, CAST(N'2033-07-02' AS Date), N'2090-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2030, CAST(N'2033-07-03' AS Date), N'2090-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2031, CAST(N'2033-07-04' AS Date), N'2090-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2032, CAST(N'2033-07-05' AS Date), N'2090-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2033, CAST(N'2033-07-06' AS Date), N'2090-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2034, CAST(N'2033-07-07' AS Date), N'2090-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2035, CAST(N'2033-07-08' AS Date), N'2090-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2036, CAST(N'2033-07-09' AS Date), N'2090-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2037, CAST(N'2033-07-10' AS Date), N'2090-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2038, CAST(N'2033-07-11' AS Date), N'2090-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2039, CAST(N'2033-07-12' AS Date), N'2090-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2040, CAST(N'2033-07-13' AS Date), N'2090-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2041, CAST(N'2033-07-14' AS Date), N'2090-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2042, CAST(N'2033-07-15' AS Date), N'2090-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2043, CAST(N'2033-07-16' AS Date), N'2090-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2044, CAST(N'2033-07-17' AS Date), N'2090-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2045, CAST(N'2033-07-18' AS Date), N'2090-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2046, CAST(N'2033-07-19' AS Date), N'2090-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2047, CAST(N'2033-07-20' AS Date), N'2090-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2048, CAST(N'2033-07-21' AS Date), N'2090-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2049, CAST(N'2033-07-22' AS Date), N'2090-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2050, CAST(N'2033-07-23' AS Date), N'2090-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2051, CAST(N'2033-07-24' AS Date), N'2090-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2052, CAST(N'2033-07-25' AS Date), N'2090-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2053, CAST(N'2033-07-26' AS Date), N'2090-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2054, CAST(N'2033-07-27' AS Date), N'2090-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2055, CAST(N'2033-07-28' AS Date), N'2090-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2056, CAST(N'2033-07-29' AS Date), N'2090-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2057, CAST(N'2033-07-30' AS Date), N'2090-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2058, CAST(N'2033-07-31' AS Date), N'2090-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2059, CAST(N'2033-08-01' AS Date), N'2090-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2060, CAST(N'2033-08-02' AS Date), N'2090-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2061, CAST(N'2033-08-03' AS Date), N'2090-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2062, CAST(N'2033-08-04' AS Date), N'2090-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2063, CAST(N'2033-08-05' AS Date), N'2090-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2064, CAST(N'2033-08-06' AS Date), N'2090-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2065, CAST(N'2033-08-07' AS Date), N'2090-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2066, CAST(N'2033-08-08' AS Date), N'2090-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2067, CAST(N'2033-08-09' AS Date), N'2090-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2068, CAST(N'2033-08-10' AS Date), N'2090-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2069, CAST(N'2033-08-11' AS Date), N'2090-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2070, CAST(N'2033-08-12' AS Date), N'2090-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2071, CAST(N'2033-08-13' AS Date), N'2090-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2072, CAST(N'2033-08-14' AS Date), N'2090-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2073, CAST(N'2033-08-15' AS Date), N'2090-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2074, CAST(N'2033-08-16' AS Date), N'2090-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2075, CAST(N'2027-12-13' AS Date), N'2084-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2076, CAST(N'2027-12-14' AS Date), N'2084-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2077, CAST(N'2027-12-15' AS Date), N'2084-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2078, CAST(N'2027-12-16' AS Date), N'2084-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2079, CAST(N'2027-12-17' AS Date), N'2084-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2080, CAST(N'2027-12-18' AS Date), N'2084-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2081, CAST(N'2027-12-19' AS Date), N'2084-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2082, CAST(N'2027-12-20' AS Date), N'2084-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2083, CAST(N'2027-12-21' AS Date), N'2084-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2084, CAST(N'2027-12-22' AS Date), N'2084-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2085, CAST(N'2027-12-23' AS Date), N'2084-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2086, CAST(N'2027-12-24' AS Date), N'2084-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2087, CAST(N'2027-12-25' AS Date), N'2084-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2088, CAST(N'2027-12-26' AS Date), N'2084-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2089, CAST(N'2027-12-27' AS Date), N'2084-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2090, CAST(N'2027-12-28' AS Date), N'2084-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2091, CAST(N'2027-12-29' AS Date), N'2084-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2092, CAST(N'2027-12-30' AS Date), N'2084-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2093, CAST(N'2027-12-31' AS Date), N'2084-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2094, CAST(N'2028-01-01' AS Date), N'2084-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2095, CAST(N'2028-01-02' AS Date), N'2084-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2096, CAST(N'2028-01-03' AS Date), N'2084-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2097, CAST(N'2028-01-04' AS Date), N'2084-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2098, CAST(N'2028-01-05' AS Date), N'2084-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2099, CAST(N'2028-01-06' AS Date), N'2084-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2100, CAST(N'2028-01-07' AS Date), N'2084-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2101, CAST(N'2028-01-08' AS Date), N'2084-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2102, CAST(N'2028-01-09' AS Date), N'2084-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2103, CAST(N'2028-01-10' AS Date), N'2084-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2104, CAST(N'2028-01-11' AS Date), N'2084-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2105, CAST(N'2028-01-12' AS Date), N'2084-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2106, CAST(N'2028-01-13' AS Date), N'2084-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2107, CAST(N'2028-01-14' AS Date), N'2084-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2108, CAST(N'2028-01-15' AS Date), N'2084-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2109, CAST(N'2028-01-16' AS Date), N'2084-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2110, CAST(N'2028-01-17' AS Date), N'2084-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2111, CAST(N'2028-01-18' AS Date), N'2084-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2112, CAST(N'2028-01-19' AS Date), N'2084-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2113, CAST(N'2028-01-20' AS Date), N'2084-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2114, CAST(N'2028-01-21' AS Date), N'2084-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2115, CAST(N'2028-01-22' AS Date), N'2084-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2116, CAST(N'2028-01-23' AS Date), N'2084-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2117, CAST(N'2028-01-24' AS Date), N'2084-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2118, CAST(N'2028-01-25' AS Date), N'2084-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2119, CAST(N'2028-01-26' AS Date), N'2084-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2120, CAST(N'2028-01-27' AS Date), N'2084-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2121, CAST(N'2028-01-28' AS Date), N'2084-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2122, CAST(N'2028-01-29' AS Date), N'2084-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2123, CAST(N'2028-01-30' AS Date), N'2084-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2124, CAST(N'2028-01-31' AS Date), N'2084-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2125, CAST(N'2028-02-01' AS Date), N'2084-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2126, CAST(N'2028-02-02' AS Date), N'2084-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2127, CAST(N'2028-02-03' AS Date), N'2084-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2128, CAST(N'2028-02-04' AS Date), N'2084-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2129, CAST(N'2028-02-05' AS Date), N'2084-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2130, CAST(N'2028-02-06' AS Date), N'2084-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2131, CAST(N'2028-02-07' AS Date), N'2084-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2132, CAST(N'2028-02-08' AS Date), N'2084-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2133, CAST(N'2028-02-09' AS Date), N'2084-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2134, CAST(N'2028-02-10' AS Date), N'2084-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2135, CAST(N'2028-02-11' AS Date), N'2084-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2136, CAST(N'2028-02-12' AS Date), N'2084-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2137, CAST(N'2028-02-13' AS Date), N'2084-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2138, CAST(N'2028-02-14' AS Date), N'2084-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2139, CAST(N'2028-02-15' AS Date), N'2084-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2140, CAST(N'2028-02-16' AS Date), N'2084-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2141, CAST(N'2028-02-17' AS Date), N'2084-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2142, CAST(N'2028-02-18' AS Date), N'2084-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2143, CAST(N'2028-02-19' AS Date), N'2084-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2144, CAST(N'2028-02-20' AS Date), N'2084-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2145, CAST(N'2028-02-21' AS Date), N'2084-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2146, CAST(N'2028-02-22' AS Date), N'2084-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2147, CAST(N'2028-02-23' AS Date), N'2084-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2148, CAST(N'2028-02-24' AS Date), N'2084-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2149, CAST(N'2028-02-25' AS Date), N'2084-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2150, CAST(N'2028-02-26' AS Date), N'2084-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2151, CAST(N'2028-02-27' AS Date), N'2084-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2152, CAST(N'2028-02-28' AS Date), N'2084-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2153, CAST(N'2028-02-29' AS Date), N'2084-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2154, CAST(N'2028-03-01' AS Date), N'2084-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2155, CAST(N'2028-03-02' AS Date), N'2084-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2156, CAST(N'2028-03-03' AS Date), N'2084-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2157, CAST(N'2028-03-04' AS Date), N'2084-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2158, CAST(N'2028-03-05' AS Date), N'2084-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2159, CAST(N'2028-03-06' AS Date), N'2084-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2160, CAST(N'2028-03-07' AS Date), N'2084-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2161, CAST(N'2028-03-08' AS Date), N'2084-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2162, CAST(N'2028-03-09' AS Date), N'2084-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2163, CAST(N'2028-03-10' AS Date), N'2084-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2164, CAST(N'2028-03-11' AS Date), N'2084-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2165, CAST(N'2028-03-12' AS Date), N'2084-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2166, CAST(N'2028-03-13' AS Date), N'2084-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2167, CAST(N'2028-03-14' AS Date), N'2084-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2168, CAST(N'2028-03-15' AS Date), N'2084-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2169, CAST(N'2028-03-16' AS Date), N'2084-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2170, CAST(N'2028-03-17' AS Date), N'2084-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2171, CAST(N'2028-03-18' AS Date), N'2084-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2172, CAST(N'2028-03-19' AS Date), N'2084-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2173, CAST(N'2028-03-20' AS Date), N'2084-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2174, CAST(N'2028-03-21' AS Date), N'2084-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2175, CAST(N'2028-03-22' AS Date), N'2084-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2176, CAST(N'2028-03-23' AS Date), N'2084-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2177, CAST(N'2028-03-24' AS Date), N'2084-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2178, CAST(N'2028-03-25' AS Date), N'2084-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2179, CAST(N'2028-03-26' AS Date), N'2084-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2180, CAST(N'2028-03-27' AS Date), N'2084-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2181, CAST(N'2028-03-28' AS Date), N'2084-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2182, CAST(N'2028-03-29' AS Date), N'2084-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2183, CAST(N'2028-03-30' AS Date), N'2084-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2184, CAST(N'2028-03-31' AS Date), N'2084-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2185, CAST(N'2028-04-01' AS Date), N'2084-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2186, CAST(N'2028-04-02' AS Date), N'2084-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2187, CAST(N'2028-04-03' AS Date), N'2084-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2188, CAST(N'2028-04-04' AS Date), N'2084-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2189, CAST(N'2028-04-05' AS Date), N'2084-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2190, CAST(N'2028-04-06' AS Date), N'2084-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2191, CAST(N'2028-04-07' AS Date), N'2084-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2192, CAST(N'2028-04-08' AS Date), N'2084-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2193, CAST(N'2028-04-09' AS Date), N'2084-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2194, CAST(N'2028-04-10' AS Date), N'2084-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2195, CAST(N'2028-04-11' AS Date), N'2084-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2196, CAST(N'2028-04-12' AS Date), N'2084-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2197, CAST(N'2028-04-13' AS Date), N'2084-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2198, CAST(N'2028-04-14' AS Date), N'2085-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2199, CAST(N'2028-04-15' AS Date), N'2085-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2200, CAST(N'2028-04-16' AS Date), N'2085-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2201, CAST(N'2028-04-17' AS Date), N'2085-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2202, CAST(N'2028-04-18' AS Date), N'2085-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2203, CAST(N'2028-04-19' AS Date), N'2085-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2204, CAST(N'2028-04-20' AS Date), N'2085-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2205, CAST(N'2028-04-21' AS Date), N'2085-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2206, CAST(N'2028-04-22' AS Date), N'2085-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2207, CAST(N'2028-04-23' AS Date), N'2085-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2208, CAST(N'2028-04-24' AS Date), N'2085-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2209, CAST(N'2028-04-25' AS Date), N'2085-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2210, CAST(N'2028-04-26' AS Date), N'2085-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2211, CAST(N'2028-04-27' AS Date), N'2085-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2212, CAST(N'2028-04-28' AS Date), N'2085-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2213, CAST(N'2028-04-29' AS Date), N'2085-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2214, CAST(N'2028-04-30' AS Date), N'2085-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2215, CAST(N'2028-05-01' AS Date), N'2085-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2216, CAST(N'2028-05-02' AS Date), N'2085-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2217, CAST(N'2028-05-03' AS Date), N'2085-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2218, CAST(N'2028-05-04' AS Date), N'2085-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2219, CAST(N'2028-05-05' AS Date), N'2085-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2220, CAST(N'2028-05-06' AS Date), N'2085-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2221, CAST(N'2028-05-07' AS Date), N'2085-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2222, CAST(N'2028-05-08' AS Date), N'2085-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2223, CAST(N'2028-05-09' AS Date), N'2085-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2224, CAST(N'2028-05-10' AS Date), N'2085-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2225, CAST(N'2028-05-11' AS Date), N'2085-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2226, CAST(N'2028-05-12' AS Date), N'2085-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2227, CAST(N'2028-05-13' AS Date), N'2085-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2228, CAST(N'2028-05-14' AS Date), N'2085-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2229, CAST(N'2028-05-15' AS Date), N'2085-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2230, CAST(N'2028-05-16' AS Date), N'2085-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2231, CAST(N'2028-05-17' AS Date), N'2085-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2232, CAST(N'2028-05-18' AS Date), N'2085-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2233, CAST(N'2028-05-19' AS Date), N'2085-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2234, CAST(N'2028-05-20' AS Date), N'2085-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2235, CAST(N'2028-05-21' AS Date), N'2085-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2236, CAST(N'2028-05-22' AS Date), N'2085-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2237, CAST(N'2028-05-23' AS Date), N'2085-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2238, CAST(N'2028-05-24' AS Date), N'2085-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2239, CAST(N'2028-05-25' AS Date), N'2085-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2240, CAST(N'2028-05-26' AS Date), N'2085-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2241, CAST(N'2028-05-27' AS Date), N'2085-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2242, CAST(N'2028-05-28' AS Date), N'2085-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2243, CAST(N'2028-05-29' AS Date), N'2085-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2244, CAST(N'2028-05-30' AS Date), N'2085-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2245, CAST(N'2028-05-31' AS Date), N'2085-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2246, CAST(N'2028-06-01' AS Date), N'2085-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2247, CAST(N'2028-06-02' AS Date), N'2085-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2248, CAST(N'2028-06-03' AS Date), N'2085-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2249, CAST(N'2028-06-04' AS Date), N'2085-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2250, CAST(N'2028-06-05' AS Date), N'2085-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2251, CAST(N'2028-06-06' AS Date), N'2085-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2252, CAST(N'2028-06-07' AS Date), N'2085-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2253, CAST(N'2028-06-08' AS Date), N'2085-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2254, CAST(N'2028-06-09' AS Date), N'2085-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2255, CAST(N'2028-06-10' AS Date), N'2085-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2256, CAST(N'2028-06-11' AS Date), N'2085-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2257, CAST(N'2028-06-12' AS Date), N'2085-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2258, CAST(N'2028-06-13' AS Date), N'2085-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2259, CAST(N'2028-06-14' AS Date), N'2085-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2260, CAST(N'2028-06-15' AS Date), N'2085-02-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2261, CAST(N'2028-06-16' AS Date), N'2085-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2262, CAST(N'2028-06-17' AS Date), N'2085-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2263, CAST(N'2028-06-18' AS Date), N'2085-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2264, CAST(N'2028-06-19' AS Date), N'2085-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2265, CAST(N'2028-06-20' AS Date), N'2085-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2266, CAST(N'2028-06-21' AS Date), N'2085-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2267, CAST(N'2028-06-22' AS Date), N'2085-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2268, CAST(N'2028-06-23' AS Date), N'2085-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2269, CAST(N'2028-06-24' AS Date), N'2085-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2270, CAST(N'2028-06-25' AS Date), N'2085-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2271, CAST(N'2028-06-26' AS Date), N'2085-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2272, CAST(N'2028-06-27' AS Date), N'2085-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2273, CAST(N'2028-06-28' AS Date), N'2085-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2274, CAST(N'2028-06-29' AS Date), N'2085-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2275, CAST(N'2028-06-30' AS Date), N'2085-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2276, CAST(N'2028-07-01' AS Date), N'2085-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2277, CAST(N'2028-07-02' AS Date), N'2085-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2278, CAST(N'2028-07-03' AS Date), N'2085-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2279, CAST(N'2028-07-04' AS Date), N'2085-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2280, CAST(N'2028-07-05' AS Date), N'2085-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2281, CAST(N'2028-07-06' AS Date), N'2085-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2282, CAST(N'2028-07-07' AS Date), N'2085-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2283, CAST(N'2028-07-08' AS Date), N'2085-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2284, CAST(N'2028-07-09' AS Date), N'2085-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2285, CAST(N'2028-07-10' AS Date), N'2085-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2286, CAST(N'2028-07-11' AS Date), N'2085-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2287, CAST(N'2028-07-12' AS Date), N'2085-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2288, CAST(N'2028-07-13' AS Date), N'2085-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2289, CAST(N'2028-07-14' AS Date), N'2085-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2290, CAST(N'2028-07-15' AS Date), N'2085-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2291, CAST(N'2028-07-16' AS Date), N'2085-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2292, CAST(N'2028-07-17' AS Date), N'2085-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2293, CAST(N'2028-07-18' AS Date), N'2085-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2294, CAST(N'2028-07-19' AS Date), N'2085-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2295, CAST(N'2028-07-20' AS Date), N'2085-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2296, CAST(N'2028-07-21' AS Date), N'2085-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2297, CAST(N'2028-07-22' AS Date), N'2085-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2298, CAST(N'2028-07-23' AS Date), N'2085-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2299, CAST(N'2028-07-24' AS Date), N'2085-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2300, CAST(N'2028-07-25' AS Date), N'2085-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2301, CAST(N'2028-07-26' AS Date), N'2085-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2302, CAST(N'2028-07-27' AS Date), N'2085-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2303, CAST(N'2028-07-28' AS Date), N'2085-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2304, CAST(N'2028-07-29' AS Date), N'2085-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2305, CAST(N'2028-07-30' AS Date), N'2085-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2306, CAST(N'2028-07-31' AS Date), N'2085-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2307, CAST(N'2028-08-01' AS Date), N'2085-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2308, CAST(N'2028-08-02' AS Date), N'2085-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2309, CAST(N'2028-08-03' AS Date), N'2085-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2310, CAST(N'2028-08-04' AS Date), N'2085-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2311, CAST(N'2028-08-05' AS Date), N'2085-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2312, CAST(N'2028-08-06' AS Date), N'2085-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2313, CAST(N'2028-08-07' AS Date), N'2085-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2314, CAST(N'2028-08-08' AS Date), N'2085-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2315, CAST(N'2028-08-09' AS Date), N'2085-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2316, CAST(N'2028-08-10' AS Date), N'2085-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2317, CAST(N'2028-08-11' AS Date), N'2085-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2318, CAST(N'2028-08-12' AS Date), N'2085-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2319, CAST(N'2028-08-13' AS Date), N'2085-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2320, CAST(N'2028-08-14' AS Date), N'2085-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2321, CAST(N'2028-08-15' AS Date), N'2085-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2322, CAST(N'2028-08-16' AS Date), N'2085-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2323, CAST(N'2028-08-17' AS Date), N'2085-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2324, CAST(N'2028-08-18' AS Date), N'2085-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2325, CAST(N'2028-08-19' AS Date), N'2085-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2326, CAST(N'2028-08-20' AS Date), N'2085-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2327, CAST(N'2028-08-21' AS Date), N'2085-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2328, CAST(N'2028-08-22' AS Date), N'2085-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2329, CAST(N'2028-08-23' AS Date), N'2085-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2330, CAST(N'2028-08-24' AS Date), N'2085-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2331, CAST(N'2028-08-25' AS Date), N'2085-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2332, CAST(N'2028-08-26' AS Date), N'2085-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2333, CAST(N'2028-08-27' AS Date), N'2085-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2334, CAST(N'2028-08-28' AS Date), N'2085-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2335, CAST(N'2028-08-29' AS Date), N'2085-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2336, CAST(N'2028-08-30' AS Date), N'2085-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2337, CAST(N'2028-08-31' AS Date), N'2085-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2338, CAST(N'2028-09-01' AS Date), N'2085-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2339, CAST(N'2028-09-02' AS Date), N'2085-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2340, CAST(N'2028-09-03' AS Date), N'2085-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2341, CAST(N'2028-09-04' AS Date), N'2085-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2342, CAST(N'2028-09-05' AS Date), N'2085-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2343, CAST(N'2028-09-06' AS Date), N'2085-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2344, CAST(N'2028-09-07' AS Date), N'2085-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2345, CAST(N'2028-09-08' AS Date), N'2085-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2346, CAST(N'2028-09-09' AS Date), N'2085-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2347, CAST(N'2028-09-10' AS Date), N'2085-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2348, CAST(N'2028-09-11' AS Date), N'2085-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2349, CAST(N'2028-09-12' AS Date), N'2085-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2350, CAST(N'2028-09-13' AS Date), N'2085-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2351, CAST(N'2028-09-14' AS Date), N'2085-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2352, CAST(N'2028-09-15' AS Date), N'2085-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2353, CAST(N'2028-09-16' AS Date), N'2085-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2354, CAST(N'2028-09-17' AS Date), N'2085-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2355, CAST(N'2028-09-18' AS Date), N'2085-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2356, CAST(N'2028-09-19' AS Date), N'2085-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2357, CAST(N'2028-09-20' AS Date), N'2085-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2358, CAST(N'2028-09-21' AS Date), N'2085-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2359, CAST(N'2028-09-22' AS Date), N'2085-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2360, CAST(N'2028-09-23' AS Date), N'2085-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2361, CAST(N'2028-09-24' AS Date), N'2085-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2362, CAST(N'2028-09-25' AS Date), N'2085-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2363, CAST(N'2028-09-26' AS Date), N'2085-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2364, CAST(N'2028-09-27' AS Date), N'2085-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2365, CAST(N'2028-09-28' AS Date), N'2085-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2366, CAST(N'2028-09-29' AS Date), N'2085-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2367, CAST(N'2028-09-30' AS Date), N'2085-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2368, CAST(N'2028-10-01' AS Date), N'2085-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2369, CAST(N'2028-10-02' AS Date), N'2085-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2370, CAST(N'2028-10-03' AS Date), N'2085-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2371, CAST(N'2028-10-04' AS Date), N'2085-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2372, CAST(N'2028-10-05' AS Date), N'2085-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2373, CAST(N'2028-10-06' AS Date), N'2085-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2374, CAST(N'2028-10-07' AS Date), N'2085-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2375, CAST(N'2028-10-08' AS Date), N'2085-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2376, CAST(N'2028-10-09' AS Date), N'2085-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2377, CAST(N'2028-10-10' AS Date), N'2085-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2378, CAST(N'2028-10-11' AS Date), N'2085-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2379, CAST(N'2028-10-12' AS Date), N'2085-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2380, CAST(N'2028-10-13' AS Date), N'2085-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2381, CAST(N'2028-10-14' AS Date), N'2085-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2382, CAST(N'2028-10-15' AS Date), N'2085-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2383, CAST(N'2028-10-16' AS Date), N'2085-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2384, CAST(N'2028-10-17' AS Date), N'2085-06-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2385, CAST(N'2028-10-18' AS Date), N'2085-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2386, CAST(N'2028-10-19' AS Date), N'2085-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2387, CAST(N'2028-10-20' AS Date), N'2085-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2388, CAST(N'2028-10-21' AS Date), N'2085-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2389, CAST(N'2028-10-22' AS Date), N'2085-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2390, CAST(N'2028-10-23' AS Date), N'2085-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2391, CAST(N'2028-10-24' AS Date), N'2085-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2392, CAST(N'2028-10-25' AS Date), N'2085-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2393, CAST(N'2028-10-26' AS Date), N'2085-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2394, CAST(N'2028-10-27' AS Date), N'2085-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2395, CAST(N'2028-10-28' AS Date), N'2085-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2396, CAST(N'2028-10-29' AS Date), N'2085-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2397, CAST(N'2028-10-30' AS Date), N'2085-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2398, CAST(N'2028-10-31' AS Date), N'2085-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2399, CAST(N'2028-11-01' AS Date), N'2085-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2400, CAST(N'2028-11-02' AS Date), N'2085-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2401, CAST(N'2028-11-03' AS Date), N'2085-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2402, CAST(N'2028-11-04' AS Date), N'2085-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2403, CAST(N'2028-11-05' AS Date), N'2085-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2404, CAST(N'2028-11-06' AS Date), N'2085-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2405, CAST(N'2028-11-07' AS Date), N'2085-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2406, CAST(N'2028-11-08' AS Date), N'2085-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2407, CAST(N'2028-11-09' AS Date), N'2085-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2408, CAST(N'2028-11-10' AS Date), N'2085-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2409, CAST(N'2028-11-11' AS Date), N'2085-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2410, CAST(N'2028-11-12' AS Date), N'2085-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2411, CAST(N'2028-11-13' AS Date), N'2085-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2412, CAST(N'2028-11-14' AS Date), N'2085-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2413, CAST(N'2028-11-15' AS Date), N'2085-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2414, CAST(N'2028-11-16' AS Date), N'2085-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2415, CAST(N'2028-11-17' AS Date), N'2085-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2416, CAST(N'2028-11-18' AS Date), N'2085-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2417, CAST(N'2028-11-19' AS Date), N'2085-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2418, CAST(N'2028-11-20' AS Date), N'2085-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2419, CAST(N'2028-11-21' AS Date), N'2085-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2420, CAST(N'2028-11-22' AS Date), N'2085-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2421, CAST(N'2028-11-23' AS Date), N'2085-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2422, CAST(N'2028-11-24' AS Date), N'2085-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2423, CAST(N'2028-11-25' AS Date), N'2085-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2424, CAST(N'2028-11-26' AS Date), N'2085-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2425, CAST(N'2028-11-27' AS Date), N'2085-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2426, CAST(N'2028-11-28' AS Date), N'2085-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2427, CAST(N'2028-11-29' AS Date), N'2085-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2428, CAST(N'2028-11-30' AS Date), N'2085-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2429, CAST(N'2028-12-01' AS Date), N'2085-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2430, CAST(N'2028-12-02' AS Date), N'2085-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2431, CAST(N'2028-12-03' AS Date), N'2085-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2432, CAST(N'2028-12-04' AS Date), N'2085-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2433, CAST(N'2028-12-05' AS Date), N'2085-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2434, CAST(N'2028-12-06' AS Date), N'2085-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2435, CAST(N'2028-12-07' AS Date), N'2085-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2436, CAST(N'2028-12-08' AS Date), N'2085-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2437, CAST(N'2028-12-09' AS Date), N'2085-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2438, CAST(N'2028-12-10' AS Date), N'2085-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2439, CAST(N'2028-12-11' AS Date), N'2085-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2440, CAST(N'2028-12-12' AS Date), N'2085-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2441, CAST(N'2028-12-13' AS Date), N'2085-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2442, CAST(N'2028-12-14' AS Date), N'2085-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2443, CAST(N'2028-12-15' AS Date), N'2085-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2444, CAST(N'2028-12-16' AS Date), N'2085-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2445, CAST(N'2028-12-17' AS Date), N'2085-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2446, CAST(N'2028-12-18' AS Date), N'2085-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2447, CAST(N'2028-12-19' AS Date), N'2085-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2448, CAST(N'2028-12-20' AS Date), N'2085-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2449, CAST(N'2028-12-21' AS Date), N'2085-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2450, CAST(N'2028-12-22' AS Date), N'2085-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2451, CAST(N'2028-12-23' AS Date), N'2085-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2452, CAST(N'2028-12-24' AS Date), N'2085-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2453, CAST(N'2028-12-25' AS Date), N'2085-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2454, CAST(N'2028-12-26' AS Date), N'2085-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2455, CAST(N'2028-12-27' AS Date), N'2085-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2456, CAST(N'2028-12-28' AS Date), N'2085-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2457, CAST(N'2028-12-29' AS Date), N'2085-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2458, CAST(N'2028-12-30' AS Date), N'2085-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2459, CAST(N'2028-12-31' AS Date), N'2085-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2460, CAST(N'2029-01-01' AS Date), N'2085-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2461, CAST(N'2029-01-02' AS Date), N'2085-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2462, CAST(N'2029-01-03' AS Date), N'2085-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2463, CAST(N'2029-01-04' AS Date), N'2085-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2464, CAST(N'2029-01-05' AS Date), N'2085-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2465, CAST(N'2029-01-06' AS Date), N'2085-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2466, CAST(N'2029-01-07' AS Date), N'2085-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2467, CAST(N'2029-01-08' AS Date), N'2085-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2468, CAST(N'2029-01-09' AS Date), N'2085-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2469, CAST(N'2029-01-10' AS Date), N'2085-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2470, CAST(N'2029-01-11' AS Date), N'2085-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2471, CAST(N'2029-01-12' AS Date), N'2085-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2472, CAST(N'2029-01-13' AS Date), N'2085-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2473, CAST(N'2029-01-14' AS Date), N'2085-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2474, CAST(N'2029-01-15' AS Date), N'2085-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2475, CAST(N'2029-01-16' AS Date), N'2085-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2476, CAST(N'2029-01-17' AS Date), N'2085-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2477, CAST(N'2029-01-18' AS Date), N'2085-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2478, CAST(N'2029-01-19' AS Date), N'2085-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2479, CAST(N'2029-01-20' AS Date), N'2085-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2480, CAST(N'2029-01-21' AS Date), N'2085-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2481, CAST(N'2029-01-22' AS Date), N'2085-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2482, CAST(N'2029-01-23' AS Date), N'2085-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2483, CAST(N'2029-01-24' AS Date), N'2085-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2484, CAST(N'2029-01-25' AS Date), N'2085-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2485, CAST(N'2029-01-26' AS Date), N'2085-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2486, CAST(N'2029-01-27' AS Date), N'2085-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2487, CAST(N'2029-01-28' AS Date), N'2085-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2488, CAST(N'2029-01-29' AS Date), N'2085-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2489, CAST(N'2029-01-30' AS Date), N'2085-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2490, CAST(N'2029-01-31' AS Date), N'2085-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2491, CAST(N'2029-02-01' AS Date), N'2085-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2492, CAST(N'2029-02-02' AS Date), N'2085-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2493, CAST(N'2029-02-03' AS Date), N'2085-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2494, CAST(N'2029-02-04' AS Date), N'2085-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2495, CAST(N'2029-02-05' AS Date), N'2085-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2496, CAST(N'2029-02-06' AS Date), N'2085-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2497, CAST(N'2029-02-07' AS Date), N'2085-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2498, CAST(N'2029-02-08' AS Date), N'2085-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2499, CAST(N'2029-02-09' AS Date), N'2085-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2500, CAST(N'2029-02-10' AS Date), N'2085-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2501, CAST(N'2029-02-11' AS Date), N'2085-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2502, CAST(N'2029-02-12' AS Date), N'2085-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2503, CAST(N'2029-02-13' AS Date), N'2085-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2504, CAST(N'2029-02-14' AS Date), N'2085-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2505, CAST(N'2029-02-15' AS Date), N'2085-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2506, CAST(N'2029-02-16' AS Date), N'2085-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2507, CAST(N'2029-02-17' AS Date), N'2085-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2508, CAST(N'2029-02-18' AS Date), N'2085-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2509, CAST(N'2029-02-19' AS Date), N'2085-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2510, CAST(N'2029-02-20' AS Date), N'2085-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2511, CAST(N'2029-02-21' AS Date), N'2085-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2512, CAST(N'2029-02-22' AS Date), N'2085-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2513, CAST(N'2029-02-23' AS Date), N'2085-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2514, CAST(N'2029-02-24' AS Date), N'2085-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2515, CAST(N'2029-02-25' AS Date), N'2085-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2516, CAST(N'2029-02-26' AS Date), N'2085-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2517, CAST(N'2029-02-27' AS Date), N'2085-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2518, CAST(N'2029-02-28' AS Date), N'2085-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2519, CAST(N'2029-03-01' AS Date), N'2085-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2520, CAST(N'2029-03-02' AS Date), N'2085-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2521, CAST(N'2029-03-03' AS Date), N'2085-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2522, CAST(N'2029-03-04' AS Date), N'2085-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2523, CAST(N'2029-03-05' AS Date), N'2085-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2524, CAST(N'2029-03-06' AS Date), N'2085-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2525, CAST(N'2029-03-07' AS Date), N'2085-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2526, CAST(N'2029-03-08' AS Date), N'2085-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2527, CAST(N'2029-03-09' AS Date), N'2085-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2528, CAST(N'2029-03-10' AS Date), N'2085-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2529, CAST(N'2029-03-11' AS Date), N'2085-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2530, CAST(N'2029-03-12' AS Date), N'2085-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2531, CAST(N'2029-03-13' AS Date), N'2085-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2532, CAST(N'2029-03-14' AS Date), N'2085-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2533, CAST(N'2029-03-15' AS Date), N'2085-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2534, CAST(N'2029-03-16' AS Date), N'2085-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2535, CAST(N'2029-03-17' AS Date), N'2085-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2536, CAST(N'2029-03-18' AS Date), N'2085-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2537, CAST(N'2029-03-19' AS Date), N'2085-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2538, CAST(N'2029-03-20' AS Date), N'2085-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2539, CAST(N'2029-03-21' AS Date), N'2085-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2540, CAST(N'2029-03-22' AS Date), N'2085-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2541, CAST(N'2029-03-23' AS Date), N'2085-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2542, CAST(N'2029-03-24' AS Date), N'2085-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2543, CAST(N'2029-03-25' AS Date), N'2085-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2544, CAST(N'2029-03-26' AS Date), N'2085-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2545, CAST(N'2029-03-27' AS Date), N'2085-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2546, CAST(N'2029-03-28' AS Date), N'2085-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2547, CAST(N'2029-03-29' AS Date), N'2085-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2548, CAST(N'2029-03-30' AS Date), N'2085-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2549, CAST(N'2029-03-31' AS Date), N'2085-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2550, CAST(N'2029-04-01' AS Date), N'2085-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2551, CAST(N'2029-04-02' AS Date), N'2085-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2552, CAST(N'2029-04-03' AS Date), N'2085-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2553, CAST(N'2029-04-04' AS Date), N'2085-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2554, CAST(N'2029-04-05' AS Date), N'2085-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2555, CAST(N'2029-04-06' AS Date), N'2085-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2556, CAST(N'2029-04-07' AS Date), N'2085-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2557, CAST(N'2029-04-08' AS Date), N'2085-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2558, CAST(N'2029-04-09' AS Date), N'2085-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2559, CAST(N'2029-04-10' AS Date), N'2085-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2560, CAST(N'2029-04-11' AS Date), N'2085-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2561, CAST(N'2029-04-12' AS Date), N'2085-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2562, CAST(N'2029-04-13' AS Date), N'2085-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2563, CAST(N'2029-04-14' AS Date), N'2085-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2564, CAST(N'2029-04-15' AS Date), N'2086-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2565, CAST(N'2029-04-16' AS Date), N'2086-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2566, CAST(N'2029-04-17' AS Date), N'2086-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2567, CAST(N'2029-04-18' AS Date), N'2086-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2568, CAST(N'2029-04-19' AS Date), N'2086-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2569, CAST(N'2029-04-20' AS Date), N'2086-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2570, CAST(N'2029-04-21' AS Date), N'2086-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2571, CAST(N'2029-04-22' AS Date), N'2086-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2572, CAST(N'2029-04-23' AS Date), N'2086-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2573, CAST(N'2029-04-24' AS Date), N'2086-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2574, CAST(N'2029-04-25' AS Date), N'2086-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2575, CAST(N'2029-04-26' AS Date), N'2086-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2576, CAST(N'2029-04-27' AS Date), N'2086-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2577, CAST(N'2029-04-28' AS Date), N'2086-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2578, CAST(N'2029-04-29' AS Date), N'2086-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2579, CAST(N'2029-04-30' AS Date), N'2086-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2580, CAST(N'2029-05-01' AS Date), N'2086-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2581, CAST(N'2029-05-02' AS Date), N'2086-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2582, CAST(N'2029-05-03' AS Date), N'2086-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2583, CAST(N'2029-05-04' AS Date), N'2086-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2584, CAST(N'2029-05-05' AS Date), N'2086-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2585, CAST(N'2029-05-06' AS Date), N'2086-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2586, CAST(N'2029-05-07' AS Date), N'2086-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2587, CAST(N'2029-05-08' AS Date), N'2086-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2588, CAST(N'2029-05-09' AS Date), N'2086-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2589, CAST(N'2029-05-10' AS Date), N'2086-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2590, CAST(N'2029-05-11' AS Date), N'2086-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2591, CAST(N'2029-05-12' AS Date), N'2086-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2592, CAST(N'2029-05-13' AS Date), N'2086-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2593, CAST(N'2029-05-14' AS Date), N'2086-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2594, CAST(N'2029-05-15' AS Date), N'2086-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2595, CAST(N'2029-05-16' AS Date), N'2086-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2596, CAST(N'2029-05-17' AS Date), N'2086-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2597, CAST(N'2029-05-18' AS Date), N'2086-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2598, CAST(N'2029-05-19' AS Date), N'2086-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2599, CAST(N'2029-05-20' AS Date), N'2086-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2600, CAST(N'2029-05-21' AS Date), N'2086-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2601, CAST(N'2029-05-22' AS Date), N'2086-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2602, CAST(N'2029-05-23' AS Date), N'2086-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2603, CAST(N'2029-05-24' AS Date), N'2086-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2604, CAST(N'2029-05-25' AS Date), N'2086-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2605, CAST(N'2029-05-26' AS Date), N'2086-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2606, CAST(N'2029-05-27' AS Date), N'2086-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2607, CAST(N'2029-05-28' AS Date), N'2086-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2608, CAST(N'2029-05-29' AS Date), N'2086-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2609, CAST(N'2029-05-30' AS Date), N'2086-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2610, CAST(N'2029-05-31' AS Date), N'2086-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2611, CAST(N'2029-06-01' AS Date), N'2086-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2612, CAST(N'2029-06-02' AS Date), N'2086-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2613, CAST(N'2029-06-03' AS Date), N'2086-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2614, CAST(N'2029-06-04' AS Date), N'2086-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2615, CAST(N'2029-06-05' AS Date), N'2086-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2616, CAST(N'2029-06-06' AS Date), N'2086-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2617, CAST(N'2029-06-07' AS Date), N'2086-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2618, CAST(N'2029-06-08' AS Date), N'2086-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2619, CAST(N'2029-06-09' AS Date), N'2086-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2620, CAST(N'2029-06-10' AS Date), N'2086-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2621, CAST(N'2029-06-11' AS Date), N'2086-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2622, CAST(N'2029-06-12' AS Date), N'2086-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2623, CAST(N'2029-06-13' AS Date), N'2086-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2624, CAST(N'2029-06-14' AS Date), N'2086-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2625, CAST(N'2029-06-15' AS Date), N'2086-02-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2626, CAST(N'2029-06-16' AS Date), N'2086-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2627, CAST(N'2029-06-17' AS Date), N'2086-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2628, CAST(N'2029-06-18' AS Date), N'2086-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2629, CAST(N'2029-06-19' AS Date), N'2086-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2630, CAST(N'2029-06-20' AS Date), N'2086-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2631, CAST(N'2029-06-21' AS Date), N'2086-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2632, CAST(N'2029-06-22' AS Date), N'2086-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2633, CAST(N'2029-06-23' AS Date), N'2086-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2634, CAST(N'2029-06-24' AS Date), N'2086-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2635, CAST(N'2029-06-25' AS Date), N'2086-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2636, CAST(N'2029-06-26' AS Date), N'2086-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2637, CAST(N'2029-06-27' AS Date), N'2086-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2638, CAST(N'2029-06-28' AS Date), N'2086-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2639, CAST(N'2029-06-29' AS Date), N'2086-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2640, CAST(N'2029-06-30' AS Date), N'2086-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2641, CAST(N'2029-07-01' AS Date), N'2086-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2642, CAST(N'2029-07-02' AS Date), N'2086-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2643, CAST(N'2029-07-03' AS Date), N'2086-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2644, CAST(N'2029-07-04' AS Date), N'2086-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2645, CAST(N'2029-07-05' AS Date), N'2086-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2646, CAST(N'2029-07-06' AS Date), N'2086-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2647, CAST(N'2029-07-07' AS Date), N'2086-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2648, CAST(N'2029-07-08' AS Date), N'2086-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2649, CAST(N'2029-07-09' AS Date), N'2086-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2650, CAST(N'2029-07-10' AS Date), N'2086-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2651, CAST(N'2029-07-11' AS Date), N'2086-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2652, CAST(N'2029-07-12' AS Date), N'2086-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2653, CAST(N'2029-07-13' AS Date), N'2086-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2654, CAST(N'2029-07-14' AS Date), N'2086-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2655, CAST(N'2029-07-15' AS Date), N'2086-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2656, CAST(N'2029-07-16' AS Date), N'2086-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2657, CAST(N'2029-07-17' AS Date), N'2086-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2658, CAST(N'2029-07-18' AS Date), N'2086-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2659, CAST(N'2029-07-19' AS Date), N'2086-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2660, CAST(N'2029-07-20' AS Date), N'2086-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2661, CAST(N'2029-07-21' AS Date), N'2086-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2662, CAST(N'2029-07-22' AS Date), N'2086-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2663, CAST(N'2029-07-23' AS Date), N'2086-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2664, CAST(N'2029-07-24' AS Date), N'2086-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2665, CAST(N'2029-07-25' AS Date), N'2086-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2666, CAST(N'2029-07-26' AS Date), N'2086-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2667, CAST(N'2029-07-27' AS Date), N'2086-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2668, CAST(N'2029-07-28' AS Date), N'2086-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2669, CAST(N'2029-07-29' AS Date), N'2086-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2670, CAST(N'2029-07-30' AS Date), N'2086-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2671, CAST(N'2029-07-31' AS Date), N'2086-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2672, CAST(N'2029-08-01' AS Date), N'2086-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2673, CAST(N'2029-08-02' AS Date), N'2086-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2674, CAST(N'2029-08-03' AS Date), N'2086-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2675, CAST(N'2029-08-04' AS Date), N'2086-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2676, CAST(N'2029-08-05' AS Date), N'2086-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2677, CAST(N'2029-08-06' AS Date), N'2086-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2678, CAST(N'2029-08-07' AS Date), N'2086-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2679, CAST(N'2029-08-08' AS Date), N'2086-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2680, CAST(N'2029-08-09' AS Date), N'2086-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2681, CAST(N'2029-08-10' AS Date), N'2086-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2682, CAST(N'2029-08-11' AS Date), N'2086-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2683, CAST(N'2029-08-12' AS Date), N'2086-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2684, CAST(N'2029-08-13' AS Date), N'2086-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2685, CAST(N'2029-08-14' AS Date), N'2086-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2686, CAST(N'2029-08-15' AS Date), N'2086-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2687, CAST(N'2029-08-16' AS Date), N'2086-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2688, CAST(N'2029-08-17' AS Date), N'2086-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2689, CAST(N'2029-08-18' AS Date), N'2086-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2690, CAST(N'2029-08-19' AS Date), N'2086-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2691, CAST(N'2029-08-20' AS Date), N'2086-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2692, CAST(N'2029-08-21' AS Date), N'2086-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2693, CAST(N'2029-08-22' AS Date), N'2086-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2694, CAST(N'2029-08-23' AS Date), N'2086-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2695, CAST(N'2029-08-24' AS Date), N'2086-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2696, CAST(N'2029-08-25' AS Date), N'2086-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2697, CAST(N'2029-08-26' AS Date), N'2086-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2698, CAST(N'2029-08-27' AS Date), N'2086-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2699, CAST(N'2029-08-28' AS Date), N'2086-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2700, CAST(N'2029-08-29' AS Date), N'2086-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2701, CAST(N'2029-08-30' AS Date), N'2086-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2702, CAST(N'2029-08-31' AS Date), N'2086-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2703, CAST(N'2029-09-01' AS Date), N'2086-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2704, CAST(N'2029-09-02' AS Date), N'2086-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2705, CAST(N'2029-09-03' AS Date), N'2086-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2706, CAST(N'2029-09-04' AS Date), N'2086-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2707, CAST(N'2029-09-05' AS Date), N'2086-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2708, CAST(N'2029-09-06' AS Date), N'2086-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2709, CAST(N'2029-09-07' AS Date), N'2086-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2710, CAST(N'2029-09-08' AS Date), N'2086-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2711, CAST(N'2029-09-09' AS Date), N'2086-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2712, CAST(N'2029-09-10' AS Date), N'2086-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2713, CAST(N'2029-09-11' AS Date), N'2086-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2714, CAST(N'2029-09-12' AS Date), N'2086-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2715, CAST(N'2029-09-13' AS Date), N'2086-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2716, CAST(N'2029-09-14' AS Date), N'2086-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2717, CAST(N'2029-09-15' AS Date), N'2086-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2718, CAST(N'2029-09-16' AS Date), N'2086-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2719, CAST(N'2029-09-17' AS Date), N'2086-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2720, CAST(N'2029-09-18' AS Date), N'2086-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2721, CAST(N'2029-09-19' AS Date), N'2086-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2722, CAST(N'2029-09-20' AS Date), N'2086-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2723, CAST(N'2029-09-21' AS Date), N'2086-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2724, CAST(N'2029-09-22' AS Date), N'2086-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2725, CAST(N'2029-09-23' AS Date), N'2086-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2726, CAST(N'2029-09-24' AS Date), N'2086-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2727, CAST(N'2029-09-25' AS Date), N'2086-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2728, CAST(N'2029-09-26' AS Date), N'2086-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2729, CAST(N'2029-09-27' AS Date), N'2086-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2730, CAST(N'2029-09-28' AS Date), N'2086-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2731, CAST(N'2029-09-29' AS Date), N'2086-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2732, CAST(N'2029-09-30' AS Date), N'2086-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2733, CAST(N'2029-10-01' AS Date), N'2086-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2734, CAST(N'2029-10-02' AS Date), N'2086-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2735, CAST(N'2029-10-03' AS Date), N'2086-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2736, CAST(N'2029-10-04' AS Date), N'2086-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2737, CAST(N'2029-10-05' AS Date), N'2086-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2738, CAST(N'2029-10-06' AS Date), N'2086-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2739, CAST(N'2029-10-07' AS Date), N'2086-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2740, CAST(N'2029-10-08' AS Date), N'2086-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2741, CAST(N'2029-10-09' AS Date), N'2086-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2742, CAST(N'2029-10-10' AS Date), N'2086-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2743, CAST(N'2029-10-11' AS Date), N'2086-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2744, CAST(N'2029-10-12' AS Date), N'2086-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2745, CAST(N'2029-10-13' AS Date), N'2086-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2746, CAST(N'2029-10-14' AS Date), N'2086-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2747, CAST(N'2029-10-15' AS Date), N'2086-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2748, CAST(N'2029-10-16' AS Date), N'2086-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2749, CAST(N'2029-10-17' AS Date), N'2086-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2750, CAST(N'2029-10-18' AS Date), N'2086-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2751, CAST(N'2029-10-19' AS Date), N'2086-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2752, CAST(N'2029-10-20' AS Date), N'2086-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2753, CAST(N'2029-10-21' AS Date), N'2086-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2754, CAST(N'2029-10-22' AS Date), N'2086-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2755, CAST(N'2029-10-23' AS Date), N'2086-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2756, CAST(N'2029-10-24' AS Date), N'2086-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2757, CAST(N'2029-10-25' AS Date), N'2086-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2758, CAST(N'2029-10-26' AS Date), N'2086-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2759, CAST(N'2029-10-27' AS Date), N'2086-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2760, CAST(N'2029-10-28' AS Date), N'2086-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2761, CAST(N'2029-10-29' AS Date), N'2086-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2762, CAST(N'2029-10-30' AS Date), N'2086-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2763, CAST(N'2029-10-31' AS Date), N'2086-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2764, CAST(N'2029-11-01' AS Date), N'2086-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2765, CAST(N'2029-11-02' AS Date), N'2086-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2766, CAST(N'2029-11-03' AS Date), N'2086-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2767, CAST(N'2029-11-04' AS Date), N'2086-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2768, CAST(N'2029-11-05' AS Date), N'2086-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2769, CAST(N'2029-11-06' AS Date), N'2086-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2770, CAST(N'2029-11-07' AS Date), N'2086-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2771, CAST(N'2029-11-08' AS Date), N'2086-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2772, CAST(N'2029-11-09' AS Date), N'2086-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2773, CAST(N'2029-11-10' AS Date), N'2086-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2774, CAST(N'2029-11-11' AS Date), N'2086-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2775, CAST(N'2029-11-12' AS Date), N'2086-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2776, CAST(N'2029-11-13' AS Date), N'2086-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2777, CAST(N'2029-11-14' AS Date), N'2086-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2778, CAST(N'2029-11-15' AS Date), N'2086-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2779, CAST(N'2029-11-16' AS Date), N'2086-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2780, CAST(N'2029-11-17' AS Date), N'2086-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2781, CAST(N'2029-11-18' AS Date), N'2086-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2782, CAST(N'2029-11-19' AS Date), N'2086-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2783, CAST(N'2029-11-20' AS Date), N'2086-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2784, CAST(N'2029-11-21' AS Date), N'2086-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2785, CAST(N'2029-11-22' AS Date), N'2086-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2786, CAST(N'2029-11-23' AS Date), N'2086-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2787, CAST(N'2029-11-24' AS Date), N'2086-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2788, CAST(N'2029-11-25' AS Date), N'2086-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2789, CAST(N'2029-11-26' AS Date), N'2086-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2790, CAST(N'2029-11-27' AS Date), N'2086-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2791, CAST(N'2029-11-28' AS Date), N'2086-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2792, CAST(N'2029-11-29' AS Date), N'2086-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2793, CAST(N'2029-11-30' AS Date), N'2086-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2794, CAST(N'2029-12-01' AS Date), N'2086-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2795, CAST(N'2029-12-02' AS Date), N'2086-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2796, CAST(N'2029-12-03' AS Date), N'2086-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2797, CAST(N'2029-12-04' AS Date), N'2086-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2798, CAST(N'2029-12-05' AS Date), N'2086-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2799, CAST(N'2029-12-06' AS Date), N'2086-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2800, CAST(N'2029-12-07' AS Date), N'2086-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2801, CAST(N'2029-12-08' AS Date), N'2086-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2802, CAST(N'2029-12-09' AS Date), N'2086-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2803, CAST(N'2029-12-10' AS Date), N'2086-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2804, CAST(N'2029-12-11' AS Date), N'2086-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2805, CAST(N'2029-12-12' AS Date), N'2086-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2806, CAST(N'2029-12-13' AS Date), N'2086-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2807, CAST(N'2029-12-14' AS Date), N'2086-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2808, CAST(N'2029-12-15' AS Date), N'2086-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2809, CAST(N'2029-12-16' AS Date), N'2086-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2810, CAST(N'2029-12-17' AS Date), N'2086-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2811, CAST(N'2029-12-18' AS Date), N'2086-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2812, CAST(N'2029-12-19' AS Date), N'2086-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2813, CAST(N'2029-12-20' AS Date), N'2086-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2814, CAST(N'2029-12-21' AS Date), N'2086-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2815, CAST(N'2029-12-22' AS Date), N'2086-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2816, CAST(N'2029-12-23' AS Date), N'2086-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2817, CAST(N'2029-12-24' AS Date), N'2086-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2818, CAST(N'2029-12-25' AS Date), N'2086-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2819, CAST(N'2029-12-26' AS Date), N'2086-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2820, CAST(N'2029-12-27' AS Date), N'2086-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2821, CAST(N'2029-12-28' AS Date), N'2086-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2822, CAST(N'2029-12-29' AS Date), N'2086-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2823, CAST(N'2029-12-30' AS Date), N'2086-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2824, CAST(N'2029-12-31' AS Date), N'2086-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2825, CAST(N'2030-01-01' AS Date), N'2086-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2826, CAST(N'2030-01-02' AS Date), N'2086-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2827, CAST(N'2030-01-03' AS Date), N'2086-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2828, CAST(N'2030-01-04' AS Date), N'2086-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2829, CAST(N'2030-01-05' AS Date), N'2086-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2830, CAST(N'2030-01-06' AS Date), N'2086-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2831, CAST(N'2030-01-07' AS Date), N'2086-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2832, CAST(N'2030-01-08' AS Date), N'2086-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2833, CAST(N'2030-01-09' AS Date), N'2086-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2834, CAST(N'2030-01-10' AS Date), N'2086-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2835, CAST(N'2030-01-11' AS Date), N'2086-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2836, CAST(N'2030-01-12' AS Date), N'2086-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2837, CAST(N'2030-01-13' AS Date), N'2086-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2838, CAST(N'2030-01-14' AS Date), N'2086-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2839, CAST(N'2030-01-15' AS Date), N'2086-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2840, CAST(N'2030-01-16' AS Date), N'2086-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2841, CAST(N'2030-01-17' AS Date), N'2086-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2842, CAST(N'2030-01-18' AS Date), N'2086-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2843, CAST(N'2030-01-19' AS Date), N'2086-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2844, CAST(N'2030-01-20' AS Date), N'2086-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2845, CAST(N'2030-01-21' AS Date), N'2086-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2846, CAST(N'2030-01-22' AS Date), N'2086-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2847, CAST(N'2030-01-23' AS Date), N'2086-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2848, CAST(N'2030-01-24' AS Date), N'2086-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2849, CAST(N'2030-01-25' AS Date), N'2086-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2850, CAST(N'2030-01-26' AS Date), N'2086-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2851, CAST(N'2030-01-27' AS Date), N'2086-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2852, CAST(N'2030-01-28' AS Date), N'2086-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2853, CAST(N'2030-01-29' AS Date), N'2086-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2854, CAST(N'2030-01-30' AS Date), N'2086-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2855, CAST(N'2030-01-31' AS Date), N'2086-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2856, CAST(N'2030-02-01' AS Date), N'2086-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2857, CAST(N'2030-02-02' AS Date), N'2086-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2858, CAST(N'2030-02-03' AS Date), N'2086-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2859, CAST(N'2030-02-04' AS Date), N'2086-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2860, CAST(N'2030-02-05' AS Date), N'2086-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2861, CAST(N'2030-02-06' AS Date), N'2086-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2862, CAST(N'2030-02-07' AS Date), N'2086-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2863, CAST(N'2030-02-08' AS Date), N'2086-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2864, CAST(N'2030-02-09' AS Date), N'2086-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2865, CAST(N'2030-02-10' AS Date), N'2086-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2866, CAST(N'2030-02-11' AS Date), N'2086-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2867, CAST(N'2030-02-12' AS Date), N'2086-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2868, CAST(N'2030-02-13' AS Date), N'2086-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2869, CAST(N'2030-02-14' AS Date), N'2086-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2870, CAST(N'2030-02-15' AS Date), N'2086-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2871, CAST(N'2030-02-16' AS Date), N'2086-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2872, CAST(N'2030-02-17' AS Date), N'2086-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2873, CAST(N'2030-02-18' AS Date), N'2086-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2874, CAST(N'2030-02-19' AS Date), N'2086-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2875, CAST(N'2030-02-20' AS Date), N'2086-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2876, CAST(N'2030-02-21' AS Date), N'2086-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2877, CAST(N'2030-02-22' AS Date), N'2086-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2878, CAST(N'2030-02-23' AS Date), N'2086-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2879, CAST(N'2030-02-24' AS Date), N'2086-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2880, CAST(N'2030-02-25' AS Date), N'2086-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2881, CAST(N'2030-02-26' AS Date), N'2086-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2882, CAST(N'2030-02-27' AS Date), N'2086-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2883, CAST(N'2030-02-28' AS Date), N'2086-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2884, CAST(N'2030-03-01' AS Date), N'2086-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2885, CAST(N'2030-03-02' AS Date), N'2086-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2886, CAST(N'2030-03-03' AS Date), N'2086-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2887, CAST(N'2030-03-04' AS Date), N'2086-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2888, CAST(N'2030-03-05' AS Date), N'2086-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2889, CAST(N'2030-03-06' AS Date), N'2086-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2890, CAST(N'2030-03-07' AS Date), N'2086-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2891, CAST(N'2030-03-08' AS Date), N'2086-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2892, CAST(N'2030-03-09' AS Date), N'2086-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2893, CAST(N'2030-03-10' AS Date), N'2086-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2894, CAST(N'2030-03-11' AS Date), N'2086-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2895, CAST(N'2030-03-12' AS Date), N'2086-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2896, CAST(N'2030-03-13' AS Date), N'2086-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2897, CAST(N'2030-03-14' AS Date), N'2086-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2898, CAST(N'2030-03-15' AS Date), N'2086-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2899, CAST(N'2030-03-16' AS Date), N'2086-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2900, CAST(N'2030-03-17' AS Date), N'2086-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2901, CAST(N'2030-03-18' AS Date), N'2086-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2902, CAST(N'2030-03-19' AS Date), N'2086-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2903, CAST(N'2030-03-20' AS Date), N'2086-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2904, CAST(N'2030-03-21' AS Date), N'2086-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2905, CAST(N'2030-03-22' AS Date), N'2086-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2906, CAST(N'2030-03-23' AS Date), N'2086-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2907, CAST(N'2030-03-24' AS Date), N'2086-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2908, CAST(N'2030-03-25' AS Date), N'2086-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2909, CAST(N'2030-03-26' AS Date), N'2086-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2910, CAST(N'2030-03-27' AS Date), N'2086-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2911, CAST(N'2030-03-28' AS Date), N'2086-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2912, CAST(N'2030-03-29' AS Date), N'2086-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2913, CAST(N'2030-03-30' AS Date), N'2086-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2914, CAST(N'2030-03-31' AS Date), N'2086-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2915, CAST(N'2030-04-01' AS Date), N'2086-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2916, CAST(N'2030-04-02' AS Date), N'2086-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2917, CAST(N'2030-04-03' AS Date), N'2086-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2918, CAST(N'2030-04-04' AS Date), N'2086-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2919, CAST(N'2030-04-05' AS Date), N'2086-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2920, CAST(N'2030-04-06' AS Date), N'2086-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2921, CAST(N'2030-04-07' AS Date), N'2086-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2922, CAST(N'2030-04-08' AS Date), N'2086-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2923, CAST(N'2030-04-09' AS Date), N'2086-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2924, CAST(N'2030-04-10' AS Date), N'2086-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2925, CAST(N'2030-04-11' AS Date), N'2086-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2926, CAST(N'2030-04-12' AS Date), N'2086-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2927, CAST(N'2030-04-13' AS Date), N'2086-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2928, CAST(N'2030-04-14' AS Date), N'2086-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2929, CAST(N'2030-04-15' AS Date), N'2087-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2930, CAST(N'2030-04-16' AS Date), N'2087-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2931, CAST(N'2030-04-17' AS Date), N'2087-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2932, CAST(N'2030-04-18' AS Date), N'2087-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2933, CAST(N'2030-04-19' AS Date), N'2087-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2934, CAST(N'2030-04-20' AS Date), N'2087-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2935, CAST(N'2030-04-21' AS Date), N'2087-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2936, CAST(N'2030-04-22' AS Date), N'2087-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2937, CAST(N'2030-04-23' AS Date), N'2087-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2938, CAST(N'2030-04-24' AS Date), N'2087-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2939, CAST(N'2030-04-25' AS Date), N'2087-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2940, CAST(N'2030-04-26' AS Date), N'2087-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2941, CAST(N'2030-04-27' AS Date), N'2087-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2942, CAST(N'2030-04-28' AS Date), N'2087-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2943, CAST(N'2030-04-29' AS Date), N'2087-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2944, CAST(N'2030-04-30' AS Date), N'2087-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2945, CAST(N'2030-05-01' AS Date), N'2087-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2946, CAST(N'2030-05-02' AS Date), N'2087-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2947, CAST(N'2030-05-03' AS Date), N'2087-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2948, CAST(N'2030-05-04' AS Date), N'2087-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2949, CAST(N'2030-05-05' AS Date), N'2087-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2950, CAST(N'2030-05-06' AS Date), N'2087-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2951, CAST(N'2030-05-07' AS Date), N'2087-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2952, CAST(N'2030-05-08' AS Date), N'2087-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2953, CAST(N'2030-05-09' AS Date), N'2087-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2954, CAST(N'2030-05-10' AS Date), N'2087-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2955, CAST(N'2030-05-11' AS Date), N'2087-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2956, CAST(N'2030-05-12' AS Date), N'2087-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2957, CAST(N'2030-05-13' AS Date), N'2087-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2958, CAST(N'2030-05-14' AS Date), N'2087-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2959, CAST(N'2030-05-15' AS Date), N'2087-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2960, CAST(N'2030-05-16' AS Date), N'2087-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2961, CAST(N'2030-05-17' AS Date), N'2087-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2962, CAST(N'2030-05-18' AS Date), N'2087-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2963, CAST(N'2030-05-19' AS Date), N'2087-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2964, CAST(N'2030-05-20' AS Date), N'2087-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2965, CAST(N'2030-05-21' AS Date), N'2087-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2966, CAST(N'2030-05-22' AS Date), N'2087-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2967, CAST(N'2030-05-23' AS Date), N'2087-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2968, CAST(N'2030-05-24' AS Date), N'2087-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2969, CAST(N'2030-05-25' AS Date), N'2087-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2970, CAST(N'2030-05-26' AS Date), N'2087-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2971, CAST(N'2030-05-27' AS Date), N'2087-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2972, CAST(N'2030-05-28' AS Date), N'2087-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2973, CAST(N'2030-05-29' AS Date), N'2087-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2974, CAST(N'2030-05-30' AS Date), N'2087-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2975, CAST(N'2030-05-31' AS Date), N'2087-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2976, CAST(N'2030-06-01' AS Date), N'2087-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2977, CAST(N'2030-06-02' AS Date), N'2087-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2978, CAST(N'2030-06-03' AS Date), N'2087-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2979, CAST(N'2030-06-04' AS Date), N'2087-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2980, CAST(N'2030-06-05' AS Date), N'2087-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2981, CAST(N'2030-06-06' AS Date), N'2087-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2982, CAST(N'2030-06-07' AS Date), N'2087-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2983, CAST(N'2030-06-08' AS Date), N'2087-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2984, CAST(N'2030-06-09' AS Date), N'2087-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2985, CAST(N'2030-06-10' AS Date), N'2087-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2986, CAST(N'2030-06-11' AS Date), N'2087-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2987, CAST(N'2030-06-12' AS Date), N'2087-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2988, CAST(N'2030-06-13' AS Date), N'2087-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2989, CAST(N'2030-06-14' AS Date), N'2087-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2990, CAST(N'2030-06-15' AS Date), N'2087-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2991, CAST(N'2030-06-16' AS Date), N'2087-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2992, CAST(N'2030-06-17' AS Date), N'2087-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2993, CAST(N'2030-06-18' AS Date), N'2087-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2994, CAST(N'2030-06-19' AS Date), N'2087-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2995, CAST(N'2030-06-20' AS Date), N'2087-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2996, CAST(N'2030-06-21' AS Date), N'2087-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2997, CAST(N'2030-06-22' AS Date), N'2087-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2998, CAST(N'2030-06-23' AS Date), N'2087-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (2999, CAST(N'2030-06-24' AS Date), N'2087-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3000, CAST(N'2030-06-25' AS Date), N'2087-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3001, CAST(N'2030-06-26' AS Date), N'2087-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3002, CAST(N'2030-06-27' AS Date), N'2087-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3003, CAST(N'2030-06-28' AS Date), N'2087-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3004, CAST(N'2030-06-29' AS Date), N'2087-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3005, CAST(N'2030-06-30' AS Date), N'2087-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3006, CAST(N'2030-07-01' AS Date), N'2087-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3007, CAST(N'2030-07-02' AS Date), N'2087-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3008, CAST(N'2030-07-03' AS Date), N'2087-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3009, CAST(N'2030-07-04' AS Date), N'2087-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3010, CAST(N'2030-07-05' AS Date), N'2087-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3011, CAST(N'2030-07-06' AS Date), N'2087-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3012, CAST(N'2030-07-07' AS Date), N'2087-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3013, CAST(N'2030-07-08' AS Date), N'2087-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3014, CAST(N'2030-07-09' AS Date), N'2087-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3015, CAST(N'2030-07-10' AS Date), N'2087-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3016, CAST(N'2030-07-11' AS Date), N'2087-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3017, CAST(N'2030-07-12' AS Date), N'2087-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3018, CAST(N'2030-07-13' AS Date), N'2087-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3019, CAST(N'2030-07-14' AS Date), N'2087-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3020, CAST(N'2030-07-15' AS Date), N'2087-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3021, CAST(N'2030-07-16' AS Date), N'2087-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3022, CAST(N'2030-07-17' AS Date), N'2087-03-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3023, CAST(N'2030-07-18' AS Date), N'2087-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3024, CAST(N'2030-07-19' AS Date), N'2087-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3025, CAST(N'2030-07-20' AS Date), N'2087-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3026, CAST(N'2030-07-21' AS Date), N'2087-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3027, CAST(N'2030-07-22' AS Date), N'2087-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3028, CAST(N'2030-07-23' AS Date), N'2087-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3029, CAST(N'2030-07-24' AS Date), N'2087-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3030, CAST(N'2030-07-25' AS Date), N'2087-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3031, CAST(N'2030-07-26' AS Date), N'2087-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3032, CAST(N'2030-07-27' AS Date), N'2087-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3033, CAST(N'2030-07-28' AS Date), N'2087-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3034, CAST(N'2030-07-29' AS Date), N'2087-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3035, CAST(N'2030-07-30' AS Date), N'2087-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3036, CAST(N'2030-07-31' AS Date), N'2087-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3037, CAST(N'2030-08-01' AS Date), N'2087-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3038, CAST(N'2030-08-02' AS Date), N'2087-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3039, CAST(N'2030-08-03' AS Date), N'2087-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3040, CAST(N'2030-08-04' AS Date), N'2087-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3041, CAST(N'2030-08-05' AS Date), N'2087-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3042, CAST(N'2030-08-06' AS Date), N'2087-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3043, CAST(N'2030-08-07' AS Date), N'2087-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3044, CAST(N'2030-08-08' AS Date), N'2087-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3045, CAST(N'2030-08-09' AS Date), N'2087-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3046, CAST(N'2030-08-10' AS Date), N'2087-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3047, CAST(N'2030-08-11' AS Date), N'2087-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3048, CAST(N'2030-08-12' AS Date), N'2087-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3049, CAST(N'2030-08-13' AS Date), N'2087-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3050, CAST(N'2030-08-14' AS Date), N'2087-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3051, CAST(N'2030-08-15' AS Date), N'2087-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3052, CAST(N'2030-08-16' AS Date), N'2087-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3053, CAST(N'2030-08-17' AS Date), N'2087-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3054, CAST(N'2030-08-18' AS Date), N'2087-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3055, CAST(N'2030-08-19' AS Date), N'2087-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3056, CAST(N'2030-08-20' AS Date), N'2087-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3057, CAST(N'2030-08-21' AS Date), N'2087-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3058, CAST(N'2030-08-22' AS Date), N'2087-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3059, CAST(N'2030-08-23' AS Date), N'2087-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3060, CAST(N'2030-08-24' AS Date), N'2087-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3061, CAST(N'2030-08-25' AS Date), N'2087-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3062, CAST(N'2030-08-26' AS Date), N'2087-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3063, CAST(N'2030-08-27' AS Date), N'2087-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3064, CAST(N'2030-08-28' AS Date), N'2087-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3065, CAST(N'2030-08-29' AS Date), N'2087-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3066, CAST(N'2030-08-30' AS Date), N'2087-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3067, CAST(N'2030-08-31' AS Date), N'2087-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3068, CAST(N'2030-09-01' AS Date), N'2087-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3069, CAST(N'2030-09-02' AS Date), N'2087-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3070, CAST(N'2030-09-03' AS Date), N'2087-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3071, CAST(N'2030-09-04' AS Date), N'2087-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3072, CAST(N'2030-09-05' AS Date), N'2087-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3073, CAST(N'2030-09-06' AS Date), N'2087-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3074, CAST(N'2030-09-07' AS Date), N'2087-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3075, CAST(N'2030-09-08' AS Date), N'2087-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3076, CAST(N'2030-09-09' AS Date), N'2087-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3077, CAST(N'2030-09-10' AS Date), N'2087-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3078, CAST(N'2030-09-11' AS Date), N'2087-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3079, CAST(N'2030-09-12' AS Date), N'2087-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3080, CAST(N'2030-09-13' AS Date), N'2087-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3081, CAST(N'2030-09-14' AS Date), N'2087-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3082, CAST(N'2030-09-15' AS Date), N'2087-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3083, CAST(N'2030-09-16' AS Date), N'2087-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3084, CAST(N'2030-09-17' AS Date), N'2087-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3085, CAST(N'2030-09-18' AS Date), N'2087-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3086, CAST(N'2030-09-19' AS Date), N'2087-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3087, CAST(N'2030-09-20' AS Date), N'2087-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3088, CAST(N'2030-09-21' AS Date), N'2087-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3089, CAST(N'2030-09-22' AS Date), N'2087-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3090, CAST(N'2030-09-23' AS Date), N'2087-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3091, CAST(N'2030-09-24' AS Date), N'2087-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3092, CAST(N'2030-09-25' AS Date), N'2087-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3093, CAST(N'2030-09-26' AS Date), N'2087-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3094, CAST(N'2030-09-27' AS Date), N'2087-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3095, CAST(N'2030-09-28' AS Date), N'2087-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3096, CAST(N'2030-09-29' AS Date), N'2087-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3097, CAST(N'2030-09-30' AS Date), N'2087-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3098, CAST(N'2030-10-01' AS Date), N'2087-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3099, CAST(N'2030-10-02' AS Date), N'2087-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3100, CAST(N'2030-10-03' AS Date), N'2087-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3101, CAST(N'2030-10-04' AS Date), N'2087-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3102, CAST(N'2030-10-05' AS Date), N'2087-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3103, CAST(N'2030-10-06' AS Date), N'2087-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3104, CAST(N'2030-10-07' AS Date), N'2087-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3105, CAST(N'2030-10-08' AS Date), N'2087-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3106, CAST(N'2030-10-09' AS Date), N'2087-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3107, CAST(N'2030-10-10' AS Date), N'2087-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3108, CAST(N'2030-10-11' AS Date), N'2087-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3109, CAST(N'2030-10-12' AS Date), N'2087-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3110, CAST(N'2030-10-13' AS Date), N'2087-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3111, CAST(N'2030-10-14' AS Date), N'2087-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3112, CAST(N'2030-10-15' AS Date), N'2087-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3113, CAST(N'2030-10-16' AS Date), N'2087-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3114, CAST(N'2030-10-17' AS Date), N'2087-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3115, CAST(N'2030-10-18' AS Date), N'2087-06-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3116, CAST(N'2030-10-19' AS Date), N'2087-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3117, CAST(N'2030-10-20' AS Date), N'2087-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3118, CAST(N'2030-10-21' AS Date), N'2087-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3119, CAST(N'2030-10-22' AS Date), N'2087-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3120, CAST(N'2030-10-23' AS Date), N'2087-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3121, CAST(N'2030-10-24' AS Date), N'2087-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3122, CAST(N'2030-10-25' AS Date), N'2087-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3123, CAST(N'2030-10-26' AS Date), N'2087-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3124, CAST(N'2030-10-27' AS Date), N'2087-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3125, CAST(N'2030-10-28' AS Date), N'2087-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3126, CAST(N'2030-10-29' AS Date), N'2087-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3127, CAST(N'2030-10-30' AS Date), N'2087-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3128, CAST(N'2030-10-31' AS Date), N'2087-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3129, CAST(N'2030-11-01' AS Date), N'2087-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3130, CAST(N'2030-11-02' AS Date), N'2087-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3131, CAST(N'2030-11-03' AS Date), N'2087-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3132, CAST(N'2030-11-04' AS Date), N'2087-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3133, CAST(N'2030-11-05' AS Date), N'2087-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3134, CAST(N'2030-11-06' AS Date), N'2087-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3135, CAST(N'2030-11-07' AS Date), N'2087-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3136, CAST(N'2030-11-08' AS Date), N'2087-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3137, CAST(N'2030-11-09' AS Date), N'2087-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3138, CAST(N'2030-11-10' AS Date), N'2087-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3139, CAST(N'2030-11-11' AS Date), N'2087-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3140, CAST(N'2030-11-12' AS Date), N'2087-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3141, CAST(N'2030-11-13' AS Date), N'2087-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3142, CAST(N'2030-11-14' AS Date), N'2087-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3143, CAST(N'2030-11-15' AS Date), N'2087-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3144, CAST(N'2030-11-16' AS Date), N'2087-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3145, CAST(N'2030-11-17' AS Date), N'2087-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3146, CAST(N'2030-11-18' AS Date), N'2087-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3147, CAST(N'2030-11-19' AS Date), N'2087-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3148, CAST(N'2030-11-20' AS Date), N'2087-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3149, CAST(N'2030-11-21' AS Date), N'2087-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3150, CAST(N'2030-11-22' AS Date), N'2087-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3151, CAST(N'2030-11-23' AS Date), N'2087-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3152, CAST(N'2030-11-24' AS Date), N'2087-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3153, CAST(N'2030-11-25' AS Date), N'2087-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3154, CAST(N'2030-11-26' AS Date), N'2087-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3155, CAST(N'2030-11-27' AS Date), N'2087-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3156, CAST(N'2030-11-28' AS Date), N'2087-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3157, CAST(N'2030-11-29' AS Date), N'2087-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3158, CAST(N'2030-11-30' AS Date), N'2087-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3159, CAST(N'2030-12-01' AS Date), N'2087-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3160, CAST(N'2030-12-02' AS Date), N'2087-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3161, CAST(N'2030-12-03' AS Date), N'2087-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3162, CAST(N'2030-12-04' AS Date), N'2087-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3163, CAST(N'2030-12-05' AS Date), N'2087-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3164, CAST(N'2030-12-06' AS Date), N'2087-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3165, CAST(N'2030-12-07' AS Date), N'2087-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3166, CAST(N'2030-12-08' AS Date), N'2087-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3167, CAST(N'2030-12-09' AS Date), N'2087-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3168, CAST(N'2030-12-10' AS Date), N'2087-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3169, CAST(N'2030-12-11' AS Date), N'2087-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3170, CAST(N'2030-12-12' AS Date), N'2087-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3171, CAST(N'2030-12-13' AS Date), N'2087-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3172, CAST(N'2030-12-14' AS Date), N'2087-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3173, CAST(N'2030-12-15' AS Date), N'2087-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3174, CAST(N'2030-12-16' AS Date), N'2087-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3175, CAST(N'2030-12-17' AS Date), N'2087-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3176, CAST(N'2030-12-18' AS Date), N'2087-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3177, CAST(N'2030-12-19' AS Date), N'2087-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3178, CAST(N'2030-12-20' AS Date), N'2087-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3179, CAST(N'2030-12-21' AS Date), N'2087-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3180, CAST(N'2030-12-22' AS Date), N'2087-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3181, CAST(N'2030-12-23' AS Date), N'2087-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3182, CAST(N'2030-12-24' AS Date), N'2087-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3183, CAST(N'2030-12-25' AS Date), N'2087-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3184, CAST(N'2030-12-26' AS Date), N'2087-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3185, CAST(N'2030-12-27' AS Date), N'2087-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3186, CAST(N'2030-12-28' AS Date), N'2087-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3187, CAST(N'2030-12-29' AS Date), N'2087-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3188, CAST(N'2030-12-30' AS Date), N'2087-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3189, CAST(N'2030-12-31' AS Date), N'2087-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3190, CAST(N'2031-01-01' AS Date), N'2087-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3191, CAST(N'2031-01-02' AS Date), N'2087-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3192, CAST(N'2031-01-03' AS Date), N'2087-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3193, CAST(N'2031-01-04' AS Date), N'2087-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3194, CAST(N'2031-01-05' AS Date), N'2087-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3195, CAST(N'2031-01-06' AS Date), N'2087-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3196, CAST(N'2031-01-07' AS Date), N'2087-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3197, CAST(N'2031-01-08' AS Date), N'2087-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3198, CAST(N'2031-01-09' AS Date), N'2087-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3199, CAST(N'2031-01-10' AS Date), N'2087-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3200, CAST(N'2031-01-11' AS Date), N'2087-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3201, CAST(N'2031-01-12' AS Date), N'2087-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3202, CAST(N'2031-01-13' AS Date), N'2087-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3203, CAST(N'2031-01-14' AS Date), N'2087-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3204, CAST(N'2031-01-15' AS Date), N'2087-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3205, CAST(N'2031-01-16' AS Date), N'2087-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3206, CAST(N'2031-01-17' AS Date), N'2087-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3207, CAST(N'2031-01-18' AS Date), N'2087-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3208, CAST(N'2031-01-19' AS Date), N'2087-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3209, CAST(N'2031-01-20' AS Date), N'2087-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3210, CAST(N'2031-01-21' AS Date), N'2087-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3211, CAST(N'2031-01-22' AS Date), N'2087-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3212, CAST(N'2031-01-23' AS Date), N'2087-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3213, CAST(N'2031-01-24' AS Date), N'2087-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3214, CAST(N'2031-01-25' AS Date), N'2087-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3215, CAST(N'2031-01-26' AS Date), N'2087-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3216, CAST(N'2031-01-27' AS Date), N'2087-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3217, CAST(N'2031-01-28' AS Date), N'2087-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3218, CAST(N'2031-01-29' AS Date), N'2087-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3219, CAST(N'2031-01-30' AS Date), N'2087-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3220, CAST(N'2031-01-31' AS Date), N'2087-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3221, CAST(N'2031-02-01' AS Date), N'2087-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3222, CAST(N'2031-02-02' AS Date), N'2087-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3223, CAST(N'2031-02-03' AS Date), N'2087-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3224, CAST(N'2031-02-04' AS Date), N'2087-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3225, CAST(N'2031-02-05' AS Date), N'2087-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3226, CAST(N'2031-02-06' AS Date), N'2087-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3227, CAST(N'2031-02-07' AS Date), N'2087-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3228, CAST(N'2031-02-08' AS Date), N'2087-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3229, CAST(N'2031-02-09' AS Date), N'2087-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3230, CAST(N'2031-02-10' AS Date), N'2087-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3231, CAST(N'2031-02-11' AS Date), N'2087-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3232, CAST(N'2031-02-12' AS Date), N'2087-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3233, CAST(N'2031-02-13' AS Date), N'2087-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3234, CAST(N'2031-02-14' AS Date), N'2087-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3235, CAST(N'2031-02-15' AS Date), N'2087-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3236, CAST(N'2031-02-16' AS Date), N'2087-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3237, CAST(N'2031-02-17' AS Date), N'2087-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3238, CAST(N'2031-02-18' AS Date), N'2087-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3239, CAST(N'2031-02-19' AS Date), N'2087-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3240, CAST(N'2031-02-20' AS Date), N'2087-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3241, CAST(N'2031-02-21' AS Date), N'2087-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3242, CAST(N'2031-02-22' AS Date), N'2087-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3243, CAST(N'2031-02-23' AS Date), N'2087-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3244, CAST(N'2031-02-24' AS Date), N'2087-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3245, CAST(N'2031-02-25' AS Date), N'2087-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3246, CAST(N'2031-02-26' AS Date), N'2087-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3247, CAST(N'2031-02-27' AS Date), N'2087-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3248, CAST(N'2031-02-28' AS Date), N'2087-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3249, CAST(N'2031-03-01' AS Date), N'2087-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3250, CAST(N'2031-03-02' AS Date), N'2087-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3251, CAST(N'2031-03-03' AS Date), N'2087-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3252, CAST(N'2031-03-04' AS Date), N'2087-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3253, CAST(N'2031-03-05' AS Date), N'2087-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3254, CAST(N'2031-03-06' AS Date), N'2087-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3255, CAST(N'2031-03-07' AS Date), N'2087-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3256, CAST(N'2031-03-08' AS Date), N'2087-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3257, CAST(N'2031-03-09' AS Date), N'2087-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3258, CAST(N'2031-03-10' AS Date), N'2087-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3259, CAST(N'2031-03-11' AS Date), N'2087-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3260, CAST(N'2031-03-12' AS Date), N'2087-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3261, CAST(N'2031-03-13' AS Date), N'2087-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3262, CAST(N'2031-03-14' AS Date), N'2087-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3263, CAST(N'2031-03-15' AS Date), N'2087-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3264, CAST(N'2031-03-16' AS Date), N'2087-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3265, CAST(N'2031-03-17' AS Date), N'2087-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3266, CAST(N'2031-03-18' AS Date), N'2087-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3267, CAST(N'2031-03-19' AS Date), N'2087-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3268, CAST(N'2031-03-20' AS Date), N'2087-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3269, CAST(N'2031-03-21' AS Date), N'2087-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3270, CAST(N'2031-03-22' AS Date), N'2087-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3271, CAST(N'2031-03-23' AS Date), N'2087-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3272, CAST(N'2031-03-24' AS Date), N'2087-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3273, CAST(N'2031-03-25' AS Date), N'2087-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3274, CAST(N'2031-03-26' AS Date), N'2087-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3275, CAST(N'2031-03-27' AS Date), N'2087-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3276, CAST(N'2031-03-28' AS Date), N'2087-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3277, CAST(N'2031-03-29' AS Date), N'2087-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3278, CAST(N'2031-03-30' AS Date), N'2087-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3279, CAST(N'2031-03-31' AS Date), N'2087-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3280, CAST(N'2031-04-01' AS Date), N'2087-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3281, CAST(N'2031-04-02' AS Date), N'2087-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3282, CAST(N'2031-04-03' AS Date), N'2087-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3283, CAST(N'2031-04-04' AS Date), N'2087-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3284, CAST(N'2031-04-05' AS Date), N'2087-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3285, CAST(N'2031-04-06' AS Date), N'2087-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3286, CAST(N'2031-04-07' AS Date), N'2087-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3287, CAST(N'2031-04-08' AS Date), N'2087-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3288, CAST(N'2031-04-09' AS Date), N'2087-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3289, CAST(N'2031-04-10' AS Date), N'2087-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3290, CAST(N'2031-04-11' AS Date), N'2087-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3291, CAST(N'2031-04-12' AS Date), N'2087-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3292, CAST(N'2024-08-13' AS Date), N'2081-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3293, CAST(N'2024-08-14' AS Date), N'2081-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3294, CAST(N'2024-08-15' AS Date), N'2081-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3295, CAST(N'2024-08-16' AS Date), N'2081-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3296, CAST(N'2024-08-17' AS Date), N'2081-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3297, CAST(N'2024-08-18' AS Date), N'2081-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3298, CAST(N'2024-08-19' AS Date), N'2081-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3299, CAST(N'2024-08-20' AS Date), N'2081-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3300, CAST(N'2024-08-21' AS Date), N'2081-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3301, CAST(N'2024-08-22' AS Date), N'2081-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3302, CAST(N'2024-08-23' AS Date), N'2081-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3303, CAST(N'2024-08-24' AS Date), N'2081-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3304, CAST(N'2024-08-25' AS Date), N'2081-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3305, CAST(N'2024-08-26' AS Date), N'2081-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3306, CAST(N'2024-08-27' AS Date), N'2081-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3307, CAST(N'2024-08-28' AS Date), N'2081-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3308, CAST(N'2024-08-29' AS Date), N'2081-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3309, CAST(N'2024-08-30' AS Date), N'2081-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3310, CAST(N'2024-08-31' AS Date), N'2081-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3311, CAST(N'2024-09-01' AS Date), N'2081-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3312, CAST(N'2024-09-02' AS Date), N'2081-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3313, CAST(N'2024-09-03' AS Date), N'2081-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3314, CAST(N'2024-09-04' AS Date), N'2081-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3315, CAST(N'2024-09-05' AS Date), N'2081-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3316, CAST(N'2024-09-06' AS Date), N'2081-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3317, CAST(N'2024-09-07' AS Date), N'2081-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3318, CAST(N'2024-09-08' AS Date), N'2081-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3319, CAST(N'2024-09-09' AS Date), N'2081-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3320, CAST(N'2024-09-10' AS Date), N'2081-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3321, CAST(N'2024-09-11' AS Date), N'2081-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3322, CAST(N'2024-09-12' AS Date), N'2081-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3323, CAST(N'2024-09-13' AS Date), N'2081-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3324, CAST(N'2024-09-14' AS Date), N'2081-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3325, CAST(N'2024-09-15' AS Date), N'2081-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3326, CAST(N'2024-09-16' AS Date), N'2081-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3327, CAST(N'2024-09-17' AS Date), N'2081-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3328, CAST(N'2024-09-18' AS Date), N'2081-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3329, CAST(N'2024-09-19' AS Date), N'2081-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3330, CAST(N'2024-09-20' AS Date), N'2081-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3331, CAST(N'2024-09-21' AS Date), N'2081-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3332, CAST(N'2024-09-22' AS Date), N'2081-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3333, CAST(N'2024-09-23' AS Date), N'2081-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3334, CAST(N'2024-09-24' AS Date), N'2081-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3335, CAST(N'2024-09-25' AS Date), N'2081-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3336, CAST(N'2024-09-26' AS Date), N'2081-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3337, CAST(N'2024-09-27' AS Date), N'2081-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3338, CAST(N'2024-09-28' AS Date), N'2081-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3339, CAST(N'2024-09-29' AS Date), N'2081-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3340, CAST(N'2024-09-30' AS Date), N'2081-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3341, CAST(N'2024-10-01' AS Date), N'2081-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3342, CAST(N'2024-10-02' AS Date), N'2081-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3343, CAST(N'2024-10-03' AS Date), N'2081-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3344, CAST(N'2024-10-04' AS Date), N'2081-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3345, CAST(N'2024-10-05' AS Date), N'2081-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3346, CAST(N'2024-10-06' AS Date), N'2081-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3347, CAST(N'2024-10-07' AS Date), N'2081-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3348, CAST(N'2024-10-08' AS Date), N'2081-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3349, CAST(N'2024-10-09' AS Date), N'2081-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3350, CAST(N'2024-10-10' AS Date), N'2081-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3351, CAST(N'2024-10-11' AS Date), N'2081-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3352, CAST(N'2024-10-12' AS Date), N'2081-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3353, CAST(N'2024-10-13' AS Date), N'2081-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3354, CAST(N'2024-10-14' AS Date), N'2081-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3355, CAST(N'2024-10-15' AS Date), N'2081-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3356, CAST(N'2024-10-16' AS Date), N'2081-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3357, CAST(N'2024-10-17' AS Date), N'2081-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3358, CAST(N'2024-10-18' AS Date), N'2081-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3359, CAST(N'2024-10-19' AS Date), N'2081-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3360, CAST(N'2024-10-20' AS Date), N'2081-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3361, CAST(N'2024-10-21' AS Date), N'2081-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3362, CAST(N'2024-10-22' AS Date), N'2081-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3363, CAST(N'2024-10-23' AS Date), N'2081-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3364, CAST(N'2024-10-24' AS Date), N'2081-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3365, CAST(N'2024-10-25' AS Date), N'2081-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3366, CAST(N'2024-10-26' AS Date), N'2081-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3367, CAST(N'2024-10-27' AS Date), N'2081-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3368, CAST(N'2024-10-28' AS Date), N'2081-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3369, CAST(N'2024-10-29' AS Date), N'2081-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3370, CAST(N'2024-10-30' AS Date), N'2081-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3371, CAST(N'2024-10-31' AS Date), N'2081-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3372, CAST(N'2024-11-01' AS Date), N'2081-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3373, CAST(N'2024-11-02' AS Date), N'2081-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3374, CAST(N'2024-11-03' AS Date), N'2081-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3375, CAST(N'2024-11-04' AS Date), N'2081-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3376, CAST(N'2024-11-05' AS Date), N'2081-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3377, CAST(N'2024-11-06' AS Date), N'2081-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3378, CAST(N'2024-11-07' AS Date), N'2081-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3379, CAST(N'2024-11-08' AS Date), N'2081-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3380, CAST(N'2024-11-09' AS Date), N'2081-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3381, CAST(N'2024-11-10' AS Date), N'2081-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3382, CAST(N'2024-11-11' AS Date), N'2081-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3383, CAST(N'2024-11-12' AS Date), N'2081-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3384, CAST(N'2024-11-13' AS Date), N'2081-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3385, CAST(N'2024-11-14' AS Date), N'2081-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3386, CAST(N'2024-11-15' AS Date), N'2081-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3387, CAST(N'2024-11-16' AS Date), N'2081-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3388, CAST(N'2024-11-17' AS Date), N'2081-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3389, CAST(N'2024-11-18' AS Date), N'2081-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3390, CAST(N'2024-11-19' AS Date), N'2081-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3391, CAST(N'2024-11-20' AS Date), N'2081-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3392, CAST(N'2024-11-21' AS Date), N'2081-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3393, CAST(N'2024-11-22' AS Date), N'2081-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3394, CAST(N'2024-11-23' AS Date), N'2081-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3395, CAST(N'2024-11-24' AS Date), N'2081-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3396, CAST(N'2024-11-25' AS Date), N'2081-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3397, CAST(N'2024-11-26' AS Date), N'2081-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3398, CAST(N'2024-11-27' AS Date), N'2081-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3399, CAST(N'2024-11-28' AS Date), N'2081-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3400, CAST(N'2024-11-29' AS Date), N'2081-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3401, CAST(N'2024-11-30' AS Date), N'2081-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3402, CAST(N'2024-12-01' AS Date), N'2081-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3403, CAST(N'2024-12-02' AS Date), N'2081-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3404, CAST(N'2024-12-03' AS Date), N'2081-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3405, CAST(N'2024-12-04' AS Date), N'2081-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3406, CAST(N'2024-12-05' AS Date), N'2081-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3407, CAST(N'2024-12-06' AS Date), N'2081-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3408, CAST(N'2024-12-07' AS Date), N'2081-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3409, CAST(N'2024-12-08' AS Date), N'2081-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3410, CAST(N'2024-12-09' AS Date), N'2081-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3411, CAST(N'2024-12-10' AS Date), N'2081-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3412, CAST(N'2024-12-11' AS Date), N'2081-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3413, CAST(N'2024-12-12' AS Date), N'2081-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3414, CAST(N'2024-12-13' AS Date), N'2081-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3415, CAST(N'2024-12-14' AS Date), N'2081-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3416, CAST(N'2024-12-15' AS Date), N'2081-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3417, CAST(N'2024-12-16' AS Date), N'2081-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3418, CAST(N'2024-12-17' AS Date), N'2081-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3419, CAST(N'2024-12-18' AS Date), N'2081-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3420, CAST(N'2024-12-19' AS Date), N'2081-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3421, CAST(N'2024-12-20' AS Date), N'2081-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3422, CAST(N'2024-12-21' AS Date), N'2081-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3423, CAST(N'2024-12-22' AS Date), N'2081-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3424, CAST(N'2024-12-23' AS Date), N'2081-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3425, CAST(N'2024-12-24' AS Date), N'2081-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3426, CAST(N'2024-12-25' AS Date), N'2081-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3427, CAST(N'2024-12-26' AS Date), N'2081-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3428, CAST(N'2024-12-27' AS Date), N'2081-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3429, CAST(N'2024-12-28' AS Date), N'2081-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3430, CAST(N'2024-12-29' AS Date), N'2081-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3431, CAST(N'2024-12-30' AS Date), N'2081-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3432, CAST(N'2024-12-31' AS Date), N'2081-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3433, CAST(N'2025-01-01' AS Date), N'2081-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3434, CAST(N'2025-01-02' AS Date), N'2081-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3435, CAST(N'2025-01-03' AS Date), N'2081-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3436, CAST(N'2025-01-04' AS Date), N'2081-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3437, CAST(N'2025-01-05' AS Date), N'2081-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3438, CAST(N'2025-01-06' AS Date), N'2081-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3439, CAST(N'2025-01-07' AS Date), N'2081-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3440, CAST(N'2025-01-08' AS Date), N'2081-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3441, CAST(N'2025-01-09' AS Date), N'2081-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3442, CAST(N'2025-01-10' AS Date), N'2081-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3443, CAST(N'2025-01-11' AS Date), N'2081-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3444, CAST(N'2025-01-12' AS Date), N'2081-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3445, CAST(N'2025-01-13' AS Date), N'2081-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3446, CAST(N'2025-01-14' AS Date), N'2081-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3447, CAST(N'2025-01-15' AS Date), N'2081-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3448, CAST(N'2025-01-16' AS Date), N'2081-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3449, CAST(N'2025-01-17' AS Date), N'2081-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3450, CAST(N'2025-01-18' AS Date), N'2081-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3451, CAST(N'2025-01-19' AS Date), N'2081-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3452, CAST(N'2025-01-20' AS Date), N'2081-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3453, CAST(N'2025-01-21' AS Date), N'2081-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3454, CAST(N'2025-01-22' AS Date), N'2081-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3455, CAST(N'2025-01-23' AS Date), N'2081-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3456, CAST(N'2025-01-24' AS Date), N'2081-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3457, CAST(N'2025-01-25' AS Date), N'2081-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3458, CAST(N'2025-01-26' AS Date), N'2081-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3459, CAST(N'2025-01-27' AS Date), N'2081-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3460, CAST(N'2025-01-28' AS Date), N'2081-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3461, CAST(N'2025-01-29' AS Date), N'2081-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3462, CAST(N'2025-01-30' AS Date), N'2081-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3463, CAST(N'2025-01-31' AS Date), N'2081-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3464, CAST(N'2025-02-01' AS Date), N'2081-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3465, CAST(N'2025-02-02' AS Date), N'2081-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3466, CAST(N'2025-02-03' AS Date), N'2081-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3467, CAST(N'2025-02-04' AS Date), N'2081-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3468, CAST(N'2025-02-05' AS Date), N'2081-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3469, CAST(N'2025-02-06' AS Date), N'2081-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3470, CAST(N'2025-02-07' AS Date), N'2081-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3471, CAST(N'2025-02-08' AS Date), N'2081-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3472, CAST(N'2025-02-09' AS Date), N'2081-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3473, CAST(N'2025-02-10' AS Date), N'2081-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3474, CAST(N'2025-02-11' AS Date), N'2081-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3475, CAST(N'2025-02-12' AS Date), N'2081-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3476, CAST(N'2025-02-13' AS Date), N'2081-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3477, CAST(N'2025-02-14' AS Date), N'2081-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3478, CAST(N'2025-02-15' AS Date), N'2081-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3479, CAST(N'2025-02-16' AS Date), N'2081-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3480, CAST(N'2025-02-17' AS Date), N'2081-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3481, CAST(N'2025-02-18' AS Date), N'2081-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3482, CAST(N'2025-02-19' AS Date), N'2081-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3483, CAST(N'2025-02-20' AS Date), N'2081-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3484, CAST(N'2025-02-21' AS Date), N'2081-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3485, CAST(N'2025-02-22' AS Date), N'2081-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3486, CAST(N'2025-02-23' AS Date), N'2081-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3487, CAST(N'2025-02-24' AS Date), N'2081-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3488, CAST(N'2025-02-25' AS Date), N'2081-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3489, CAST(N'2025-02-26' AS Date), N'2081-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3490, CAST(N'2025-02-27' AS Date), N'2081-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3491, CAST(N'2025-02-28' AS Date), N'2081-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3492, CAST(N'2025-03-01' AS Date), N'2081-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3493, CAST(N'2025-03-02' AS Date), N'2081-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3494, CAST(N'2025-03-03' AS Date), N'2081-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3495, CAST(N'2025-03-04' AS Date), N'2081-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3496, CAST(N'2025-03-05' AS Date), N'2081-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3497, CAST(N'2025-03-06' AS Date), N'2081-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3498, CAST(N'2025-03-07' AS Date), N'2081-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3499, CAST(N'2025-03-08' AS Date), N'2081-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3500, CAST(N'2025-03-09' AS Date), N'2081-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3501, CAST(N'2025-03-10' AS Date), N'2081-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3502, CAST(N'2025-03-11' AS Date), N'2081-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3503, CAST(N'2025-03-12' AS Date), N'2081-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3504, CAST(N'2025-03-13' AS Date), N'2081-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3505, CAST(N'2025-03-14' AS Date), N'2081-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3506, CAST(N'2025-03-15' AS Date), N'2081-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3507, CAST(N'2025-03-16' AS Date), N'2081-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3508, CAST(N'2025-03-17' AS Date), N'2081-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3509, CAST(N'2025-03-18' AS Date), N'2081-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3510, CAST(N'2025-03-19' AS Date), N'2081-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3511, CAST(N'2025-03-20' AS Date), N'2081-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3512, CAST(N'2025-03-21' AS Date), N'2081-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3513, CAST(N'2025-03-22' AS Date), N'2081-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3514, CAST(N'2025-03-23' AS Date), N'2081-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3515, CAST(N'2025-03-24' AS Date), N'2081-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3516, CAST(N'2025-03-25' AS Date), N'2081-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3517, CAST(N'2025-03-26' AS Date), N'2081-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3518, CAST(N'2025-03-27' AS Date), N'2081-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3519, CAST(N'2025-03-28' AS Date), N'2081-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3520, CAST(N'2025-03-29' AS Date), N'2081-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3521, CAST(N'2025-03-30' AS Date), N'2081-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3522, CAST(N'2025-03-31' AS Date), N'2081-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3523, CAST(N'2025-04-01' AS Date), N'2081-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3524, CAST(N'2025-04-02' AS Date), N'2081-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3525, CAST(N'2025-04-03' AS Date), N'2081-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3526, CAST(N'2025-04-04' AS Date), N'2081-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3527, CAST(N'2025-04-05' AS Date), N'2081-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3528, CAST(N'2025-04-06' AS Date), N'2081-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3529, CAST(N'2025-04-07' AS Date), N'2081-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3530, CAST(N'2025-04-08' AS Date), N'2081-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3531, CAST(N'2025-04-09' AS Date), N'2081-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3532, CAST(N'2025-04-10' AS Date), N'2081-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3533, CAST(N'2025-04-11' AS Date), N'2081-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3534, CAST(N'2025-04-12' AS Date), N'2081-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3535, CAST(N'2025-04-13' AS Date), N'2081-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3536, CAST(N'2025-04-14' AS Date), N'2082-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3537, CAST(N'2025-04-15' AS Date), N'2082-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3538, CAST(N'2025-04-16' AS Date), N'2082-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3539, CAST(N'2025-04-17' AS Date), N'2082-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3540, CAST(N'2025-04-18' AS Date), N'2082-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3541, CAST(N'2025-04-19' AS Date), N'2082-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3542, CAST(N'2025-04-20' AS Date), N'2082-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3543, CAST(N'2025-04-21' AS Date), N'2082-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3544, CAST(N'2025-04-22' AS Date), N'2082-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3545, CAST(N'2025-04-23' AS Date), N'2082-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3546, CAST(N'2025-04-24' AS Date), N'2082-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3547, CAST(N'2025-04-25' AS Date), N'2082-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3548, CAST(N'2025-04-26' AS Date), N'2082-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3549, CAST(N'2025-04-27' AS Date), N'2082-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3550, CAST(N'2025-04-28' AS Date), N'2082-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3551, CAST(N'2025-04-29' AS Date), N'2082-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3552, CAST(N'2025-04-30' AS Date), N'2082-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3553, CAST(N'2025-05-01' AS Date), N'2082-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3554, CAST(N'2025-05-02' AS Date), N'2082-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3555, CAST(N'2025-05-03' AS Date), N'2082-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3556, CAST(N'2025-05-04' AS Date), N'2082-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3557, CAST(N'2025-05-05' AS Date), N'2082-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3558, CAST(N'2025-05-06' AS Date), N'2082-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3559, CAST(N'2025-05-07' AS Date), N'2082-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3560, CAST(N'2025-05-08' AS Date), N'2082-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3561, CAST(N'2025-05-09' AS Date), N'2082-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3562, CAST(N'2025-05-10' AS Date), N'2082-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3563, CAST(N'2025-05-11' AS Date), N'2082-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3564, CAST(N'2025-05-12' AS Date), N'2082-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3565, CAST(N'2025-05-13' AS Date), N'2082-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3566, CAST(N'2025-05-14' AS Date), N'2082-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3567, CAST(N'2025-05-15' AS Date), N'2082-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3568, CAST(N'2025-05-16' AS Date), N'2082-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3569, CAST(N'2025-05-17' AS Date), N'2082-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3570, CAST(N'2025-05-18' AS Date), N'2082-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3571, CAST(N'2025-05-19' AS Date), N'2082-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3572, CAST(N'2025-05-20' AS Date), N'2082-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3573, CAST(N'2025-05-21' AS Date), N'2082-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3574, CAST(N'2025-05-22' AS Date), N'2082-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3575, CAST(N'2025-05-23' AS Date), N'2082-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3576, CAST(N'2025-05-24' AS Date), N'2082-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3577, CAST(N'2025-05-25' AS Date), N'2082-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3578, CAST(N'2025-05-26' AS Date), N'2082-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3579, CAST(N'2025-05-27' AS Date), N'2082-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3580, CAST(N'2025-05-28' AS Date), N'2082-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3581, CAST(N'2025-05-29' AS Date), N'2082-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3582, CAST(N'2025-05-30' AS Date), N'2082-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3583, CAST(N'2025-05-31' AS Date), N'2082-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3584, CAST(N'2025-06-01' AS Date), N'2082-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3585, CAST(N'2025-06-02' AS Date), N'2082-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3586, CAST(N'2025-06-03' AS Date), N'2082-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3587, CAST(N'2025-06-04' AS Date), N'2082-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3588, CAST(N'2025-06-05' AS Date), N'2082-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3589, CAST(N'2025-06-06' AS Date), N'2082-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3590, CAST(N'2025-06-07' AS Date), N'2082-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3591, CAST(N'2025-06-08' AS Date), N'2082-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3592, CAST(N'2025-06-09' AS Date), N'2082-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3593, CAST(N'2025-06-10' AS Date), N'2082-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3594, CAST(N'2025-06-11' AS Date), N'2082-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3595, CAST(N'2025-06-12' AS Date), N'2082-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3596, CAST(N'2025-06-13' AS Date), N'2082-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3597, CAST(N'2025-06-14' AS Date), N'2082-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3598, CAST(N'2025-06-15' AS Date), N'2082-02-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3599, CAST(N'2025-06-16' AS Date), N'2082-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3600, CAST(N'2025-06-17' AS Date), N'2082-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3601, CAST(N'2025-06-18' AS Date), N'2082-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3602, CAST(N'2025-06-19' AS Date), N'2082-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3603, CAST(N'2025-06-20' AS Date), N'2082-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3604, CAST(N'2025-06-21' AS Date), N'2082-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3605, CAST(N'2025-06-22' AS Date), N'2082-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3606, CAST(N'2025-06-23' AS Date), N'2082-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3607, CAST(N'2025-06-24' AS Date), N'2082-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3608, CAST(N'2025-06-25' AS Date), N'2082-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3609, CAST(N'2025-06-26' AS Date), N'2082-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3610, CAST(N'2025-06-27' AS Date), N'2082-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3611, CAST(N'2025-06-28' AS Date), N'2082-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3612, CAST(N'2025-06-29' AS Date), N'2082-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3613, CAST(N'2025-06-30' AS Date), N'2082-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3614, CAST(N'2025-07-01' AS Date), N'2082-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3615, CAST(N'2025-07-02' AS Date), N'2082-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3616, CAST(N'2025-07-03' AS Date), N'2082-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3617, CAST(N'2025-07-04' AS Date), N'2082-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3618, CAST(N'2025-07-05' AS Date), N'2082-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3619, CAST(N'2025-07-06' AS Date), N'2082-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3620, CAST(N'2025-07-07' AS Date), N'2082-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3621, CAST(N'2025-07-08' AS Date), N'2082-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3622, CAST(N'2025-07-09' AS Date), N'2082-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3623, CAST(N'2025-07-10' AS Date), N'2082-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3624, CAST(N'2025-07-11' AS Date), N'2082-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3625, CAST(N'2025-07-12' AS Date), N'2082-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3626, CAST(N'2025-07-13' AS Date), N'2082-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3627, CAST(N'2025-07-14' AS Date), N'2082-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3628, CAST(N'2025-07-15' AS Date), N'2082-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3629, CAST(N'2025-07-16' AS Date), N'2082-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3630, CAST(N'2025-07-17' AS Date), N'2082-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3631, CAST(N'2025-07-18' AS Date), N'2082-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3632, CAST(N'2025-07-19' AS Date), N'2082-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3633, CAST(N'2025-07-20' AS Date), N'2082-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3634, CAST(N'2025-07-21' AS Date), N'2082-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3635, CAST(N'2025-07-22' AS Date), N'2082-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3636, CAST(N'2025-07-23' AS Date), N'2082-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3637, CAST(N'2025-07-24' AS Date), N'2082-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3638, CAST(N'2025-07-25' AS Date), N'2082-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3639, CAST(N'2025-07-26' AS Date), N'2082-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3640, CAST(N'2025-07-27' AS Date), N'2082-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3641, CAST(N'2025-07-28' AS Date), N'2082-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3642, CAST(N'2025-07-29' AS Date), N'2082-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3643, CAST(N'2025-07-30' AS Date), N'2082-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3644, CAST(N'2025-07-31' AS Date), N'2082-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3645, CAST(N'2025-08-01' AS Date), N'2082-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3646, CAST(N'2025-08-02' AS Date), N'2082-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3647, CAST(N'2025-08-03' AS Date), N'2082-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3648, CAST(N'2025-08-04' AS Date), N'2082-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3649, CAST(N'2025-08-05' AS Date), N'2082-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3650, CAST(N'2025-08-06' AS Date), N'2082-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3651, CAST(N'2025-08-07' AS Date), N'2082-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3652, CAST(N'2025-08-08' AS Date), N'2082-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3653, CAST(N'2025-08-09' AS Date), N'2082-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3654, CAST(N'2025-08-10' AS Date), N'2082-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3655, CAST(N'2025-08-11' AS Date), N'2082-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3656, CAST(N'2025-08-12' AS Date), N'2082-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3657, CAST(N'2025-08-13' AS Date), N'2082-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3658, CAST(N'2025-08-14' AS Date), N'2082-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3659, CAST(N'2025-08-15' AS Date), N'2082-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3660, CAST(N'2025-08-16' AS Date), N'2082-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3661, CAST(N'2025-08-17' AS Date), N'2082-04-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3662, CAST(N'2025-08-18' AS Date), N'2082-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3663, CAST(N'2025-08-19' AS Date), N'2082-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3664, CAST(N'2025-08-20' AS Date), N'2082-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3665, CAST(N'2025-08-21' AS Date), N'2082-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3666, CAST(N'2025-08-22' AS Date), N'2082-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3667, CAST(N'2025-08-23' AS Date), N'2082-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3668, CAST(N'2025-08-24' AS Date), N'2082-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3669, CAST(N'2025-08-25' AS Date), N'2082-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3670, CAST(N'2025-08-26' AS Date), N'2082-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3671, CAST(N'2025-08-27' AS Date), N'2082-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3672, CAST(N'2025-08-28' AS Date), N'2082-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3673, CAST(N'2025-08-29' AS Date), N'2082-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3674, CAST(N'2025-08-30' AS Date), N'2082-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3675, CAST(N'2025-08-31' AS Date), N'2082-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3676, CAST(N'2025-09-01' AS Date), N'2082-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3677, CAST(N'2025-09-02' AS Date), N'2082-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3678, CAST(N'2025-09-03' AS Date), N'2082-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3679, CAST(N'2025-09-04' AS Date), N'2082-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3680, CAST(N'2025-09-05' AS Date), N'2082-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3681, CAST(N'2025-09-06' AS Date), N'2082-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3682, CAST(N'2025-09-07' AS Date), N'2082-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3683, CAST(N'2025-09-08' AS Date), N'2082-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3684, CAST(N'2025-09-09' AS Date), N'2082-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3685, CAST(N'2025-09-10' AS Date), N'2082-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3686, CAST(N'2025-09-11' AS Date), N'2082-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3687, CAST(N'2025-09-12' AS Date), N'2082-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3688, CAST(N'2025-09-13' AS Date), N'2082-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3689, CAST(N'2025-09-14' AS Date), N'2082-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3690, CAST(N'2025-09-15' AS Date), N'2082-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3691, CAST(N'2025-09-16' AS Date), N'2082-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3692, CAST(N'2025-09-17' AS Date), N'2082-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3693, CAST(N'2025-09-18' AS Date), N'2082-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3694, CAST(N'2025-09-19' AS Date), N'2082-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3695, CAST(N'2025-09-20' AS Date), N'2082-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3696, CAST(N'2025-09-21' AS Date), N'2082-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3697, CAST(N'2025-09-22' AS Date), N'2082-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3698, CAST(N'2025-09-23' AS Date), N'2082-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3699, CAST(N'2025-09-24' AS Date), N'2082-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3700, CAST(N'2025-09-25' AS Date), N'2082-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3701, CAST(N'2025-09-26' AS Date), N'2082-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3702, CAST(N'2025-09-27' AS Date), N'2082-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3703, CAST(N'2025-09-28' AS Date), N'2082-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3704, CAST(N'2025-09-29' AS Date), N'2082-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3705, CAST(N'2025-09-30' AS Date), N'2082-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3706, CAST(N'2025-10-01' AS Date), N'2082-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3707, CAST(N'2025-10-02' AS Date), N'2082-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3708, CAST(N'2025-10-03' AS Date), N'2082-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3709, CAST(N'2025-10-04' AS Date), N'2082-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3710, CAST(N'2025-10-05' AS Date), N'2082-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3711, CAST(N'2025-10-06' AS Date), N'2082-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3712, CAST(N'2025-10-07' AS Date), N'2082-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3713, CAST(N'2025-10-08' AS Date), N'2082-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3714, CAST(N'2025-10-09' AS Date), N'2082-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3715, CAST(N'2025-10-10' AS Date), N'2082-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3716, CAST(N'2025-10-11' AS Date), N'2082-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3717, CAST(N'2025-10-12' AS Date), N'2082-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3718, CAST(N'2025-10-13' AS Date), N'2082-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3719, CAST(N'2025-10-14' AS Date), N'2082-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3720, CAST(N'2025-10-15' AS Date), N'2082-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3721, CAST(N'2025-10-16' AS Date), N'2082-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3722, CAST(N'2025-10-17' AS Date), N'2082-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3723, CAST(N'2025-10-18' AS Date), N'2082-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3724, CAST(N'2025-10-19' AS Date), N'2082-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3725, CAST(N'2025-10-20' AS Date), N'2082-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3726, CAST(N'2025-10-21' AS Date), N'2082-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3727, CAST(N'2025-10-22' AS Date), N'2082-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3728, CAST(N'2025-10-23' AS Date), N'2082-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3729, CAST(N'2025-10-24' AS Date), N'2082-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3730, CAST(N'2025-10-25' AS Date), N'2082-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3731, CAST(N'2025-10-26' AS Date), N'2082-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3732, CAST(N'2025-10-27' AS Date), N'2082-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3733, CAST(N'2025-10-28' AS Date), N'2082-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3734, CAST(N'2025-10-29' AS Date), N'2082-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3735, CAST(N'2025-10-30' AS Date), N'2082-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3736, CAST(N'2025-10-31' AS Date), N'2082-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3737, CAST(N'2025-11-01' AS Date), N'2082-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3738, CAST(N'2025-11-02' AS Date), N'2082-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3739, CAST(N'2025-11-03' AS Date), N'2082-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3740, CAST(N'2025-11-04' AS Date), N'2082-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3741, CAST(N'2025-11-05' AS Date), N'2082-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3742, CAST(N'2025-11-06' AS Date), N'2082-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3743, CAST(N'2025-11-07' AS Date), N'2082-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3744, CAST(N'2025-11-08' AS Date), N'2082-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3745, CAST(N'2025-11-09' AS Date), N'2082-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3746, CAST(N'2025-11-10' AS Date), N'2082-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3747, CAST(N'2025-11-11' AS Date), N'2082-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3748, CAST(N'2025-11-12' AS Date), N'2082-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3749, CAST(N'2025-11-13' AS Date), N'2082-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3750, CAST(N'2025-11-14' AS Date), N'2082-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3751, CAST(N'2025-11-15' AS Date), N'2082-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3752, CAST(N'2025-11-16' AS Date), N'2082-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3753, CAST(N'2025-11-17' AS Date), N'2082-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3754, CAST(N'2025-11-18' AS Date), N'2082-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3755, CAST(N'2025-11-19' AS Date), N'2082-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3756, CAST(N'2025-11-20' AS Date), N'2082-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3757, CAST(N'2025-11-21' AS Date), N'2082-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3758, CAST(N'2025-11-22' AS Date), N'2082-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3759, CAST(N'2025-11-23' AS Date), N'2082-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3760, CAST(N'2025-11-24' AS Date), N'2082-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3761, CAST(N'2025-11-25' AS Date), N'2082-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3762, CAST(N'2025-11-26' AS Date), N'2082-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3763, CAST(N'2025-11-27' AS Date), N'2082-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3764, CAST(N'2025-11-28' AS Date), N'2082-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3765, CAST(N'2025-11-29' AS Date), N'2082-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3766, CAST(N'2025-11-30' AS Date), N'2082-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3767, CAST(N'2025-12-01' AS Date), N'2082-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3768, CAST(N'2025-12-02' AS Date), N'2082-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3769, CAST(N'2025-12-03' AS Date), N'2082-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3770, CAST(N'2025-12-04' AS Date), N'2082-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3771, CAST(N'2025-12-05' AS Date), N'2082-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3772, CAST(N'2025-12-06' AS Date), N'2082-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3773, CAST(N'2025-12-07' AS Date), N'2082-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3774, CAST(N'2025-12-08' AS Date), N'2082-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3775, CAST(N'2025-12-09' AS Date), N'2082-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3776, CAST(N'2025-12-10' AS Date), N'2082-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3777, CAST(N'2025-12-11' AS Date), N'2082-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3778, CAST(N'2025-12-12' AS Date), N'2082-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3779, CAST(N'2025-12-13' AS Date), N'2082-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3780, CAST(N'2025-12-14' AS Date), N'2082-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3781, CAST(N'2025-12-15' AS Date), N'2082-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3782, CAST(N'2025-12-16' AS Date), N'2082-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3783, CAST(N'2025-12-17' AS Date), N'2082-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3784, CAST(N'2025-12-18' AS Date), N'2082-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3785, CAST(N'2025-12-19' AS Date), N'2082-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3786, CAST(N'2025-12-20' AS Date), N'2082-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3787, CAST(N'2025-12-21' AS Date), N'2082-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3788, CAST(N'2025-12-22' AS Date), N'2082-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3789, CAST(N'2025-12-23' AS Date), N'2082-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3790, CAST(N'2025-12-24' AS Date), N'2082-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3791, CAST(N'2025-12-25' AS Date), N'2082-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3792, CAST(N'2025-12-26' AS Date), N'2082-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3793, CAST(N'2025-12-27' AS Date), N'2082-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3794, CAST(N'2025-12-28' AS Date), N'2082-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3795, CAST(N'2025-12-29' AS Date), N'2082-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3796, CAST(N'2025-12-30' AS Date), N'2082-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3797, CAST(N'2025-12-31' AS Date), N'2082-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3798, CAST(N'2026-01-01' AS Date), N'2082-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3799, CAST(N'2026-01-02' AS Date), N'2082-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3800, CAST(N'2026-01-03' AS Date), N'2082-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3801, CAST(N'2026-01-04' AS Date), N'2082-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3802, CAST(N'2026-01-05' AS Date), N'2082-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3803, CAST(N'2026-01-06' AS Date), N'2082-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3804, CAST(N'2026-01-07' AS Date), N'2082-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3805, CAST(N'2026-01-08' AS Date), N'2082-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3806, CAST(N'2026-01-09' AS Date), N'2082-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3807, CAST(N'2026-01-10' AS Date), N'2082-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3808, CAST(N'2026-01-11' AS Date), N'2082-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3809, CAST(N'2026-01-12' AS Date), N'2082-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3810, CAST(N'2026-01-13' AS Date), N'2082-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3811, CAST(N'2026-01-14' AS Date), N'2082-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3812, CAST(N'2026-01-15' AS Date), N'2082-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3813, CAST(N'2026-01-16' AS Date), N'2082-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3814, CAST(N'2026-01-17' AS Date), N'2082-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3815, CAST(N'2026-01-18' AS Date), N'2082-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3816, CAST(N'2026-01-19' AS Date), N'2082-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3817, CAST(N'2026-01-20' AS Date), N'2082-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3818, CAST(N'2026-01-21' AS Date), N'2082-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3819, CAST(N'2026-01-22' AS Date), N'2082-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3820, CAST(N'2026-01-23' AS Date), N'2082-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3821, CAST(N'2026-01-24' AS Date), N'2082-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3822, CAST(N'2026-01-25' AS Date), N'2082-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3823, CAST(N'2026-01-26' AS Date), N'2082-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3824, CAST(N'2026-01-27' AS Date), N'2082-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3825, CAST(N'2026-01-28' AS Date), N'2082-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3826, CAST(N'2026-01-29' AS Date), N'2082-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3827, CAST(N'2026-01-30' AS Date), N'2082-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3828, CAST(N'2026-01-31' AS Date), N'2082-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3829, CAST(N'2026-02-01' AS Date), N'2082-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3830, CAST(N'2026-02-02' AS Date), N'2082-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3831, CAST(N'2026-02-03' AS Date), N'2082-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3832, CAST(N'2026-02-04' AS Date), N'2082-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3833, CAST(N'2026-02-05' AS Date), N'2082-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3834, CAST(N'2026-02-06' AS Date), N'2082-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3835, CAST(N'2026-02-07' AS Date), N'2082-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3836, CAST(N'2026-02-08' AS Date), N'2082-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3837, CAST(N'2026-02-09' AS Date), N'2082-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3838, CAST(N'2026-02-10' AS Date), N'2082-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3839, CAST(N'2026-02-11' AS Date), N'2082-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3840, CAST(N'2026-02-12' AS Date), N'2082-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3841, CAST(N'2026-02-13' AS Date), N'2082-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3842, CAST(N'2026-02-14' AS Date), N'2082-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3843, CAST(N'2026-02-15' AS Date), N'2082-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3844, CAST(N'2026-02-16' AS Date), N'2082-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3845, CAST(N'2026-02-17' AS Date), N'2082-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3846, CAST(N'2026-02-18' AS Date), N'2082-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3847, CAST(N'2026-02-19' AS Date), N'2082-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3848, CAST(N'2026-02-20' AS Date), N'2082-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3849, CAST(N'2026-02-21' AS Date), N'2082-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3850, CAST(N'2026-02-22' AS Date), N'2082-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3851, CAST(N'2026-02-23' AS Date), N'2082-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3852, CAST(N'2026-02-24' AS Date), N'2082-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3853, CAST(N'2026-02-25' AS Date), N'2082-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3854, CAST(N'2026-02-26' AS Date), N'2082-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3855, CAST(N'2026-02-27' AS Date), N'2082-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3856, CAST(N'2026-02-28' AS Date), N'2082-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3857, CAST(N'2026-03-01' AS Date), N'2082-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3858, CAST(N'2026-03-02' AS Date), N'2082-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3859, CAST(N'2026-03-03' AS Date), N'2082-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3860, CAST(N'2026-03-04' AS Date), N'2082-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3861, CAST(N'2026-03-05' AS Date), N'2082-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3862, CAST(N'2026-03-06' AS Date), N'2082-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3863, CAST(N'2026-03-07' AS Date), N'2082-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3864, CAST(N'2026-03-08' AS Date), N'2082-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3865, CAST(N'2026-03-09' AS Date), N'2082-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3866, CAST(N'2026-03-10' AS Date), N'2082-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3867, CAST(N'2026-03-11' AS Date), N'2082-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3868, CAST(N'2026-03-12' AS Date), N'2082-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3869, CAST(N'2026-03-13' AS Date), N'2082-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3870, CAST(N'2026-03-14' AS Date), N'2082-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3871, CAST(N'2026-03-15' AS Date), N'2082-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3872, CAST(N'2026-03-16' AS Date), N'2082-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3873, CAST(N'2026-03-17' AS Date), N'2082-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3874, CAST(N'2026-03-18' AS Date), N'2082-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3875, CAST(N'2026-03-19' AS Date), N'2082-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3876, CAST(N'2026-03-20' AS Date), N'2082-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3877, CAST(N'2026-03-21' AS Date), N'2082-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3878, CAST(N'2026-03-22' AS Date), N'2082-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3879, CAST(N'2026-03-23' AS Date), N'2082-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3880, CAST(N'2026-03-24' AS Date), N'2082-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3881, CAST(N'2026-03-25' AS Date), N'2082-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3882, CAST(N'2026-03-26' AS Date), N'2082-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3883, CAST(N'2026-03-27' AS Date), N'2082-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3884, CAST(N'2026-03-28' AS Date), N'2082-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3885, CAST(N'2026-03-29' AS Date), N'2082-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3886, CAST(N'2026-03-30' AS Date), N'2082-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3887, CAST(N'2026-03-31' AS Date), N'2082-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3888, CAST(N'2026-04-01' AS Date), N'2082-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3889, CAST(N'2026-04-02' AS Date), N'2082-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3890, CAST(N'2026-04-03' AS Date), N'2082-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3891, CAST(N'2026-04-04' AS Date), N'2082-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3892, CAST(N'2026-04-05' AS Date), N'2082-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3893, CAST(N'2026-04-06' AS Date), N'2082-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3894, CAST(N'2026-04-07' AS Date), N'2082-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3895, CAST(N'2026-04-08' AS Date), N'2082-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3896, CAST(N'2026-04-09' AS Date), N'2082-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3897, CAST(N'2026-04-10' AS Date), N'2082-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3898, CAST(N'2026-04-11' AS Date), N'2082-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3899, CAST(N'2026-04-12' AS Date), N'2082-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3900, CAST(N'2026-04-13' AS Date), N'2082-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3901, CAST(N'2026-04-14' AS Date), N'2082-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3902, CAST(N'2026-04-15' AS Date), N'2083-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3903, CAST(N'2026-04-16' AS Date), N'2083-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3904, CAST(N'2026-04-17' AS Date), N'2083-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3905, CAST(N'2026-04-18' AS Date), N'2083-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3906, CAST(N'2026-04-19' AS Date), N'2083-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3907, CAST(N'2026-04-20' AS Date), N'2083-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3908, CAST(N'2026-04-21' AS Date), N'2083-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3909, CAST(N'2026-04-22' AS Date), N'2083-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3910, CAST(N'2026-04-23' AS Date), N'2083-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3911, CAST(N'2026-04-24' AS Date), N'2083-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3912, CAST(N'2026-04-25' AS Date), N'2083-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3913, CAST(N'2026-04-26' AS Date), N'2083-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3914, CAST(N'2026-04-27' AS Date), N'2083-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3915, CAST(N'2026-04-28' AS Date), N'2083-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3916, CAST(N'2026-04-29' AS Date), N'2083-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3917, CAST(N'2026-04-30' AS Date), N'2083-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3918, CAST(N'2026-05-01' AS Date), N'2083-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3919, CAST(N'2026-05-02' AS Date), N'2083-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3920, CAST(N'2026-05-03' AS Date), N'2083-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3921, CAST(N'2026-05-04' AS Date), N'2083-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3922, CAST(N'2026-05-05' AS Date), N'2083-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3923, CAST(N'2026-05-06' AS Date), N'2083-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3924, CAST(N'2026-05-07' AS Date), N'2083-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3925, CAST(N'2026-05-08' AS Date), N'2083-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3926, CAST(N'2026-05-09' AS Date), N'2083-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3927, CAST(N'2026-05-10' AS Date), N'2083-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3928, CAST(N'2026-05-11' AS Date), N'2083-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3929, CAST(N'2026-05-12' AS Date), N'2083-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3930, CAST(N'2026-05-13' AS Date), N'2083-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3931, CAST(N'2026-05-14' AS Date), N'2083-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3932, CAST(N'2026-05-15' AS Date), N'2083-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3933, CAST(N'2026-05-16' AS Date), N'2083-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3934, CAST(N'2026-05-17' AS Date), N'2083-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3935, CAST(N'2026-05-18' AS Date), N'2083-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3936, CAST(N'2026-05-19' AS Date), N'2083-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3937, CAST(N'2026-05-20' AS Date), N'2083-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3938, CAST(N'2026-05-21' AS Date), N'2083-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3939, CAST(N'2026-05-22' AS Date), N'2083-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3940, CAST(N'2026-05-23' AS Date), N'2083-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3941, CAST(N'2026-05-24' AS Date), N'2083-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3942, CAST(N'2026-05-25' AS Date), N'2083-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3943, CAST(N'2026-05-26' AS Date), N'2083-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3944, CAST(N'2026-05-27' AS Date), N'2083-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3945, CAST(N'2026-05-28' AS Date), N'2083-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3946, CAST(N'2026-05-29' AS Date), N'2083-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3947, CAST(N'2026-05-30' AS Date), N'2083-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3948, CAST(N'2026-05-31' AS Date), N'2083-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3949, CAST(N'2026-06-01' AS Date), N'2083-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3950, CAST(N'2026-06-02' AS Date), N'2083-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3951, CAST(N'2026-06-03' AS Date), N'2083-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3952, CAST(N'2026-06-04' AS Date), N'2083-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3953, CAST(N'2026-06-05' AS Date), N'2083-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3954, CAST(N'2026-06-06' AS Date), N'2083-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3955, CAST(N'2026-06-07' AS Date), N'2083-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3956, CAST(N'2026-06-08' AS Date), N'2083-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3957, CAST(N'2026-06-09' AS Date), N'2083-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3958, CAST(N'2026-06-10' AS Date), N'2083-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3959, CAST(N'2026-06-11' AS Date), N'2083-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3960, CAST(N'2026-06-12' AS Date), N'2083-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3961, CAST(N'2026-06-13' AS Date), N'2083-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3962, CAST(N'2026-06-14' AS Date), N'2083-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3963, CAST(N'2026-06-15' AS Date), N'2083-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3964, CAST(N'2026-06-16' AS Date), N'2083-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3965, CAST(N'2026-06-17' AS Date), N'2083-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3966, CAST(N'2026-06-18' AS Date), N'2083-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3967, CAST(N'2026-06-19' AS Date), N'2083-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3968, CAST(N'2026-06-20' AS Date), N'2083-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3969, CAST(N'2026-06-21' AS Date), N'2083-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3970, CAST(N'2026-06-22' AS Date), N'2083-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3971, CAST(N'2026-06-23' AS Date), N'2083-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3972, CAST(N'2026-06-24' AS Date), N'2083-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3973, CAST(N'2026-06-25' AS Date), N'2083-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3974, CAST(N'2026-06-26' AS Date), N'2083-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3975, CAST(N'2026-06-27' AS Date), N'2083-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3976, CAST(N'2026-06-28' AS Date), N'2083-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3977, CAST(N'2026-06-29' AS Date), N'2083-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3978, CAST(N'2026-06-30' AS Date), N'2083-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3979, CAST(N'2026-07-01' AS Date), N'2083-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3980, CAST(N'2026-07-02' AS Date), N'2083-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3981, CAST(N'2026-07-03' AS Date), N'2083-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3982, CAST(N'2026-07-04' AS Date), N'2083-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3983, CAST(N'2026-07-05' AS Date), N'2083-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3984, CAST(N'2026-07-06' AS Date), N'2083-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3985, CAST(N'2026-07-07' AS Date), N'2083-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3986, CAST(N'2026-07-08' AS Date), N'2083-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3987, CAST(N'2026-07-09' AS Date), N'2083-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3988, CAST(N'2026-07-10' AS Date), N'2083-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3989, CAST(N'2026-07-11' AS Date), N'2083-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3990, CAST(N'2026-07-12' AS Date), N'2083-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3991, CAST(N'2026-07-13' AS Date), N'2083-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3992, CAST(N'2026-07-14' AS Date), N'2083-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3993, CAST(N'2026-07-15' AS Date), N'2083-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3994, CAST(N'2026-07-16' AS Date), N'2083-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3995, CAST(N'2026-07-17' AS Date), N'2083-03-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3996, CAST(N'2026-07-18' AS Date), N'2083-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3997, CAST(N'2026-07-19' AS Date), N'2083-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3998, CAST(N'2026-07-20' AS Date), N'2083-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (3999, CAST(N'2026-07-21' AS Date), N'2083-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4000, CAST(N'2026-07-22' AS Date), N'2083-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4001, CAST(N'2026-07-23' AS Date), N'2083-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4002, CAST(N'2026-07-24' AS Date), N'2083-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4003, CAST(N'2026-07-25' AS Date), N'2083-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4004, CAST(N'2026-07-26' AS Date), N'2083-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4005, CAST(N'2026-07-27' AS Date), N'2083-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4006, CAST(N'2026-07-28' AS Date), N'2083-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4007, CAST(N'2026-07-29' AS Date), N'2083-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4008, CAST(N'2026-07-30' AS Date), N'2083-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4009, CAST(N'2026-07-31' AS Date), N'2083-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4010, CAST(N'2026-08-01' AS Date), N'2083-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4011, CAST(N'2026-08-02' AS Date), N'2083-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4012, CAST(N'2026-08-03' AS Date), N'2083-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4013, CAST(N'2026-08-04' AS Date), N'2083-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4014, CAST(N'2026-08-05' AS Date), N'2083-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4015, CAST(N'2026-08-06' AS Date), N'2083-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4016, CAST(N'2026-08-07' AS Date), N'2083-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4017, CAST(N'2026-08-08' AS Date), N'2083-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4018, CAST(N'2026-08-09' AS Date), N'2083-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4019, CAST(N'2026-08-10' AS Date), N'2083-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4020, CAST(N'2026-08-11' AS Date), N'2083-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4021, CAST(N'2026-08-12' AS Date), N'2083-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4022, CAST(N'2026-08-13' AS Date), N'2083-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4023, CAST(N'2026-08-14' AS Date), N'2083-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4024, CAST(N'2026-08-15' AS Date), N'2083-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4025, CAST(N'2026-08-16' AS Date), N'2083-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4026, CAST(N'2026-08-17' AS Date), N'2083-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4027, CAST(N'2026-08-18' AS Date), N'2083-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4028, CAST(N'2026-08-19' AS Date), N'2083-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4029, CAST(N'2026-08-20' AS Date), N'2083-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4030, CAST(N'2026-08-21' AS Date), N'2083-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4031, CAST(N'2026-08-22' AS Date), N'2083-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4032, CAST(N'2026-08-23' AS Date), N'2083-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4033, CAST(N'2026-08-24' AS Date), N'2083-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4034, CAST(N'2026-08-25' AS Date), N'2083-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4035, CAST(N'2026-08-26' AS Date), N'2083-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4036, CAST(N'2026-08-27' AS Date), N'2083-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4037, CAST(N'2026-08-28' AS Date), N'2083-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4038, CAST(N'2026-08-29' AS Date), N'2083-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4039, CAST(N'2026-08-30' AS Date), N'2083-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4040, CAST(N'2026-08-31' AS Date), N'2083-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4041, CAST(N'2026-09-01' AS Date), N'2083-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4042, CAST(N'2026-09-02' AS Date), N'2083-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4043, CAST(N'2026-09-03' AS Date), N'2083-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4044, CAST(N'2026-09-04' AS Date), N'2083-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4045, CAST(N'2026-09-05' AS Date), N'2083-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4046, CAST(N'2026-09-06' AS Date), N'2083-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4047, CAST(N'2026-09-07' AS Date), N'2083-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4048, CAST(N'2026-09-08' AS Date), N'2083-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4049, CAST(N'2026-09-09' AS Date), N'2083-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4050, CAST(N'2026-09-10' AS Date), N'2083-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4051, CAST(N'2026-09-11' AS Date), N'2083-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4052, CAST(N'2026-09-12' AS Date), N'2083-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4053, CAST(N'2026-09-13' AS Date), N'2083-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4054, CAST(N'2026-09-14' AS Date), N'2083-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4055, CAST(N'2026-09-15' AS Date), N'2083-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4056, CAST(N'2026-09-16' AS Date), N'2083-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4057, CAST(N'2026-09-17' AS Date), N'2083-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4058, CAST(N'2026-09-18' AS Date), N'2083-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4059, CAST(N'2026-09-19' AS Date), N'2083-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4060, CAST(N'2026-09-20' AS Date), N'2083-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4061, CAST(N'2026-09-21' AS Date), N'2083-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4062, CAST(N'2026-09-22' AS Date), N'2083-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4063, CAST(N'2026-09-23' AS Date), N'2083-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4064, CAST(N'2026-09-24' AS Date), N'2083-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4065, CAST(N'2026-09-25' AS Date), N'2083-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4066, CAST(N'2026-09-26' AS Date), N'2083-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4067, CAST(N'2026-09-27' AS Date), N'2083-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4068, CAST(N'2026-09-28' AS Date), N'2083-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4069, CAST(N'2026-09-29' AS Date), N'2083-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4070, CAST(N'2026-09-30' AS Date), N'2083-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4071, CAST(N'2026-10-01' AS Date), N'2083-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4072, CAST(N'2026-10-02' AS Date), N'2083-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4073, CAST(N'2026-10-03' AS Date), N'2083-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4074, CAST(N'2026-10-04' AS Date), N'2083-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4075, CAST(N'2026-10-05' AS Date), N'2083-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4076, CAST(N'2026-10-06' AS Date), N'2083-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4077, CAST(N'2026-10-07' AS Date), N'2083-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4078, CAST(N'2026-10-08' AS Date), N'2083-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4079, CAST(N'2026-10-09' AS Date), N'2083-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4080, CAST(N'2026-10-10' AS Date), N'2083-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4081, CAST(N'2026-10-11' AS Date), N'2083-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4082, CAST(N'2026-10-12' AS Date), N'2083-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4083, CAST(N'2026-10-13' AS Date), N'2083-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4084, CAST(N'2026-10-14' AS Date), N'2083-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4085, CAST(N'2026-10-15' AS Date), N'2083-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4086, CAST(N'2026-10-16' AS Date), N'2083-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4087, CAST(N'2026-10-17' AS Date), N'2083-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4088, CAST(N'2026-10-18' AS Date), N'2083-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4089, CAST(N'2026-10-19' AS Date), N'2083-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4090, CAST(N'2026-10-20' AS Date), N'2083-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4091, CAST(N'2026-10-21' AS Date), N'2083-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4092, CAST(N'2026-10-22' AS Date), N'2083-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4093, CAST(N'2026-10-23' AS Date), N'2083-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4094, CAST(N'2026-10-24' AS Date), N'2083-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4095, CAST(N'2026-10-25' AS Date), N'2083-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4096, CAST(N'2026-10-26' AS Date), N'2083-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4097, CAST(N'2026-10-27' AS Date), N'2083-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4098, CAST(N'2026-10-28' AS Date), N'2083-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4099, CAST(N'2026-10-29' AS Date), N'2083-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4100, CAST(N'2026-10-30' AS Date), N'2083-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4101, CAST(N'2026-10-31' AS Date), N'2083-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4102, CAST(N'2026-11-01' AS Date), N'2083-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4103, CAST(N'2026-11-02' AS Date), N'2083-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4104, CAST(N'2026-11-03' AS Date), N'2083-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4105, CAST(N'2026-11-04' AS Date), N'2083-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4106, CAST(N'2026-11-05' AS Date), N'2083-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4107, CAST(N'2026-11-06' AS Date), N'2083-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4108, CAST(N'2026-11-07' AS Date), N'2083-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4109, CAST(N'2026-11-08' AS Date), N'2083-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4110, CAST(N'2026-11-09' AS Date), N'2083-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4111, CAST(N'2026-11-10' AS Date), N'2083-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4112, CAST(N'2026-11-11' AS Date), N'2083-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4113, CAST(N'2026-11-12' AS Date), N'2083-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4114, CAST(N'2026-11-13' AS Date), N'2083-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4115, CAST(N'2026-11-14' AS Date), N'2083-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4116, CAST(N'2026-11-15' AS Date), N'2083-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4117, CAST(N'2026-11-16' AS Date), N'2083-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4118, CAST(N'2026-11-17' AS Date), N'2083-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4119, CAST(N'2026-11-18' AS Date), N'2083-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4120, CAST(N'2026-11-19' AS Date), N'2083-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4121, CAST(N'2026-11-20' AS Date), N'2083-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4122, CAST(N'2026-11-21' AS Date), N'2083-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4123, CAST(N'2026-11-22' AS Date), N'2083-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4124, CAST(N'2026-11-23' AS Date), N'2083-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4125, CAST(N'2026-11-24' AS Date), N'2083-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4126, CAST(N'2026-11-25' AS Date), N'2083-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4127, CAST(N'2026-11-26' AS Date), N'2083-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4128, CAST(N'2026-11-27' AS Date), N'2083-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4129, CAST(N'2026-11-28' AS Date), N'2083-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4130, CAST(N'2026-11-29' AS Date), N'2083-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4131, CAST(N'2026-11-30' AS Date), N'2083-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4132, CAST(N'2026-12-01' AS Date), N'2083-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4133, CAST(N'2026-12-02' AS Date), N'2083-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4134, CAST(N'2026-12-03' AS Date), N'2083-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4135, CAST(N'2026-12-04' AS Date), N'2083-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4136, CAST(N'2026-12-05' AS Date), N'2083-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4137, CAST(N'2026-12-06' AS Date), N'2083-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4138, CAST(N'2026-12-07' AS Date), N'2083-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4139, CAST(N'2026-12-08' AS Date), N'2083-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4140, CAST(N'2026-12-09' AS Date), N'2083-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4141, CAST(N'2026-12-10' AS Date), N'2083-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4142, CAST(N'2026-12-11' AS Date), N'2083-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4143, CAST(N'2026-12-12' AS Date), N'2083-08-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4144, CAST(N'2026-12-13' AS Date), N'2083-08-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4145, CAST(N'2026-12-14' AS Date), N'2083-08-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4146, CAST(N'2026-12-15' AS Date), N'2083-08-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4147, CAST(N'2026-12-16' AS Date), N'2083-08-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4148, CAST(N'2026-12-17' AS Date), N'2083-09-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4149, CAST(N'2026-12-18' AS Date), N'2083-09-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4150, CAST(N'2026-12-19' AS Date), N'2083-09-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4151, CAST(N'2026-12-20' AS Date), N'2083-09-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4152, CAST(N'2026-12-21' AS Date), N'2083-09-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4153, CAST(N'2026-12-22' AS Date), N'2083-09-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4154, CAST(N'2026-12-23' AS Date), N'2083-09-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4155, CAST(N'2026-12-24' AS Date), N'2083-09-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4156, CAST(N'2026-12-25' AS Date), N'2083-09-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4157, CAST(N'2026-12-26' AS Date), N'2083-09-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4158, CAST(N'2026-12-27' AS Date), N'2083-09-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4159, CAST(N'2026-12-28' AS Date), N'2083-09-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4160, CAST(N'2026-12-29' AS Date), N'2083-09-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4161, CAST(N'2026-12-30' AS Date), N'2083-09-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4162, CAST(N'2026-12-31' AS Date), N'2083-09-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4163, CAST(N'2027-01-01' AS Date), N'2083-09-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4164, CAST(N'2027-01-02' AS Date), N'2083-09-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4165, CAST(N'2027-01-03' AS Date), N'2083-09-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4166, CAST(N'2027-01-04' AS Date), N'2083-09-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4167, CAST(N'2027-01-05' AS Date), N'2083-09-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4168, CAST(N'2027-01-06' AS Date), N'2083-09-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4169, CAST(N'2027-01-07' AS Date), N'2083-09-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4170, CAST(N'2027-01-08' AS Date), N'2083-09-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4171, CAST(N'2027-01-09' AS Date), N'2083-09-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4172, CAST(N'2027-01-10' AS Date), N'2083-09-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4173, CAST(N'2027-01-11' AS Date), N'2083-09-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4174, CAST(N'2027-01-12' AS Date), N'2083-09-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4175, CAST(N'2027-01-13' AS Date), N'2083-09-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4176, CAST(N'2027-01-14' AS Date), N'2083-09-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4177, CAST(N'2027-01-15' AS Date), N'2083-10-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4178, CAST(N'2027-01-16' AS Date), N'2083-10-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4179, CAST(N'2027-01-17' AS Date), N'2083-10-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4180, CAST(N'2027-01-18' AS Date), N'2083-10-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4181, CAST(N'2027-01-19' AS Date), N'2083-10-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4182, CAST(N'2027-01-20' AS Date), N'2083-10-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4183, CAST(N'2027-01-21' AS Date), N'2083-10-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4184, CAST(N'2027-01-22' AS Date), N'2083-10-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4185, CAST(N'2027-01-23' AS Date), N'2083-10-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4186, CAST(N'2027-01-24' AS Date), N'2083-10-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4187, CAST(N'2027-01-25' AS Date), N'2083-10-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4188, CAST(N'2027-01-26' AS Date), N'2083-10-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4189, CAST(N'2027-01-27' AS Date), N'2083-10-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4190, CAST(N'2027-01-28' AS Date), N'2083-10-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4191, CAST(N'2027-01-29' AS Date), N'2083-10-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4192, CAST(N'2027-01-30' AS Date), N'2083-10-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4193, CAST(N'2027-01-31' AS Date), N'2083-10-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4194, CAST(N'2027-02-01' AS Date), N'2083-10-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4195, CAST(N'2027-02-02' AS Date), N'2083-10-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4196, CAST(N'2027-02-03' AS Date), N'2083-10-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4197, CAST(N'2027-02-04' AS Date), N'2083-10-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4198, CAST(N'2027-02-05' AS Date), N'2083-10-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4199, CAST(N'2027-02-06' AS Date), N'2083-10-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4200, CAST(N'2027-02-07' AS Date), N'2083-10-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4201, CAST(N'2027-02-08' AS Date), N'2083-10-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4202, CAST(N'2027-02-09' AS Date), N'2083-10-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4203, CAST(N'2027-02-10' AS Date), N'2083-10-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4204, CAST(N'2027-02-11' AS Date), N'2083-10-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4205, CAST(N'2027-02-12' AS Date), N'2083-10-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4206, CAST(N'2027-02-13' AS Date), N'2083-10-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4207, CAST(N'2027-02-14' AS Date), N'2083-11-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4208, CAST(N'2027-02-15' AS Date), N'2083-11-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4209, CAST(N'2027-02-16' AS Date), N'2083-11-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4210, CAST(N'2027-02-17' AS Date), N'2083-11-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4211, CAST(N'2027-02-18' AS Date), N'2083-11-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4212, CAST(N'2027-02-19' AS Date), N'2083-11-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4213, CAST(N'2027-02-20' AS Date), N'2083-11-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4214, CAST(N'2027-02-21' AS Date), N'2083-11-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4215, CAST(N'2027-02-22' AS Date), N'2083-11-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4216, CAST(N'2027-02-23' AS Date), N'2083-11-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4217, CAST(N'2027-02-24' AS Date), N'2083-11-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4218, CAST(N'2027-02-25' AS Date), N'2083-11-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4219, CAST(N'2027-02-26' AS Date), N'2083-11-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4220, CAST(N'2027-02-27' AS Date), N'2083-11-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4221, CAST(N'2027-02-28' AS Date), N'2083-11-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4222, CAST(N'2027-03-01' AS Date), N'2083-11-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4223, CAST(N'2027-03-02' AS Date), N'2083-11-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4224, CAST(N'2027-03-03' AS Date), N'2083-11-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4225, CAST(N'2027-03-04' AS Date), N'2083-11-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4226, CAST(N'2027-03-05' AS Date), N'2083-11-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4227, CAST(N'2027-03-06' AS Date), N'2083-11-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4228, CAST(N'2027-03-07' AS Date), N'2083-11-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4229, CAST(N'2027-03-08' AS Date), N'2083-11-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4230, CAST(N'2027-03-09' AS Date), N'2083-11-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4231, CAST(N'2027-03-10' AS Date), N'2083-11-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4232, CAST(N'2027-03-11' AS Date), N'2083-11-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4233, CAST(N'2027-03-12' AS Date), N'2083-11-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4234, CAST(N'2027-03-13' AS Date), N'2083-11-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4235, CAST(N'2027-03-14' AS Date), N'2083-11-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4236, CAST(N'2027-03-15' AS Date), N'2083-11-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4237, CAST(N'2027-03-16' AS Date), N'2083-12-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4238, CAST(N'2027-03-17' AS Date), N'2083-12-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4239, CAST(N'2027-03-18' AS Date), N'2083-12-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4240, CAST(N'2027-03-19' AS Date), N'2083-12-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4241, CAST(N'2027-03-20' AS Date), N'2083-12-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4242, CAST(N'2027-03-21' AS Date), N'2083-12-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4243, CAST(N'2027-03-22' AS Date), N'2083-12-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4244, CAST(N'2027-03-23' AS Date), N'2083-12-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4245, CAST(N'2027-03-24' AS Date), N'2083-12-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4246, CAST(N'2027-03-25' AS Date), N'2083-12-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4247, CAST(N'2027-03-26' AS Date), N'2083-12-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4248, CAST(N'2027-03-27' AS Date), N'2083-12-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4249, CAST(N'2027-03-28' AS Date), N'2083-12-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4250, CAST(N'2027-03-29' AS Date), N'2083-12-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4251, CAST(N'2027-03-30' AS Date), N'2083-12-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4252, CAST(N'2027-03-31' AS Date), N'2083-12-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4253, CAST(N'2027-04-01' AS Date), N'2083-12-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4254, CAST(N'2027-04-02' AS Date), N'2083-12-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4255, CAST(N'2027-04-03' AS Date), N'2083-12-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4256, CAST(N'2027-04-04' AS Date), N'2083-12-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4257, CAST(N'2027-04-05' AS Date), N'2083-12-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4258, CAST(N'2027-04-06' AS Date), N'2083-12-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4259, CAST(N'2027-04-07' AS Date), N'2083-12-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4260, CAST(N'2027-04-08' AS Date), N'2083-12-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4261, CAST(N'2027-04-09' AS Date), N'2083-12-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4262, CAST(N'2027-04-10' AS Date), N'2083-12-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4263, CAST(N'2027-04-11' AS Date), N'2083-12-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4264, CAST(N'2027-04-12' AS Date), N'2083-12-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4265, CAST(N'2027-04-13' AS Date), N'2083-12-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4266, CAST(N'2027-04-14' AS Date), N'2083-12-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4267, CAST(N'2027-04-15' AS Date), N'2084-01-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4268, CAST(N'2027-04-16' AS Date), N'2084-01-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4269, CAST(N'2027-04-17' AS Date), N'2084-01-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4270, CAST(N'2027-04-18' AS Date), N'2084-01-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4271, CAST(N'2027-04-19' AS Date), N'2084-01-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4272, CAST(N'2027-04-20' AS Date), N'2084-01-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4273, CAST(N'2027-04-21' AS Date), N'2084-01-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4274, CAST(N'2027-04-22' AS Date), N'2084-01-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4275, CAST(N'2027-04-23' AS Date), N'2084-01-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4276, CAST(N'2027-04-24' AS Date), N'2084-01-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4277, CAST(N'2027-04-25' AS Date), N'2084-01-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4278, CAST(N'2027-04-26' AS Date), N'2084-01-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4279, CAST(N'2027-04-27' AS Date), N'2084-01-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4280, CAST(N'2027-04-28' AS Date), N'2084-01-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4281, CAST(N'2027-04-29' AS Date), N'2084-01-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4282, CAST(N'2027-04-30' AS Date), N'2084-01-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4283, CAST(N'2027-05-01' AS Date), N'2084-01-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4284, CAST(N'2027-05-02' AS Date), N'2084-01-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4285, CAST(N'2027-05-03' AS Date), N'2084-01-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4286, CAST(N'2027-05-04' AS Date), N'2084-01-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4287, CAST(N'2027-05-05' AS Date), N'2084-01-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4288, CAST(N'2027-05-06' AS Date), N'2084-01-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4289, CAST(N'2027-05-07' AS Date), N'2084-01-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4290, CAST(N'2027-05-08' AS Date), N'2084-01-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4291, CAST(N'2027-05-09' AS Date), N'2084-01-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4292, CAST(N'2027-05-10' AS Date), N'2084-01-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4293, CAST(N'2027-05-11' AS Date), N'2084-01-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4294, CAST(N'2027-05-12' AS Date), N'2084-01-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4295, CAST(N'2027-05-13' AS Date), N'2084-01-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4296, CAST(N'2027-05-14' AS Date), N'2084-01-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4297, CAST(N'2027-05-15' AS Date), N'2084-01-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4298, CAST(N'2027-05-16' AS Date), N'2084-02-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4299, CAST(N'2027-05-17' AS Date), N'2084-02-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4300, CAST(N'2027-05-18' AS Date), N'2084-02-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4301, CAST(N'2027-05-19' AS Date), N'2084-02-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4302, CAST(N'2027-05-20' AS Date), N'2084-02-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4303, CAST(N'2027-05-21' AS Date), N'2084-02-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4304, CAST(N'2027-05-22' AS Date), N'2084-02-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4305, CAST(N'2027-05-23' AS Date), N'2084-02-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4306, CAST(N'2027-05-24' AS Date), N'2084-02-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4307, CAST(N'2027-05-25' AS Date), N'2084-02-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4308, CAST(N'2027-05-26' AS Date), N'2084-02-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4309, CAST(N'2027-05-27' AS Date), N'2084-02-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4310, CAST(N'2027-05-28' AS Date), N'2084-02-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4311, CAST(N'2027-05-29' AS Date), N'2084-02-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4312, CAST(N'2027-05-30' AS Date), N'2084-02-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4313, CAST(N'2027-05-31' AS Date), N'2084-02-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4314, CAST(N'2027-06-01' AS Date), N'2084-02-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4315, CAST(N'2027-06-02' AS Date), N'2084-02-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4316, CAST(N'2027-06-03' AS Date), N'2084-02-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4317, CAST(N'2027-06-04' AS Date), N'2084-02-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4318, CAST(N'2027-06-05' AS Date), N'2084-02-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4319, CAST(N'2027-06-06' AS Date), N'2084-02-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4320, CAST(N'2027-06-07' AS Date), N'2084-02-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4321, CAST(N'2027-06-08' AS Date), N'2084-02-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4322, CAST(N'2027-06-09' AS Date), N'2084-02-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4323, CAST(N'2027-06-10' AS Date), N'2084-02-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4324, CAST(N'2027-06-11' AS Date), N'2084-02-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4325, CAST(N'2027-06-12' AS Date), N'2084-02-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4326, CAST(N'2027-06-13' AS Date), N'2084-02-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4327, CAST(N'2027-06-14' AS Date), N'2084-02-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4328, CAST(N'2027-06-15' AS Date), N'2084-02-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4329, CAST(N'2027-06-16' AS Date), N'2084-03-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4330, CAST(N'2027-06-17' AS Date), N'2084-03-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4331, CAST(N'2027-06-18' AS Date), N'2084-03-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4332, CAST(N'2027-06-19' AS Date), N'2084-03-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4333, CAST(N'2027-06-20' AS Date), N'2084-03-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4334, CAST(N'2027-06-21' AS Date), N'2084-03-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4335, CAST(N'2027-06-22' AS Date), N'2084-03-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4336, CAST(N'2027-06-23' AS Date), N'2084-03-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4337, CAST(N'2027-06-24' AS Date), N'2084-03-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4338, CAST(N'2027-06-25' AS Date), N'2084-03-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4339, CAST(N'2027-06-26' AS Date), N'2084-03-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4340, CAST(N'2027-06-27' AS Date), N'2084-03-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4341, CAST(N'2027-06-28' AS Date), N'2084-03-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4342, CAST(N'2027-06-29' AS Date), N'2084-03-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4343, CAST(N'2027-06-30' AS Date), N'2084-03-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4344, CAST(N'2027-07-01' AS Date), N'2084-03-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4345, CAST(N'2027-07-02' AS Date), N'2084-03-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4346, CAST(N'2027-07-03' AS Date), N'2084-03-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4347, CAST(N'2027-07-04' AS Date), N'2084-03-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4348, CAST(N'2027-07-05' AS Date), N'2084-03-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4349, CAST(N'2027-07-06' AS Date), N'2084-03-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4350, CAST(N'2027-07-07' AS Date), N'2084-03-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4351, CAST(N'2027-07-08' AS Date), N'2084-03-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4352, CAST(N'2027-07-09' AS Date), N'2084-03-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4353, CAST(N'2027-07-10' AS Date), N'2084-03-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4354, CAST(N'2027-07-11' AS Date), N'2084-03-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4355, CAST(N'2027-07-12' AS Date), N'2084-03-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4356, CAST(N'2027-07-13' AS Date), N'2084-03-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4357, CAST(N'2027-07-14' AS Date), N'2084-03-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4358, CAST(N'2027-07-15' AS Date), N'2084-03-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4359, CAST(N'2027-07-16' AS Date), N'2084-03-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4360, CAST(N'2027-07-17' AS Date), N'2084-03-32')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4361, CAST(N'2027-07-18' AS Date), N'2084-04-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4362, CAST(N'2027-07-19' AS Date), N'2084-04-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4363, CAST(N'2027-07-20' AS Date), N'2084-04-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4364, CAST(N'2027-07-21' AS Date), N'2084-04-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4365, CAST(N'2027-07-22' AS Date), N'2084-04-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4366, CAST(N'2027-07-23' AS Date), N'2084-04-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4367, CAST(N'2027-07-24' AS Date), N'2084-04-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4368, CAST(N'2027-07-25' AS Date), N'2084-04-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4369, CAST(N'2027-07-26' AS Date), N'2084-04-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4370, CAST(N'2027-07-27' AS Date), N'2084-04-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4371, CAST(N'2027-07-28' AS Date), N'2084-04-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4372, CAST(N'2027-07-29' AS Date), N'2084-04-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4373, CAST(N'2027-07-30' AS Date), N'2084-04-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4374, CAST(N'2027-07-31' AS Date), N'2084-04-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4375, CAST(N'2027-08-01' AS Date), N'2084-04-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4376, CAST(N'2027-08-02' AS Date), N'2084-04-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4377, CAST(N'2027-08-03' AS Date), N'2084-04-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4378, CAST(N'2027-08-04' AS Date), N'2084-04-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4379, CAST(N'2027-08-05' AS Date), N'2084-04-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4380, CAST(N'2027-08-06' AS Date), N'2084-04-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4381, CAST(N'2027-08-07' AS Date), N'2084-04-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4382, CAST(N'2027-08-08' AS Date), N'2084-04-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4383, CAST(N'2027-08-09' AS Date), N'2084-04-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4384, CAST(N'2027-08-10' AS Date), N'2084-04-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4385, CAST(N'2027-08-11' AS Date), N'2084-04-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4386, CAST(N'2027-08-12' AS Date), N'2084-04-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4387, CAST(N'2027-08-13' AS Date), N'2084-04-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4388, CAST(N'2027-08-14' AS Date), N'2084-04-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4389, CAST(N'2027-08-15' AS Date), N'2084-04-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4390, CAST(N'2027-08-16' AS Date), N'2084-04-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4391, CAST(N'2027-08-17' AS Date), N'2084-04-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4392, CAST(N'2027-08-18' AS Date), N'2084-05-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4393, CAST(N'2027-08-19' AS Date), N'2084-05-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4394, CAST(N'2027-08-20' AS Date), N'2084-05-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4395, CAST(N'2027-08-21' AS Date), N'2084-05-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4396, CAST(N'2027-08-22' AS Date), N'2084-05-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4397, CAST(N'2027-08-23' AS Date), N'2084-05-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4398, CAST(N'2027-08-24' AS Date), N'2084-05-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4399, CAST(N'2027-08-25' AS Date), N'2084-05-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4400, CAST(N'2027-08-26' AS Date), N'2084-05-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4401, CAST(N'2027-08-27' AS Date), N'2084-05-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4402, CAST(N'2027-08-28' AS Date), N'2084-05-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4403, CAST(N'2027-08-29' AS Date), N'2084-05-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4404, CAST(N'2027-08-30' AS Date), N'2084-05-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4405, CAST(N'2027-08-31' AS Date), N'2084-05-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4406, CAST(N'2027-09-01' AS Date), N'2084-05-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4407, CAST(N'2027-09-02' AS Date), N'2084-05-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4408, CAST(N'2027-09-03' AS Date), N'2084-05-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4409, CAST(N'2027-09-04' AS Date), N'2084-05-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4410, CAST(N'2027-09-05' AS Date), N'2084-05-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4411, CAST(N'2027-09-06' AS Date), N'2084-05-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4412, CAST(N'2027-09-07' AS Date), N'2084-05-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4413, CAST(N'2027-09-08' AS Date), N'2084-05-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4414, CAST(N'2027-09-09' AS Date), N'2084-05-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4415, CAST(N'2027-09-10' AS Date), N'2084-05-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4416, CAST(N'2027-09-11' AS Date), N'2084-05-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4417, CAST(N'2027-09-12' AS Date), N'2084-05-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4418, CAST(N'2027-09-13' AS Date), N'2084-05-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4419, CAST(N'2027-09-14' AS Date), N'2084-05-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4420, CAST(N'2027-09-15' AS Date), N'2084-05-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4421, CAST(N'2027-09-16' AS Date), N'2084-05-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4422, CAST(N'2027-09-17' AS Date), N'2084-05-31')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4423, CAST(N'2027-09-18' AS Date), N'2084-06-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4424, CAST(N'2027-09-19' AS Date), N'2084-06-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4425, CAST(N'2027-09-20' AS Date), N'2084-06-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4426, CAST(N'2027-09-21' AS Date), N'2084-06-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4427, CAST(N'2027-09-22' AS Date), N'2084-06-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4428, CAST(N'2027-09-23' AS Date), N'2084-06-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4429, CAST(N'2027-09-24' AS Date), N'2084-06-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4430, CAST(N'2027-09-25' AS Date), N'2084-06-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4431, CAST(N'2027-09-26' AS Date), N'2084-06-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4432, CAST(N'2027-09-27' AS Date), N'2084-06-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4433, CAST(N'2027-09-28' AS Date), N'2084-06-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4434, CAST(N'2027-09-29' AS Date), N'2084-06-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4435, CAST(N'2027-09-30' AS Date), N'2084-06-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4436, CAST(N'2027-10-01' AS Date), N'2084-06-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4437, CAST(N'2027-10-02' AS Date), N'2084-06-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4438, CAST(N'2027-10-03' AS Date), N'2084-06-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4439, CAST(N'2027-10-04' AS Date), N'2084-06-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4440, CAST(N'2027-10-05' AS Date), N'2084-06-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4441, CAST(N'2027-10-06' AS Date), N'2084-06-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4442, CAST(N'2027-10-07' AS Date), N'2084-06-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4443, CAST(N'2027-10-08' AS Date), N'2084-06-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4444, CAST(N'2027-10-09' AS Date), N'2084-06-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4445, CAST(N'2027-10-10' AS Date), N'2084-06-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4446, CAST(N'2027-10-11' AS Date), N'2084-06-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4447, CAST(N'2027-10-12' AS Date), N'2084-06-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4448, CAST(N'2027-10-13' AS Date), N'2084-06-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4449, CAST(N'2027-10-14' AS Date), N'2084-06-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4450, CAST(N'2027-10-15' AS Date), N'2084-06-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4451, CAST(N'2027-10-16' AS Date), N'2084-06-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4452, CAST(N'2027-10-17' AS Date), N'2084-06-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4453, CAST(N'2027-10-18' AS Date), N'2084-07-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4454, CAST(N'2027-10-19' AS Date), N'2084-07-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4455, CAST(N'2027-10-20' AS Date), N'2084-07-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4456, CAST(N'2027-10-21' AS Date), N'2084-07-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4457, CAST(N'2027-10-22' AS Date), N'2084-07-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4458, CAST(N'2027-10-23' AS Date), N'2084-07-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4459, CAST(N'2027-10-24' AS Date), N'2084-07-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4460, CAST(N'2027-10-25' AS Date), N'2084-07-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4461, CAST(N'2027-10-26' AS Date), N'2084-07-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4462, CAST(N'2027-10-27' AS Date), N'2084-07-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4463, CAST(N'2027-10-28' AS Date), N'2084-07-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4464, CAST(N'2027-10-29' AS Date), N'2084-07-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4465, CAST(N'2027-10-30' AS Date), N'2084-07-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4466, CAST(N'2027-10-31' AS Date), N'2084-07-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4467, CAST(N'2027-11-01' AS Date), N'2084-07-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4468, CAST(N'2027-11-02' AS Date), N'2084-07-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4469, CAST(N'2027-11-03' AS Date), N'2084-07-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4470, CAST(N'2027-11-04' AS Date), N'2084-07-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4471, CAST(N'2027-11-05' AS Date), N'2084-07-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4472, CAST(N'2027-11-06' AS Date), N'2084-07-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4473, CAST(N'2027-11-07' AS Date), N'2084-07-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4474, CAST(N'2027-11-08' AS Date), N'2084-07-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4475, CAST(N'2027-11-09' AS Date), N'2084-07-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4476, CAST(N'2027-11-10' AS Date), N'2084-07-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4477, CAST(N'2027-11-11' AS Date), N'2084-07-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4478, CAST(N'2027-11-12' AS Date), N'2084-07-26')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4479, CAST(N'2027-11-13' AS Date), N'2084-07-27')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4480, CAST(N'2027-11-14' AS Date), N'2084-07-28')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4481, CAST(N'2027-11-15' AS Date), N'2084-07-29')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4482, CAST(N'2027-11-16' AS Date), N'2084-07-30')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4483, CAST(N'2027-11-17' AS Date), N'2084-08-01')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4484, CAST(N'2027-11-18' AS Date), N'2084-08-02')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4485, CAST(N'2027-11-19' AS Date), N'2084-08-03')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4486, CAST(N'2027-11-20' AS Date), N'2084-08-04')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4487, CAST(N'2027-11-21' AS Date), N'2084-08-05')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4488, CAST(N'2027-11-22' AS Date), N'2084-08-06')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4489, CAST(N'2027-11-23' AS Date), N'2084-08-07')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4490, CAST(N'2027-11-24' AS Date), N'2084-08-08')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4491, CAST(N'2027-11-25' AS Date), N'2084-08-09')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4492, CAST(N'2027-11-26' AS Date), N'2084-08-10')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4493, CAST(N'2027-11-27' AS Date), N'2084-08-11')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4494, CAST(N'2027-11-28' AS Date), N'2084-08-12')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4495, CAST(N'2027-11-29' AS Date), N'2084-08-13')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4496, CAST(N'2027-11-30' AS Date), N'2084-08-14')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4497, CAST(N'2027-12-01' AS Date), N'2084-08-15')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4498, CAST(N'2027-12-02' AS Date), N'2084-08-16')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4499, CAST(N'2027-12-03' AS Date), N'2084-08-17')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4500, CAST(N'2027-12-04' AS Date), N'2084-08-18')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4501, CAST(N'2027-12-05' AS Date), N'2084-08-19')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4502, CAST(N'2027-12-06' AS Date), N'2084-08-20')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4503, CAST(N'2027-12-07' AS Date), N'2084-08-21')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4504, CAST(N'2027-12-08' AS Date), N'2084-08-22')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4505, CAST(N'2027-12-09' AS Date), N'2084-08-23')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4506, CAST(N'2027-12-10' AS Date), N'2084-08-24')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4507, CAST(N'2027-12-11' AS Date), N'2084-08-25')
GO
INSERT [dbo].[EndOfDay] ([Id], [DateInAd], [DateInBs]) VALUES (4508, CAST(N'2027-12-12' AS Date), N'2084-08-26')
GO
SET IDENTITY_INSERT [dbo].[EndOfDay] OFF
GO
SET IDENTITY_INSERT [dbo].[InsuranceCompany] ON 
GO
INSERT [dbo].[InsuranceCompany] ([Id], [SerialNumber], [Name], [HeadOfficeAddress], [BranchOfficeAddress], [HeadOfDepartment], [Position], [AgreementDate], [EstablishedDate], [AddedBy], [AddedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'100', N'Nepal Life Insurance', N'Hattisar Kathmandu', N'Balaju Kathamandu', N'Ram Manandhar', N'Head Of Department', CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, N'TestUser', CAST(N'2022-03-20T20:57:22.413' AS DateTime), N'TestUser', CAST(N'2022-03-27T17:14:21.533' AS DateTime))
GO
INSERT [dbo].[InsuranceCompany] ([Id], [SerialNumber], [Name], [HeadOfficeAddress], [BranchOfficeAddress], [HeadOfDepartment], [Position], [AgreementDate], [EstablishedDate], [AddedBy], [AddedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'101', N'Prabhu Life Insurance', N'Kuleshowor Kathmandu', N'Naya Bazar Kathmandu', N'Hari Lamshal', N'Head Of Department', CAST(N'2021-02-03T00:00:00.000' AS DateTime), NULL, N'TestUser', CAST(N'2022-03-20T21:10:56.257' AS DateTime), N'TestUser', CAST(N'2022-03-27T17:10:51.283' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[InsuranceCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[LoanDetail] ON 
GO
INSERT [dbo].[LoanDetail] ([Id], [InsuranceCompanyId], [MembershipNo], [MemberName], [MemberAddress], [MemberBeneficiary], [MemberRelationship], [MemberGender], [StartingDate], [PeriodInMonth], [MaturedDate], [RenewDate], [LoanAmount], [Premium], [InsuranceAmount], [MaturedAmount], [ImagePath], [AddedBy], [AddedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 2, N'123456', N'Adam Manandhar', N'Balaju Kathmandu', N'Bhai Raja Manandhar', N'Father', N'Male', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 2, CAST(N'2021-03-03T00:00:00.000' AS DateTime), CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(321.00 AS Decimal(18, 2)), CAST(321.00 AS Decimal(18, 2)), CAST(321.00 AS Decimal(18, 2)), CAST(321.00 AS Decimal(18, 2)), N'', N'TestUser', CAST(N'2022-03-27T17:16:41.793' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[LoanDetail] OFF
GO
