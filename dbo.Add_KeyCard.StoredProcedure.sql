USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[Add_KeyCard]    Script Date: 3/28/2021 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Add_KeyCard]
	@UserID int
AS
BEGIN
	INSERT KeyCardTable
	VALUES(@UserID)	
END

GO
