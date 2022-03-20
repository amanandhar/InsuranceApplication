USE [InsuranceManagement]
GO
/****** Object:  Table [dbo].[InsuranceCompany]    Script Date: 3/19/2022 12:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompany](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[EstablishedDate] [datetime] NOT NULL,
	[HeadOfficeAddress] [nvarchar](500) NOT NULL,
	[BranchOfficeAddress] [nvarchar](500) NOT NULL,
	[HeadOfDepartment] [nvarchar](500) NOT NULL,
	[Position] [nvarchar](500) NOT NULL,
	[AgreementDate] [datetime] NOT NULL,
	[AddedBy] [nvarchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanDetail]    Script Date: 3/19/2022 12:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberName] [nvarchar](100) NOT NULL,
	[MemberAddress] [nvarchar](500) NOT NULL,
	[MemberBeneficiary] [nvarchar](100) NOT NULL,
	[MemberGender] [nvarchar](50) NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[RenewDate] [datetime] NOT NULL,
	[PeriodInMonth] [int] NOT NULL,
	[MaturedDate] [datetime] NOT NULL,
	[LoanAmount] [decimal](18, 2) NOT NULL,
	[Premium] [decimal](18, 2) NOT NULL,
	[InsuranceAmount] [decimal](18, 2) NOT NULL,
	[MaturedAmount] [decimal](18, 2) NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
	[InsuranceCompanyId] [bigint] NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[AddedBy] [nvarchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 3/19/2022 12:22:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL
) ON [PRIMARY]
GO
