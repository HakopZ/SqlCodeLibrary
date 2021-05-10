USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddLibraryBookLinks]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLibraryBookLinks]
	@LibraryID int,
	@BookTable dbo.BookType READONLY
AS
BEGIN
	INSERT LibraryBookLinks
	SELECT @LibraryID, BookID, Copies
	FROM @BookTable
END
GO
