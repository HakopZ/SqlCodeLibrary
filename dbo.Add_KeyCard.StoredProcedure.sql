USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[Add_KeyCard]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Add_KeyCard]
	@UserID int
AS
BEGIN
	INSERT Keycards
	VALUES(@UserID)	
END

GO
