USE [HakopLibraryDB]
GO
/****** Object:  Table [dbo].[BookWithInfoTable]    Script Date: 3/28/2021 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookWithInfoTable](
	[BookID] [int] NOT NULL,
	[GenreID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[PublishYear] [date] NOT NULL,
	[Price] [money] NOT NULL,
	[Title] [varchar](max) NOT NULL,
 CONSTRAINT [PK_BookWithInfoTable_1] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookWithInfoTable]  WITH CHECK ADD  CONSTRAINT [FK_BookWithInfoTable_AuthorTable] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[AuthorTable] ([AuthorID])
GO
ALTER TABLE [dbo].[BookWithInfoTable] CHECK CONSTRAINT [FK_BookWithInfoTable_AuthorTable]
GO
ALTER TABLE [dbo].[BookWithInfoTable]  WITH CHECK ADD  CONSTRAINT [FK_BookWithInfoTable_GenreTable] FOREIGN KEY([GenreID])
REFERENCES [dbo].[GenreTable] ([GenreID])
GO
ALTER TABLE [dbo].[BookWithInfoTable] CHECK CONSTRAINT [FK_BookWithInfoTable_GenreTable]
GO
