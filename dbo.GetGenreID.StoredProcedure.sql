USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[GetGenreID]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetGenreID]
	@Name varchar(MAX)
AS
BEGIN 
	RETURN (SELECT GenreID
	FROM Genres
	WHERE GenreName = @Name)
END
GO
