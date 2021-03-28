USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[Add_User]    Script Date: 3/28/2021 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Add_User]
	@FirstName varchar(MAX),
	@LastName varchar(MAX)
AS
BEGIN
	INSERT UserTable
	VALUES (@FirstName, @LastName)
	RETURN SCOPE_IDENTITY();
END
GO
