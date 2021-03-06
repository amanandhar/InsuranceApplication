USE [InsuranceManagement]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/28/2022 8:19:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Counter] [bigint] NOT NULL,
	[EmployeeId] [nvarchar](50) NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[TempAddress] [nvarchar](100) NOT NULL,
	[PermAddress] [nvarchar](100) NOT NULL,
	[ContactNumber] [bigint] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[CitizenshipNumber] [nvarchar](50) NOT NULL,
	[Education] [nvarchar](50) NOT NULL,
	[DateOfBirth] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[BloodGroup] [nvarchar](50) NOT NULL,
	[AppointmentDate] [nvarchar](50) NOT NULL,
	[FatherName] [nvarchar](100) NOT NULL,
	[MotherName] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[MaritalStatus] [nvarchar](50) NOT NULL,
	[SpouseName] [nvarchar](100) NOT NULL,
	[Post] [nvarchar](50) NOT NULL,
	[PostStatus] [nvarchar](50) NOT NULL,
	[ResignationDate] [nvarchar](50) NULL,
	[ImageLocation] [nvarchar](500) NULL,
	[AddedBy] [nvarchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EndOfDay]    Script Date: 6/28/2022 8:19:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndOfDay](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DateInAd] [date] NOT NULL,
	[DateInBs] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCompany]    Script Date: 6/28/2022 8:19:20 PM ******/
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
	[AgreementDate] [nvarchar](50) NOT NULL,
	[EstablishedDate] [nvarchar](50) NULL,
	[AddedBy] [nvarchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanDetail]    Script Date: 6/28/2022 8:19:20 PM ******/
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
	[StartingDate] [nvarchar](50) NOT NULL,
	[PeriodInMonth] [int] NOT NULL,
	[MaturedDate] [nvarchar](50) NOT NULL,
	[RenewDate] [nvarchar](50) NULL,
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
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ContactNumber]  DEFAULT ((0)) FOR [ContactNumber]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Age]  DEFAULT ((0)) FOR [Age]
GO
