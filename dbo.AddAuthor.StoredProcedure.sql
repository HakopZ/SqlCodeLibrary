USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddAuthor]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAuthor]
	@FirstName varchar(MAX),
	@LastName varchar(MAX)
AS
BEGIN
	INSERT Authors
	VALUES(@FirstName, @LastName)
END
GO
