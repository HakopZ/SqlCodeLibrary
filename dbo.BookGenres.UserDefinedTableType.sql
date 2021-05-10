USE [HakopLibraryDB]
GO
/****** Object:  UserDefinedTableType [dbo].[BookGenres]    Script Date: 5/9/2021 5:32:31 PM ******/
CREATE TYPE [dbo].[BookGenres] AS TABLE(
	[GenreName] [varchar](max) NULL,
	[GenreID] [int] NULL
)
GO
