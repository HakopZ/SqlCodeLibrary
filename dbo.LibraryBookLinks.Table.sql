USE [HakopLibraryDB]
GO
/****** Object:  Table [dbo].[LibraryBookLinks]    Script Date: 5/9/2021 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryBookLinks](
	[LibraryID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[Copies] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LibraryBookLinks]  WITH CHECK ADD  CONSTRAINT [FK_LibraryBookLinks_Libraries] FOREIGN KEY([LibraryID])
REFERENCES [dbo].[Libraries] ([LibraryID])
GO
ALTER TABLE [dbo].[LibraryBookLinks] CHECK CONSTRAINT [FK_LibraryBookLinks_Libraries]
GO
ALTER TABLE [dbo].[LibraryBookLinks]  WITH CHECK ADD  CONSTRAINT [FK_LibraryBookLinkTable_BookWithInfoTable] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[LibraryBookLinks] CHECK CONSTRAINT [FK_LibraryBookLinkTable_BookWithInfoTable]
GO
