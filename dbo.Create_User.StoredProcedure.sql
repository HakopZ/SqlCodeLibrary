USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[Create_User]    Script Date: 3/28/2021 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Create_User]
	@FirstName varchar(MAX),
	@LastName varchar(MAX)
AS
BEGIN
	DECLARE @ID int
	EXEC @ID = dbo.Add_User @FirstName = @FirstName, @LastName = @LastName
	EXEC dbo.Add_KeyCard @UserID = @ID
END
GO
