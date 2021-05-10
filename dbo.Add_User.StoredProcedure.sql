USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[Add_User]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Add_User]
	@FirstName varchar(MAX),
	@LastName varchar(MAX)
AS
BEGIN
	INSERT Users
	VALUES (@FirstName, @LastName, 0)
	RETURN SCOPE_IDENTITY();
END
GO
