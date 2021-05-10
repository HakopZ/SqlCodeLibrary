USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddAssignment]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddAssignment]
	@UserID int,
	@BookID int, 
	@AcquiredDate date,
	@ReturnDate date,
	@LibraryID int
AS
BEGIN
	INSERT Assignments
	VALUES (@UserID, @BookID, @AcquiredDate, @ReturnDate, @LibraryID)
	UPDATE UserBookCount
	SET AssignmentAmount += 1
	WHERE UserID = @UserID
END

GO
