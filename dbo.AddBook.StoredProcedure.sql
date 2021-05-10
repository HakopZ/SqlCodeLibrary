USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddBook]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddBook]
	@Title varchar(MAX),
	@AuthorFirstName varchar(MAX),
	@AuthorLastName varchar(MAX),
	@BGenres BookGenres READONLY,
	@PublishYear date,
	@Price money,
	@ISBN int
AS
BEGIN
	DECLARE @GenreID int
	DECLARE @AuthorID int
	DECLARE @BookID int
	EXEC @AuthorID = dbo.GetAuthorID @FirstName = @AuthorFirstName, @LastName = @AuthorLastName
	INSERT Books
	VALUES (@AuthorID, @PublishYear, @Price, @Title, @ISBN)
	SET @BookID = SCOPE_IDENTITY()
	INSERT BookGenreLinks
	SELECT GenreID, @BookID
	FROM @BGenres
END
GO
