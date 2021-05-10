USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[Create_User]    Script Date: 5/9/2021 5:32:31 PM ******/
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
	INSERT UserBookCount
	VALUES (@ID, 0)	
END

GO
