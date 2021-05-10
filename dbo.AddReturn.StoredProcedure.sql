USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddReturn]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddReturn]
	@KeyCardID int,
	@BookID int,
	@PaymentAmount varchar(50),
	@ReturnDate date,
	@LibraryID int
AS
BEGIN
	DECLARE @AssignmentID int
	EXEC @AssignmentID = dbo.GetAssignmentID @KeyCardID = @KeyCardID, @BookID = @BookID
	INSERT Returns
	VALUES (@PaymentAmount, @ReturnDate, @AssignmentID, @LibraryID)
END


GO
