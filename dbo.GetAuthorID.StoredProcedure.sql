USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[GetAuthorID]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAuthorID]
	@FirstName varchar(MAX),
	@LastName varchar(MAX)
AS
BEGIN 
	RETURN SELECT AuthorID
	FROM Authors
	WHERE FirstName = @FirstName
	AND LastName = @LastName
END
GO
