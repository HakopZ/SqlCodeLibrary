USE [HakopLibraryDB]
GO
/****** Object:  UserDefinedTableType [dbo].[BooksWithCount]    Script Date: 5/9/2021 5:32:31 PM ******/
CREATE TYPE [dbo].[BooksWithCount] AS TABLE(
	[BookID] [int] NULL,
	[Copies] [int] NULL
)
GO
