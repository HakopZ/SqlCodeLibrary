USE [HakopLibraryDB]
GO
/****** Object:  UserDefinedTableType [dbo].[BookType]    Script Date: 5/9/2021 5:32:31 PM ******/
CREATE TYPE [dbo].[BookType] AS TABLE(
	[BookID] [int] NULL,
	[Copies] [int] NULL
)
GO
