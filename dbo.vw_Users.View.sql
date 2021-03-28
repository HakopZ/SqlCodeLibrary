USE [HakopLibraryDB]
GO
/****** Object:  View [dbo].[vw_Users]    Script Date: 3/21/2021 8:37:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Users]
AS

SELECT u.FirstName

FROM UserTable  u
GO
