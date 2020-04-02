---------------------------------------------------------------------
-- LAB 02
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Write a script to create the DirectMarketing schema.
--
-- Set the authorization to dbo.
---------------------------------------------------------------------



Create Schema DirectMarketing1 Authorization dbo

CREATE TABLE [DirectMarketing].[CampaignResponse](
	[CampaignResponseId] [int] IDENTITY(1,1) NOT NULL,
	[ResponceDate] [date] NOT NULL,
	[ResponceType] [varchar](50) NOT NULL,
	[ResponcePrice] [money] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[CampaignResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [DirectMarketing].[Competitor](
	[CompetitorId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[CompetitorData] [varchar](50) NOT NULL,
	[Comments] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Competitor] PRIMARY KEY CLUSTERED 
(
	[CompetitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE [DirectMarketing].[TVAdvertisement](
	[TVAdvertisementId] [int] IDENTITY(1,1) NOT NULL,
	[TVAdvertisement_Date] [date] NOT NULL,
	[TVAdvertisementId_Time1] [time](7) NOT NULL,
	[TVAdvertisementId_Time2] [time](7) NOT NULL,
	[TVAdvertisementIdAmount] [int] NOT NULL,
 CONSTRAINT [PK_TVAdvertisement] PRIMARY KEY CLUSTERED 
(
	[TVAdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO