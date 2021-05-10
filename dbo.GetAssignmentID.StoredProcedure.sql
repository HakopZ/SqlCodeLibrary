USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[GetAssignmentID]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssignmentID]
	@KeyCardID int,
	@BookID int
AS
BEGIN
	DECLARE @UserID int
	SET @UserID = (SELECT UserID
	FROM Keycards
	WHERE KeyCardID = @KeyCardID)

	RETURN SELECT AssignmentID
	FROM Assignments
	WHERE UserID = @UserID AND BookID = @BookID
END
GO
