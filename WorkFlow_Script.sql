Create Database WorkFlow

USE [WorkFlow]
GO

/****** Object:  Table [dbo].[tblFiles]    Script Date: 9/28/2022 3:10:59 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFiles]') AND type in (N'U'))
DROP TABLE [dbo].[tblFiles]
GO

/****** Object:  Table [dbo].[tblFiles]    Script Date: 9/28/2022 3:10:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblFiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[ContentType] [nvarchar](200) NULL,
	[FileData] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_tblFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


GO

/****** Object:  Table [dbo].[tblProperty]    Script Date: 9/28/2022 3:11:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblProperty](
	[appProId] [int] IDENTITY(1,1) NOT NULL,
	[appPropertyCode] [nvarchar](100) NULL,
	[appEnglishName] [nvarchar](150) NULL,
	[appEnglishDesc] [nvarchar](500) NULL,
	[appGermanName] [nvarchar](250) NULL,
	[appGermanDesc] [nvarchar](500) NULL,
	[appItalianName] [nvarchar](250) NULL,
	[appItalianDesc] [nvarchar](500) NULL,
	[appAddress1] [nvarchar](250) NULL,
	[appAddress2] [nvarchar](250) NULL,
	[appCountryRegion] [nvarchar](250) NULL,
	[appStateProvince] [nvarchar](250) NULL,
	[appCity] [nvarchar](100) NULL,
	[appZipPostal] [nvarchar](100) NULL,
	[appTimeZone] [nvarchar](100) NULL,
	[appCurrencyCode] [nvarchar](50) NULL,
	[appCheckIn] [time](7) NULL,
	[appCheckOut] [time](7) NULL,
	[appCompanyName] [nvarchar](250) NULL,
	[appBank] [nvarchar](250) NULL,
	[appBIC] [nvarchar](250) NULL,
	[appIBAN] [nvarchar](250) NULL,
	[appCommRegister] [nvarchar](250) NULL,
	[appTaxID] [nvarchar](250) NULL,
	[appManagingDirectory] [nvarchar](250) NULL,
	[appEnglishPaymentTerms] [nvarchar](max) NULL,
	[appGermanPaymentTerms] [nvarchar](max) NULL,
	[appItalianPaymentTerms] [nvarchar](max) NULL,
	[appCreatedBy] [nvarchar](50) NULL,
	[appCreatedDate] [datetime] NULL,
	[appEditedBy] [nvarchar](50) NULL,
	[appEditedDate] [datetime] NULL,
 CONSTRAINT [PK_tblProperty] PRIMARY KEY CLUSTERED 
(
	[appProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


