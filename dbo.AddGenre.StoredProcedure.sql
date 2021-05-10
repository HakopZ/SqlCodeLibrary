USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddGenre]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddGenre]
	@Name varchar(MAX)
AS
BEGIN
	INSERT Genres
	VALUES(@Name)
END
GO
