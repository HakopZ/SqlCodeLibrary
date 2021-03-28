USE [HakopLibraryDB]
GO
/****** Object:  Table [dbo].[LibraryBookLinkTable]    Script Date: 3/28/2021 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryBookLinkTable](
	[LibraryID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[Copies] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LibraryBookLinkTable]  WITH CHECK ADD  CONSTRAINT [FK_LibraryBookLinkTable_BookWithInfoTable] FOREIGN KEY([BookID])
REFERENCES [dbo].[BookWithInfoTable] ([BookID])
GO
ALTER TABLE [dbo].[LibraryBookLinkTable] CHECK CONSTRAINT [FK_LibraryBookLinkTable_BookWithInfoTable]
GO
ALTER TABLE [dbo].[LibraryBookLinkTable]  WITH CHECK ADD  CONSTRAINT [FK_LibraryBookLinkTable_LibraryTable] FOREIGN KEY([LibraryID])
REFERENCES [dbo].[LibraryTable] ([LibraryID])
GO
ALTER TABLE [dbo].[LibraryBookLinkTable] CHECK CONSTRAINT [FK_LibraryBookLinkTable_LibraryTable]
GO
