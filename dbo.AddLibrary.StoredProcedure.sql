USE [HakopLibraryDB]
GO
/****** Object:  StoredProcedure [dbo].[AddLibrary]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLibrary]
	@Name varchar(MAX),
	@Address varchar(MAX)
AS
BEGIN
	INSERT Libraries
	VALUES(@Name, @Address)
END
GO
